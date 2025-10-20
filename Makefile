include makedefs.i

TARGETS=lib/ppdgem-l.lib lib/ppdgem-s.lib bin/exe2acc.exe samples

all:	$(TARGETS)

samples: bin/exe2acc.exe
	make -C samples

lib/ppdgem-l.lib lib/ppdgem-s.lib:
	make -C libsrc

bin/exe2acc.exe:
	make -C exe2acc

install:
	make -C include install
	make -C lib install
	make -C bin install

clean:
	make -C libsrc $@
	make -C samples $@
	make -C exe2acc $@
	make -C bin $@
	make -C lib $@ 

tidy:
	make -C libsrc $@
	make -C samples $@
	make -C exe2acc $@
	make -C bin $@
	make -C lib $@ 

zip:
	rm -f ppdgem.zip
	pkzip -rP ppdgem.zip *.*
