/*
 * printer.cpp
 *
 *  Created on: Jan 9, 2023
 *      Author: giovannirasera
 */

#include "printer.h"

void printer::log(std::string toprint){
	CDC_Transmit_FS((uint8_t *)toprint.c_str(), toprint.length());
}

namespace Vesp{
	printer &getprinter(){
		return *printer::get_singleton();
	}
};

