.PHONY: default
default:
	pod2man dnsenum.pl > dnsenum.1

.PHONY: install
install:
	if [ "$${INSTALL_DEPS:-1}" = "1" ]; then \
		cpan install XML::Writer Net::Netmask Net::IP Net::DNS Net::Whois::IP HTML::Parser WWW::Mechanize String::Random; \
	fi
	install -D -m 644 dns.txt -t $(DESTDIR)/usr/share/dnsenum/
	install -D -m 644 dnsenum.1 -t $(DESTDIR)/usr/share/man/man1/
	install -D -m 755 dnsenum.pl $(DESTDIR)/usr/bin/dnsenum

.PHONY: clean
clean:
	rm -f dnsenum.1
