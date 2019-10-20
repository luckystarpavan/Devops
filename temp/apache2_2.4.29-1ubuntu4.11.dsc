-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: apache2
Binary: apache2, apache2-data, apache2-bin, apache2-utils, apache2-suexec-pristine, apache2-suexec-custom, apache2-doc, apache2-dev, apache2-ssl-dev, apache2-dbg
Architecture: any all
Version: 2.4.29-1ubuntu4.11
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Uploaders: Stefan Fritsch <sf@debian.org>, Arno Töll <arno@debian.org>
Homepage: http://httpd.apache.org/
Standards-Version: 4.1.0
Vcs-Browser: https://anonscm.debian.org/cgit/pkg-apache/apache2.git/
Vcs-Git: git://anonscm.debian.org/pkg-apache/apache2.git
Testsuite: autopkgtest
Testsuite-Triggers: build-essential, curl, dpkg-dev, expect, libanyevent-perl, libcrypt-ssleay-perl, libdatetime-perl, libfcgi-perl, libhtml-parser-perl, libhttp-dav-perl, libnet-ssleay-perl, libprotocol-http2-perl, libtime-hires-perl, libwww-perl, nghttp2-client, perl-doc, ssl-cert, wget
Build-Depends: debhelper (>= 9.20160709~), lsb-release, dpkg-dev (>= 1.16.1~), libaprutil1-dev (>= 1.5.0), libapr1-dev (>= 1.5.0), libpcre3-dev, zlib1g-dev, libnghttp2-dev, libssl-dev (>= 1.1), perl, liblua5.2-dev, libxml2-dev, autotools-dev, gawk | awk
Build-Conflicts: autoconf2.13
Package-List:
 apache2 deb httpd optional arch=any
 apache2-bin deb httpd optional arch=any
 apache2-data deb httpd optional arch=all
 apache2-dbg deb debug optional arch=any
 apache2-dev deb httpd optional arch=any
 apache2-doc deb doc optional arch=all
 apache2-ssl-dev deb httpd optional arch=any
 apache2-suexec-custom deb httpd optional arch=any
 apache2-suexec-pristine deb httpd optional arch=any
 apache2-utils deb httpd optional arch=any
Checksums-Sha1:
 c6badd5f9bc3a951026c839d35ac05267612ff61 8638793 apache2_2.4.29.orig.tar.gz
 db9c63318143308677ef0091bcb47f4539f4ef44 816612 apache2_2.4.29-1ubuntu4.11.debian.tar.xz
Checksums-Sha256:
 948e4a11278a5954698b880b30f401b1e9ab743713ee2c7280a54dd4ddd87085 8638793 apache2_2.4.29.orig.tar.gz
 d6ea58d25762bd3716bfd5b0ed1c6af5b728513b215ef4411b7cce6c0e6c4f36 816612 apache2_2.4.29-1ubuntu4.11.debian.tar.xz
Files:
 6380b0856658f07479fdcba9e20294a6 8638793 apache2_2.4.29.orig.tar.gz
 7e4cf7092eac0af673c14a6075010490 816612 apache2_2.4.29-1ubuntu4.11.debian.tar.xz
Original-Maintainer: Debian Apache Maintainers <debian-apache@lists.debian.org>

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEpgY7tWAjCaQ8jrvULwmejQBegfQFAl1/kOMACgkQLwmejQBe
gfSvaBAAhHsC0Ggys8WLEniuOne8VukWRFchT1+7vjPVkASLnOiTe+gzUd4rWv0l
TO3oUOQ2xr4En5q2B84QpayAuzo8JPKq6xI1xiMUwT9lxD4p7OWnTQEH4dQ73xWg
BADNDBUsySFDrr5O1OLAb0aN99kg+WazKOars+5xngeix6OdgXUCCPJ6MnRSFE0r
Dxoymcvgr53ew/c2ut3wN8M4EqR735t38kHR1sJOebupeERfYpHlzx83+jLL85Ho
d0QAsKzn8P4+g8spmzAh3HsLgCLJSC51+zwh+iZu4Ekj5WyuWYIejlDH6H4Mg5QI
MpPGtd6W41Yuk0kMgRwP8YPqG1xjGOrlXDC3x3+/5nA1kfNZyN644DVCyVKo+ZL1
xmFMk9tAC6UrfbjxqcYsSWRYqSbCtVf+bj8mFVQp+sdjCL2VpJZ8zPfxEUZ2GxEY
k29+w+VXbEb6RDJwtPxB+5tZ+asmbjgnT0ljOm+QMicOwdfoDZKJUnf0L8yK27je
nzUhvuKLSORrrz/cjvAEHPWDM1ZArlFIbNxCiriyxxumTJpechwebMBivQoHM0ES
TKFa36WpTifDt+AvMX4hVv0iJDL0w/+7kZ3eLsVa2XqoyjrPsMElynN1govd+5hH
lM2FyddoaGSaUsI4zsmDEE5SW4E9h7WL38eIDSjx611eB9wOfZI=
=mm3I
-----END PGP SIGNATURE-----
