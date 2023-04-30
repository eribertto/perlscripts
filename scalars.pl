#!/usr/bin/perl
use v5.36;
use utf8;

# scalars or single variables
my $fred = 17;
my $barney = 'hello'; # note the single quotes e.g. no interpolation of variable
$barney = $fred + 3;
$barney = $barney * 2;

say "fred is $fred", ' ', "barney is $barney";

# using compound assignment operators
# similar to C language
$fred += 5;
$barney *= 3;

say "fred is $fred", ' ', "barney is $barney";

# string concatenation operator dot (.)
my $fname = 'Eriberto';
my $lname = 'Mendez';
my $completeName = $fname . ' ' .  $lname;
say "Your name is $completeName";
# using the append compound operator
$completeName .= ' Jr.';
say "Your full name is $completeName";


# subroutines aka functions
sub logger {
    my $logmessage = shift;
    open my $logfile, ">>", "my.log" or die "Cannot open my.log: $!";
    print $logfile $logmessage;
}

# call the subf, e.g. this will create a new file my.log in the current
# directory
logger("We have a logger subroutine!");
