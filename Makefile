
all: hoorex.1


man:	hoorex.1


hoorex.1:	hoorex.1.in
	a2x -f manpage $?

install:
	echo $(DESTDIR)
	install -m 0755 -D hoorex $(DESTDIR)/usr/bin/hoorex
	install -m 0644 -D hoorex.1 $(DESTDIR)/usr/man/man1/hoorex.1


clean:
	rm -f hoorex.1
