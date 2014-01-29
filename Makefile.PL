use strict;
use lib '.';
use inc::Module::Install;

name                ('Net-ppputil-xs');
license             ('perl');
author              ('Agent Zhang <agentzh@yahoo.cn>');
perl_version        ('5.006001');
all_from            ('lib/Net/ppputil/xs.pm');
repository          ('http://github.com/agentzh/cookiexs/tree/master');

cc_inc_paths    '.';
cc_files        (glob("*.c"), (-e 'xs.c' ? () : 'xs.c'));
cc_optimize_flags '-g3';
can_cc or die "This module requires a C compiler";

#build_requires     ('Test::More');
requires           ('Filter::Util::Call');
use_test_base();

auto_install();
WriteAll();

