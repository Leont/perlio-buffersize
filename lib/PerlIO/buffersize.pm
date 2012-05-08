package PerlIO::buffersize;
use strict;
use warnings;

use XSLoader;

XSLoader::load(__PACKAGE__, __PACKAGE__->VERSION);

1;

# ABSTRACT: Set the buffersize of a handle

__END__

=head1 SYNOPSIS

 open my $fh, '<:buffersize(65536)', $filename;

=head1 DESCRIPTION

This module sets the buffer-size of a filehandle to an other value than the default. This can only be done before the handle is used, as once the buffer has been allocated it can not be changed.

=head1 SYNTAX

This modules does not have to be loaded explicitly, it will be loaded automatically by using it in an open mode.  The module has the following general syntax: C<:buffersize(size)>. The size can be any positive integer.

=cut
