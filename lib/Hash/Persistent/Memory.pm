package Hash::Persistent::Memory;

# ABSTRACT: in-memory persistent object which doesn't really store anything

use strict;
use warnings;

sub new {
    return bless {} => shift;
}

sub commit {}

# we probably should cleanup $self contents, but Hash::Persistent currently doesn't do it.
sub remove {
    my $self = shift;
    delete $self->{$_} for keys %$self;
}

1;
