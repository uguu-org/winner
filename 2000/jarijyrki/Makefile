#!/usr/bin/env make
#
# IOCCC 2000 winning entry - jarijyrki

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
CSILENCE= -Wno-char-subscripts -Wno-empty-body -Wno-error \
	  -Wno-implicit-function-declaration -Wno-implicit-int \
	  -Wno-builtin-declaration-mismatch -Wno-int-in-bool-context \
          -Wno-misleading-indentation -Wno-unused-value \
	  -Wno-deprecated-non-prototype

# Attempt to silence unknown warning option
#
CUNKNOWN= -Wno-unknown-warning-option

# Common C compiler warning flags
#
CWARN= -Wall -Wextra ${CSILENCE} ${CUNKNOWN}

# Compiler standard
#
CSTD= -std=gnu99

# Compiler bit architecture
#
ARCH=

# Defines that are needed to compile
#
CDEFINE= -DNeedFunctionPrototypes \
	-DU=40 -DT=98 '-Dz=(T+1)*U*U' -DQ=80 -DS=20 -DN=10 -DB=5 -DG=23 \
	-Dp=7 '-DM=((p+1)*Q)+S' '-DH=(G*S)+S+S' -DC=XK_Up -DL=XK_Down \
	-DO=XK_Left -DV=XK_Right -DR=XK_Escape -D_=XK_BackSpace

# Include files that are needed to compile
#
CINCLUDE= -I ${X11_INCDIR} -I ${X11_INCDIR}/X11

# Optimization
#
OPT= -O3

# Default flags for ANSI C compilation
#
CFLAGS= ${CSTD} ${CWARN} ${ARCH} ${CDEFINE} ${CINCLUDE} ${OPT}

# Libraries needed to build
#
LDFLAGS= -L ${X11_LIBDIR} -lX11

# C compiler to use
#
CC= cc

# Compiler add-ons or replacements for clang only
#
ifeq "$(findstring $(CLANG),${CC})" "$(CLANG)"
#
CSILENCE+= -Wno-float-conversion -Wno-float-equal -Wno-implicit-int-conversion \
	   -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-pedantic \
	   -Wno-poison-system-directories -Wno-shadow -Wno-shorten-64-to-32 \
	   -Wno-unsafe-buffer-usage -Wno-sign-conversion -Wno-strict-prototypes
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
ENTRY= jarijyrki
PROG= ${ENTRY}
#
OBJ= ${PROG}.o
DATA= finance.sheet
TARGET= ${PROG}
#
ALT_OBJ=
ALT_TARGET=


#################
# build the entry
#################
#
all: data ${TARGET}
	@${TRUE}

.PHONY: all alt data everything clean clobber

${PROG}: ${PROG}.c
	${CC} ${CFLAGS} $< -o $@ ${LDFLAGS}

# alternative executable
#
alt: data ${ALT_TARGET}
	@${TRUE}

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
	${RM} -f ${TARGET} ${ALT_TARGET}
	${RM} -rf *.dSYM
	${RM} -f myedits.info


######################################
# optional include of 1337 hacker rulz
######################################

-include 1337.mk ../1337.mk ../../1337.mk
