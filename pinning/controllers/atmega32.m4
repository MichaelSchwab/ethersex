dnl
dnl atmega32.m4
dnl
dnl   Copyright (c) 2008 by Georg von Zengen <oni@chaosplatz.com>
dnl  
dnl   This program is free software; you can redistribute it and/or modify
dnl   it under the terms of the GNU General Public License as published by 
dnl   the Free Software Foundation; either version 2 of the License, or
dnl   (at your option) any later version.
dnl  
dnl   This program is distributed in the hope that it will be useful,
dnl   but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
dnl   GNU General Public License for more details.
dnl  
dnl   You should have received a copy of the GNU General Public License
dnl   along with this program; if not, write to the Free Software
dnl   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
dnl 

ifdef(`need_spi', `dnl
/* spi defines */
pin(SPI_MOSI, PB5, OUTPUT)
pin(SPI_MISO, PB6)
pin(SPI_SCK, PB7, OUTPUT)
pin(SPI_CS_HARDWARE, PB4, OUTPUT)
')dnl

ifdef(`conf_I2C_MASTER', `
  /* I2C pins */
  pin(SDA, PC1)
  pin(SCL, PC0)
')dnl

#define NET_MAX_FRAME_LENGTH 500
#define ADC_CHANNELS 8

/* MCU doesn't support toggling pins by writing to PINx register */
#define PINx_TOGGLE_WORKAROUND

