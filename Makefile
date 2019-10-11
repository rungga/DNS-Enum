default:
	pod2man dnsenum.pl > dnsenum.1

.PHONY: install check_dir
install: make_dir
	cpan install XML::Writer Net::Netmask Net::IP Net::DNS Net::Whois::IP HTML::Parser WWW::Mechanize
	pod2man dnsenum.pl > "$(DESTDIR)/dnsenum.1"
	mv  ./INSTALL.txt "$(DESTDIR)/INSTALL.txt"
	mv  ./dnsenum.pl "$(DESTDIR)/dnsenum.pl"
	mv  ./README.md "$(DESTDIR)/README.md"
	mv  ./Makefile "$(DESTDIR)/Makefile"
	mv  ./dns.txt "$(DESTDIR)/dns.txt"
	cp  "$(DESTDIR)/dns.txt" "/usr/share/dnsenum/dns.txt"
	ln -s "$(DESTDIR)/dnsenum.pl" "$(DESTDIR)/usr/bin/dnsenum"

.PHONY: clean
clean:
	rm -f dnsenum.1
	rm -f /usr/bin/dnsenum
make_dir:
ifndef DESTDIR
	$(error DESTDIR is not set)
else
	[ -d "$(DESTDIR)" ] && { $(error File Already Exists); }
	mkdir -p $(DESTDIR)
endif
