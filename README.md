# DNSENUM2

[![Rawsec's CyberSecurity Inventory](https://inventory.rawsec.ml/img/badges/Rawsec-inventoried-FF5050_flat.svg)](https://inventory.rawsec.ml/tools.html#dnsenum2)

README - dnsenum2.pl VERSION: 1.3.0

multithreaded perl script to enumerate DNS information of a domain
and to discover non-contiguous ip blocks.

## OPERATIONS:

1. Get the host's addresse (A record).

2. Get the nameservers (threaded).

3. Get the MX record (threaded).

4. Perform axfr queries on nameservers and get BIND VERSION (threaded).

5. Get extra names and subdomains via google scraping
   (google query = "-www site:domain").

6. Brute force subdomains from file, can also perform recursion
   on subdomain that have NS records (all threaded).

7. Calculate C class domain network ranges and perform whois
   queries on them (threaded).

8. Perform reverse lookups on netranges
   ( C class or/and whois netranges) (threaded).

9. Write to domain_ips.txt file ip-blocks.

## PREREQUISITES:

###### Note: the make file will install these automatically.

- Modules that are included in perl 5.28.0:

  - Getopt::Long
  - IO::File \* Thread::Queue

- Other Necessary modules:
  - Must have:
  - Net::IP
  - Net::DNS
  - Net::Netmask
  - Optional:
  - Net::Whois::IP
  - HTML::Parser
  - WWW::Mechanize \* XML::Writer

## INSTALLATION:

1.  To install a module, simply run (as root):

    - debian:`apt-get install cpanminus`
    - centos: `yum install cpan`
    - other:`curl -L http://cpanmin.us | perl - App::cpanminus`

2.  Run make file

    - `make`: Create Manpages
    - `make install`: Install files in the correct folder

    - This will create a direct callable `dnsenum` file from commandline.
    - `dns.txt` file will be loaded from `/usr/share/dnsenum/dns.txt`. (Note the -f switch will take precedence over this file)

## ADDITIONAL INFORMATION:

OPTIONS:`perldoc dnsenum.pl`

## CHANGELOG

Changelog from version 1.3.0

- Makefile addition
- Dynamic DNS.txt reading
- Additional DNS.txt entries
- Fixed deprecated `allinurl`
- Changed `out` to `output` as mentioned in the docs

Special thanks to all Original Perl developers.

[Filip Waeytens](mailto:filip.waeytens@gmail.com)<br>
[tix tixxDZ](mailto:tixxdz@gmail.com)
