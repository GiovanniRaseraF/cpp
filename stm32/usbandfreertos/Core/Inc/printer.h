/*
 * printer.h
 *
 *  Created on: Jan 9, 2023
 *      Author: giovannirasera
 */

#ifndef PRINTER_H_
#define PRINTER_H_

#include "usbd_cdc_if.h"
#include <string>

class printer {
public:
	printer() = default;
    printer(const printer &) = delete;
    printer& operator=(const printer &) = delete;

public:
	static printer *get_singleton(void){
		static printer *singleton;
		return singleton;
	}

	void log(std::string toprint);

	inline void debug(std::string toprint){
#ifdef DEBUG
		log("DEBUG: "+ toprint);
#endif
	}
private:

};

namespace Vesp{
	printer &getprinter();
	static printer& console = getprinter();
};
#endif /* PRINTER_H_ */
