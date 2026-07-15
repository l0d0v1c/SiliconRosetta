use strict;
use warnings;

# 2. Function
sub greet {
    my ($name) = @_;
    return "Hello, $name";
}

# 3. Variables: the sigil tells the structure
my $n = 5;
my $world = "World";
my @numbers = (3, 1, 4, 1, 5);
my %ages = (Alice => 30, Bob => 25);

# 4. Output
print greet($world), "\n";

# 5. Condition
if ($n > 3) {
    print "big\n";
} elsif ($n == 3) {
    print "medium\n";
} else {
    print "small\n";
}

# 6. For
for my $x (@numbers) {
    print $x * 2, "\n";
}

# 7. While
while ($n > 0) {
    $n = $n - 1;
}

# 8. Recursion
sub factorial {
    my ($k) = @_;
    return 1 if $k <= 1;
    return $k * factorial($k - 1);
}

# 9. Errors: eval captures, $@ holds the error
my $r = eval { 10 / 0 };
print "cannot divide\n" if $@;
