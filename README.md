CC3000 Patch Programmer
=======================

TI CC3000 Patch Programmer ported to STM32

Development Environment Setup:

1. Copy .cproject and .project files from "marvin" into "cc3000-patch-programmer" folder.

2. Search and replace "marvin" with "cc3000-patch-programmer" in the above 2 files.

3. In Eclipse, select File -> Import -> Existing Projects into Workspace -> Select root directry: -> Browse and select "cc3000-patch-programmer" folder -> Finish.

4. In platform_config.h, uncomment the define corresponding to the platform/board used.

5. In Project Properties -> C/C++ General -> Paths and Symbols -> Includes -> GNU C -> Delete "/cc3000-patch-programmer/libraries/CC3000_Host_Driver"

6. In Project Properties -> C/C++ Build -> Settings -> Tool Settings -> ARM Sourcery Windows GCC C Compiler -> Preprocessor -> Defined symbols(-D), add "STM32F10X_MD" when building for medium density flash chips.

7. In Project Properties -> C/C++ Build -> Settings -> Tool Settings -> ARM Sourcery Windows GCC C Compiler -> Optimization, select Optimization level as "Optimize size(-Os)"

8. In Project Properties -> C/C++ Build -> Settings -> Tool Settings -> ARM Sourcery Windows GCC C Compiler -> Optimization, "CHECK" the "Function sections" and "UNCHECK" the "Data sections".

9. In Project Properties -> C/C++ Build -> Settings -> Tool Settings -> ARM Sourcery Windows GCC C Linker -> General -> Script file (-T), Browse & select linker file : "linker_stm32f10x_md.ld" for non-dfu based build used for programming the chip using JTAG.

10. Program the chips using 9 above, Press the BUTTON to start the patching process.

11. The LEDs should blink every 200ms to indicate the patching is in progress. When successfully completed, the LEDs should stay ON.

12. Check the "patchVer" variable in the marvin project. The value should be "\001\023" i.e. 1.19

13. To build the project using command line option, cd to the "build" folder and run make.