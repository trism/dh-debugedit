VERSION=$(shell dpkg-parsechangelog | grep Version: | sed 's/Version: //')
POD2MAN=pod2man --utf8 -c Debhelper -r "$(VERSION)"

build:
	$(POD2MAN) dh_debugedit dh_debugedit.1

install:
	install -d $(DESTDIR)/usr/bin
	install dh_debugedit $(DESTDIR)/usr/bin

clean:
	rm -f *.1
