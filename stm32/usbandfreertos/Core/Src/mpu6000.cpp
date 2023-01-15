/*
 * mpu6000.cpp
 *
 *  Created on: Jan 15, 2023
 *      Author: giovannirasera
 */

#include "mpu6000.h"

mpu6000::mpu6000(SPI_HandleTypeDef _spi, uint16_t _cs_pin, uint16_t _cs_port) : spi{_spi}, cs_pin{_cs_pin}, cs_port{_cs_port}{}

int mpu6000::init(){
	int response = 0;
	select();
	response = HAL_SPI_Transmit(&spi, MPUREG_USER_CTRL, 1, 10);
	response = HAL_SPI_Transmit(&spi, BIT_I2C_IF_DIS, 1, 10);
	unselect();

	select();

	unselect();
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

