# -*- Perl -*-
#
# compare two files character by character like cmp(1)

package File::Cmp;

use 5.008000;
use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw/cmp/;

our $VERSION = '0.01';



1;
__END__

=head1 NAME

File::Cmp - compare two files character by character like cmp(1)

=head1 SYNOPSIS

  use File::Cmp qw/cmp/;
  TODO

=head1 DESCRIPTION

TODO

=head1 BUGS

Newer versions of this module may be available from CPAN. If the bug is
in the latest version, check:

L<http://github.com/thrig/File-Cmp>

=head1 SEE ALSO

L<cmp(1)>

=head1 AUTHOR

Jeremy Mates, E<lt>jmates@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2013 by Jeremy Mates

This library is free software; you can redistribute it and/or modify it
under the same terms as Perl itself, either Perl version 5.16 or, at
your option, any later version of Perl 5 you may have available.

=cut
