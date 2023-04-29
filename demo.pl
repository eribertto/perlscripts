#!/usr/bin/perl
use v5.36;
use utf8;

my @lines = `perldoc -u -f atan2`;
foreach (@lines) {
    s/\w<([^>]+)>/\U$1/g;
    print;
}
