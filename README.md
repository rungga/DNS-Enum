# DNSENUM2

#### Bug fixes, added additional Dns.txt entries. (Original is no longer maintained)


README - dnsenum2.pl VERSION: 1.2.5

multithreaded perl script to enumerate DNS information of a domain
and to discover non-contiguous ip blocks.

## OPERATIONS:

1) Get the host's addresse (A record).

2) Get the nameservers (threaded).

3) Get the MX record (threaded).

4) Perform axfr queries on nameservers and get BIND VERSION (threaded).

5) Get extra names and subdomains via google scraping
   (google query = "-www site:domain").

6) Brute force subdomains from file, can also perform recursion
   on subdomain that have NS records (all threaded).

7) Calculate C class domain network ranges and perform whois
   queries on them (threaded).

8) Perform reverse lookups on netranges
   ( C class or/and whois netranges) (threaded).

9) Write to domain_ips.txt file ip-blocks.


## PREREQUISITES: 
* Modules that are included in perl 5.10.0:
	* Getopt::Long 
	* IO::File 
	* Thread::Queue

 * Other Necessary modules:
	* Must have:
		* Net::IP
		* Net::DNS 
		* Net::Netmask
	* Optional:
		* Net::Whois::IP
		* HTML::Parser
		* WWW::Mechanize
		* XML::Writer
		
## INSTALLATION:

To install a module, simply run (as root):

* debian:	`apt-get install cpanminus`
* centos: `yum install cpan`
	`curl -L http://cpanmin.us | perl - App::cpanminus`

and then type: `cpanm <MODULE>` eg:

`cpanm install XML::Writer Net::Netmask Net::IP Net::DNS`

 * Perl ithreads support:
	* perl version must be compliled with ithreads support.
	* threads
	* threads::shared

## ADDITIONAL INFORMATION:
OPTIONS:`perldoc dnsenum2.pl`

## CHANGELOG
Changelog from version 1.2.4
- Additional DNS.txt entries
- Fixed deprecated `allinurl`
- Changed `out` to `output` as mentioned in the docs

Special thanks to all Perl developers.

[Filip Waeytens](mailto:filip.waeytens@gmail.com)<br>	
[tix tixxDZ](mailto:tixxdz@gmail.com)
