/*
 * mpu6000.cpp
 *
 *  Created on: Jan 15, 2023
 *      Author: giovannirasera
 */

#include "mpu6000.h"
#include "printer.h"

mpu6000::mpu6000(SPI_HandleTypeDef _spi, uint16_t _cs_pin, GPIO_TypeDef *_cs_port) : spi{_spi}, cs_pin{_cs_pin}, cs_port{_cs_port}{}

HAL_StatusTypeDef mpu6000::transmit(uint8_t datavalue){
	uint8_t data[1];
	data[0] = datavalue;

	//Vesp::console.log("try transmit\n");
	select();
	HAL_StatusTypeDef ret = HAL_SPI_Transmit(&spi, data, 1, 10);
	unselect();
	//Vesp::console.log("done trasmit\n");
	HAL_Delay(15);

	if(ret == HAL_TIMEOUT){
		//Vesp::console.debug("mpu6000: trasmit timeout\n");

	}else if (ret == HAL_ERROR){
		//Vesp::console.debug("mpu6000: trasmit error\n");

	}else if (ret == HAL_OK){
		//Vesp::console.debug("mpu6000: trasmit OK\n");

	}else{
		//Vesp::console.debug("mpu6000: trasmit busy\n");

	}

	return ret;
}

int mpu6000::init(){
	// Deselect I2C comunication
	select();
	transmit(MPUREG_USER_CTRL);
	transmit(BIT_I2C_IF_DIS);
	unselect();

	select();
	transmit(MPUREG_PWR_MGMT_1);
	transmit(BIT_H_RESET);
	unselect();
	HAL_Delay(150);

	select();
	transmit(MPUREG_PWR_MGMT_1);
	transmit(MPU_CLK_SEL_PLLGYROZ);
	unselect();

	select();
	transmit(MPUREG_USER_CTRL);
	transmit(BIT_I2C_IF_DIS);
	unselect();

	select();
	//transmit(MPUREG_WHOAMI|READ_FLAG);

	unselect();


	return 0;
}

void mpu6000::select(){
	HAL_GPIO_WritePin(cs_port, cs_pin, GPIO_PIN_RESET);
}

void mpu6000::unselect(){
	HAL_GPIO_WritePin(cs_port, cs_pin, GPIO_PIN_SET);
}

mpu6000::~mpu6000() {
	// TODO Auto-generated destructor stub
}

