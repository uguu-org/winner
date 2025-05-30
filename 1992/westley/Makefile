#!/usr/bin/env make
#
# IOCCC 1992 winning entry - westley

################################################################################
#
# IOCCC winning entry code may not work on your system.  What was liked/allowed
# and worked in the past may no longer be liked/allowed or compile/run today.
#
# Bug fixes, corrections and typo fixes are VERY WELCOME.  If you see a problem,
# first check this URL for a list of known bugs and (mis)features of IOCCC entries:
#
#	https://www.ioccc.org/bugs.html
#
# GitHub pull requests are welcome!  Please see the above URL for details.
#
################################################################################
#
# This file is Copyright (c) 2023 by Landon Curt Noll.  All Rights Reserved.
# You are free to share and adapt this file under the terms of this license:
#
#	Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)
#
# For more information, see: https://creativecommons.org/licenses/by-sa/4.0/


#############################
# shell used by this Makefile
#############################
#
SHELL= bash

#######################
# common tool locations
#######################
#
include ../../var.mk

# Common C compiler warnings to silence
#
CSILENCE= -Wno-bitwise-op-parentheses -Wno-error -Wno-implicit-function-declaration \
	  -Wno-parentheses -Wno-pedantic -Wno-deprecated-non-prototype \
	  -Wno-int-conversion -Wno-implicit-int -Wno-comma -Wno-missing-prototypes \
	  -Wno-return-type -Wno-misleading-indentation -Wno-missing-parameter-type

# Attempt to silence unknown warning option
#
CUNKNOWN= -Wno-unknown-warning-option

# Common C compiler warning flags
#
CWARN= -Wall -Wextra ${CSILENCE} ${CUNKNOWN}

# Compiler standard
#
CSTD= -std=gnu90

# Compiler bit architecture
#
ARCH=

# Defines that are needed to compile
#
CDEFINE=

# Include files that are needed to compile
#
CINCLUDE=

# Optimization
#
OPT= -O3

# Default flags for ANSI C compilation
#
CFLAGS= ${CSTD} ${CWARN} ${ARCH} ${CDEFINE} ${CINCLUDE} ${OPT}

# Libraries needed to build
#
LDFLAGS=

# C compiler to use
#
CC= cc

# Compiler add-ons or replacements for clang only
#
ifeq "$(findstring $(CLANG),${CC})" "$(CLANG)"
#
CSILENCE+= -Wno-poison-system-directories -Wno-int-conversion \
	   -Wno-unsafe-buffer-usage
#
CWARN+= -Weverything
#
endif

# Specific add-ons or replacements for gcc only
#
ifeq "$(findstring $(GCC),${CC})" "$(GCC)"
#
#CSILENCE+=
#
#CWARN+=
#
endif


##############################
# Special Makefile variables for this entry
##############################
#
ENTRY= westley
PROG= ${ENTRY}
#
OBJ= ${PROG}.o
DATA=
TARGET= ${PROG}
#
ALT_OBJ= ${PROG}.alt.o
ALT_TARGET= ${PROG}.alt


#################
# build the entry
#################
#
all: data ${TARGET}
	@${TRUE}

.PHONY: all alt data everything clean clobber

${PROG}: ${PROG}.c
	${CC} ${CFLAGS} $< -o $@ ${LDFLAGS}
	${LN} -sf ${PROG} whereami
	@echo "NOTE: your terminal must be AT LEAST 80 columns wide for this to work right"

# alternative executable
#
alt: data ${ALT_TARGET}
	@${TRUE}

alt2: data ${ALT_TARGET}2
	@${TRUE}

${PROG}.alt: ${PROG}.alt.c
	${CC} ${CFLAGS} $< -o $@ ${LDFLAGS}
	${LN} -sf ${PROG}.alt whereami.alt
	@echo "NOTE: your terminal must be AT LEAST 80 columns wide for this to work right"

${PROG}.alt2: ${PROG}.alt2.c
	${CC} ${CFLAGS} $< -o $@ ${LDFLAGS}
	${LN} -sf ${PROG}.alt whereami.alt2
	@echo "NOTE: your terminal must WRAP AT 80 columns this to work right"


# data files
#
data: ${DATA}
	@${TRUE}

# both all and alt
#
everything: all alt
	@${TRUE}


###############
# utility rules
###############
#
clean:
	${RM} -f ${OBJ} ${ALT_OBJ}

clobber: clean
	${RM} -f ${TARGET} ${ALT_TARGET} ${ALT_TARGET}2
	${RM} -rf *.dSYM
	${RM} -f whereami whereami.alt whereami.alt2


######################################
# optional include of 1337 hacker rulz
######################################

-include 1337.mk ../1337.mk ../../1337.mk
