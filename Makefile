CC ?= ${CC}
CFLAGS ?= -O2 -pipe

rtk_hciattach:hciattach.c hciattach_rtk.o  
	$(CC) $(CFLAGS) -o rtk_hciattach hciattach.c hciattach_rtk.o

hciattach_rtk.o:hciattach_rtk.c
	$(CC) $(CFLAGS) -c hciattach_rtk.c

clean:
	rm -f *.o  rtk_hciattach

install:
	mkdir -p /lib/firmware/rtl_bt
	cp -p rtlbt_* /lib/firmware/rtl_bt/.
