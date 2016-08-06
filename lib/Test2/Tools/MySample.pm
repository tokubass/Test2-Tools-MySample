package Test2::Tools::MySample;
use strict;
use warnings;
use Test2::API qw/context/;

our @EXPORT = qw/ok/;
use base 'Exporter';

sub ok($;$@) {
    my ($bool, $name, @diag) = @_;
    my $ctx = context();
    $ctx->ok($bool, $name, \@diag);
    $ctx->release;
    return $bool ? 1 : 0;
}


1;

