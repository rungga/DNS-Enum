default:
	pod2man dnsenum.pl > dnsenum.1

.PHONY: install check_dir
install: check_dir
	cpan install XML::Writer Net::Netmask Net::IP Net::DNS Net::Whois::IP HTML::Parser WWW::Mechanize
	ln -s "$(DESTDIR)/dnsenum.pl" "$(DESTDIR)/usr/bin/dnsenum"

.PHONY: clean
clean:
	rm dnsenum.1

check_dir:
ifndef DESTDIR
	$(error DESTDIR is not set)
endif

