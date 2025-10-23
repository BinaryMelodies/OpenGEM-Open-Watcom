
# Open Watcom bindings for OpenGEM

This is an attempt to port the Pacific C bindings for OpenGEM to the Open Watcom compiler.
Since this porting has been performed on a Linux machine (instead of natively on a DOS machine), the commands and file names had to be adjusted.
However, DOS style newlines have been preserved, and the DOS filename restrictions have been followed.

To compile and use, it is sufficient to run `make`. `make install` has not been tested, but copying the `bin`, `lib`, `include` directories to their respective Watcom folders probably works.
The libraries to be used are called `gembnd-s.lib` (small memory model library) and `gembnd-l.lib` (large memory model library).

The port has not been thoroughly tested and **it should not be used for production work. No guarantee is provided that any of this will work, and the user must take their own responsibility to using it.**

# What has been changed

Aside from the command line tool names, most things worked without much adjustment required.
Some of the far pointer syntax is incompatible between Pacific C and Watcom C, and some of the code assumed the `__PACIFIC__` macro to be defined to fully compile.
The file `ppdhook.c` was removed since it relied on very low level functionality of the code (this could be added back later).
The assembly sources were converted to WASM syntax.
Finally, some file names have been changed, from `ppdgem.h` to `gembind.h` and `ppdgem-?.lib` (with `?` a standing for `l` or `s`) to `gembnd-?.lib`, since these seem to be the original names used by the SDK before being converted to the Pacific C compiler.

# What works

Most of the samples seem to work, with some exceptions.
Notably, converting binaries to accessory files (.EXE to .ACC) does not work, since the tool relies on patching the Pacific C runtime library binary, which is incompatible to Watcom C.

* CLOCK: CLOCK-?.APP - Works, CLOCK-?.ACC - Cannot be converted to ACC
* DEMO: DEMO-?.APP - Works
* EVENTS: EVENTS-?.APP - Works
* FDTEST: FDTEST-?.APP - Works
* FREEMEM: FMEM-?.ACC - Cannot be converted to ACC
* GROWBOX: GROWBX-?.ACC - Cannot be converted to ACC, `ppd_hookon` has been removed from library
* HELLO: HELLO-?.APP - Works, HELLO-?.ACC - Cannot be converted to ACC
* MEMGRAF: MGRF-?.APP - Works, MGRF-?.ACC - Cannot be converted to ACC
* RSCREATE: Generated file different from either original or the one created by Pacific C
* SPOOLER: SPOOL-?.APP - Not tested
* USERDEF: UDEF-?.APP - Application freezes on start
* XFORM: XFORM-?.APP - Works

