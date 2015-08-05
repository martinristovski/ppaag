VERSION = 1
PATCHLEVEL = 2
EXTRAVERSION =

MAIN=ppaag
SRC=MAIN
INSTALL=install
INSTALL_DIRECTORY=$(INSTALL) -dm755
INSTALL_PROGRAM=$(INSTALL) -Dpm 0755

all:
	$(info Run "make install" as the super user to install ppaag)
	$(info Run "make uninstall" as the super user to uninstall ppaag)

install:
	$(INSTALL_DIRECTORY) $(DESTDIR)/usr/local/bin
	$(INSTALL_PROGRAM) $(MAIN) $(DESTDIR)/usr/local/bin/

uninstall:
	rm -f $(DESTDIR)/usr/local/bin/$(MAIN)
