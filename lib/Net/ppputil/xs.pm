package Net::ppputil::xs;

use strict;
use warnings;

our $VERSION;

use XSLoader;
BEGIN {
    $VERSION = '0.18';
    XSLoader::load(__PACKAGE__, $VERSION);
}


1;
__END__
