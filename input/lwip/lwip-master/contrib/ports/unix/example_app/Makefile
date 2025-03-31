

all compile: example_app makefsdata
.PHONY: all

LWIPDIR=../../../../src

include ../Common.mk

CFLAGS+=-I$(CONTRIBDIR)/examples/example_app

TESTFLAGS?=
CFLAGS+=$(TESTFLAGS)

MAKEFSDATAOBJS=$(notdir $(MAKEFSDATAFILES:.c=.o))

clean:
	rm -f *.o $(LWIPLIBCOMMON) $(APPLIB) example_app makefsdata *.s .depend* *.core core

depend dep: .depend

include .depend

.depend: $(CONTRIBDIR)/examples/example_app/test.c default_netif.c $(LWIPFILES) $(APPFILES) $(MAKEFSDATAFILES)
	$(CCDEP) $(CFLAGS) -MM $^ > .depend || rm -f .depend

example_app: .depend $(LWIPLIBCOMMON) $(APPLIB) default_netif.o test.o
	$(CC) $(CFLAGS) -o example_app test.o default_netif.o -Wl,--start-group $(APPLIB) $(LWIPLIBCOMMON) -Wl,--end-group $(LDFLAGS)

makefsdata: .depend $(MAKEFSDATAOBJS)
	$(CC) $(CFLAGS) -o makefsdata $(MAKEFSDATAOBJS)
