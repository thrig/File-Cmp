#!perl

use strict;
use warnings;

use Test::More;    # plan is down near bottom

BEGIN { use_ok( 'File::Cmp', qw/fcmp/ ) }

ok( fcmp( 'MANIFEST', 'MANIFEST' ), 'manifestly the same' );

ok( !fcmp( 'MANIFEST', \*DATA ), 'differ' );

# seek() to reset should not be necessary, as the 'fscheck' code should
# stat this file, discover that both filehandle reference point to this
# file, and avoid looking at the contents.
#seek DATA, 0, 0;
ok( fcmp( \*DATA, \*DATA, fscheck => 1 ), 'fscheck' );

# Default line-based reads are actually tricker than just setting RS to
# something - RS => \"4096" or whatever and binmode => ':raw' might
# actually be better defaults to set...
ok( !fcmp( 'this', 'that' ), 'extra line, sizecheck' );
ok( !fcmp( 'this', 'that', sizecheck => 0, blah => 1 ),
  'extra line, no sizecheck' );

# XXX otherwise, debugging the internal action of fcmp is tricky; I
# added warn statements to it to verify what I thought was happening,
# but this isn't very robust if there is future development... perhaps
# add a scalar reference param that would be populated with a reason for
# the difference, or a verbose param?

# XXX sparse files might be good to test, but would likely have to
# generate such files, assuming the target system supports them, etc.

plan tests => 6;

__DATA__
An, Android
