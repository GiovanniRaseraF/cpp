#include "main.h"
#include "cmsis_os.h"
#include "usb_device.h"

#include <string>
#include "usbd_cdc_if.h"
#include "printer.h"
#include "mpu6000.h"

/* Definitions for defaultTask */
osThreadId_t defaultTaskHandle;
const osThreadAttr_t defaultTask_attributes = {
  .name = "defaultTask",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for ledtoggle */
osThreadId_t ledtoggleHandle;
const osThreadAttr_t ledtoggle_attributes = {
  .name = "ledtoggle",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for usbcomunication */
osThreadId_t usbcomunicationHandle;
const osThreadAttr_t usbcomunication_attributes = {
  .name = "usbcomunication",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityLow,
};

SPI_HandleTypeDef hspi1;

// Readings are going to be done using hspi1
osThreadId_t gyroreadingsHandle;
const osThreadAttr_t gyroreadings_attributes = {
		.name = "gyroreadings",
		.stack_size = 128 * 4,
		.priority = (osPriority_t) osPriorityLow,
};

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
void StartDefaultTask(void *argument);
void ledstatustoggle(void *argument);
void usbcomunicationserial(void *argument);
static void MX_SPI1_Init(void);
void gyroreadings(void *argument);


int main(void){
  HAL_Init();
  SystemClock_Config();
  MX_GPIO_Init();
  MX_SPI1_Init();
  MX_USB_DEVICE_Init();

  Vesp::console.log("\n\n\n-------Vesp-------\n");
  osKernelInitialize();

  defaultTaskHandle = osThreadNew(StartDefaultTask, NULL, &defaultTask_attributes);
  ledtoggleHandle = osThreadNew(ledstatustoggle, NULL, &ledtoggle_attributes);
  usbcomunicationHandle = osThreadNew(usbcomunicationserial, NULL, &usbcomunication_attributes);
  gyroreadingsHandle = osThreadNew(gyroreadings, NULL, &gyroreadings_attributes);

  osKernelStart();

  for(;;);
}


void SystemClock_Config(void){
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI|RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 4;
  RCC_OscInitStruct.PLL.PLLN = 72;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 3;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
}


static void MX_GPIO_Init(void){
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  HAL_GPIO_WritePin(GYRO_CS_GPIO_Port, GYRO_CS_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(led_GPIO_Port, led_Pin, GPIO_PIN_RESET);

  GPIO_InitStruct.Pin = GYRO_CS_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GYRO_CS_GPIO_Port, &GPIO_InitStruct);

  GPIO_InitStruct.Pin = led_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(led_GPIO_Port, &GPIO_InitStruct);
}


static void MX_SPI1_Init(void){
  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi1.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_2;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
}

// Threads implementation
void gyroreadings(void *argument){
	osDelay(7000);

	// gyro setup
	mpu6000 mpu{hspi1, GYRO_CS_Pin, GYRO_CS_GPIO_Port};
	mpu.init();

	Vesp::console.log("mpu init done \n");

	for(;;){
		osDelay(1000);
	}
}

void StartDefaultTask(void *argument){
  for(;;){
    osDelay(1000);
  }
}

void ledstatustoggle(void *argument){
  for(;;){
	  HAL_GPIO_TogglePin(led_GPIO_Port, led_Pin);
	  osDelay(1000);
  }
}

void usbcomunicationserial(void *argument){
  for(;;){
	//Vesp::getprinter().log("Vespin2.0 Firmaware 1.0\n");

	osDelay(2000);
  }
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim){
  if (htim->Instance == TIM6) {
    HAL_IncTick();
  }
}

void Error_Handler(void){
  __disable_irq();
  while (1){}
}

#ifdef  USE_FULL_ASSERT
void assert_failed(uint8_t *file, uint32_t line){
}
#endif
