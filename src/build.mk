# This file is a makefile included from the top level makefile which
# defines the sources built for the target.

# Define the prefix to this directory. 
# Note: The name must be unique within this build and should be
#       based on the root of the project
TARGET_SRC_PATH = src

# Add include to all objects built for this target
INCLUDE_DIRS += inc

# C source files included in this build.
CSRC +=

# C++ source files included in this build.
CPPSRC += $(TARGET_SRC_PATH)/main.cpp
CPPSRC += $(TARGET_SRC_PATH)/newlib_stubs.cpp
CPPSRC += $(TARGET_SRC_PATH)/stm32_it.cpp

# ASM source files included in this build.
ASRC +=

