#!/usr/bin/perl

while ($line = <STDIN>) {

    if ($line =~ Core) {
        push @header_entries, &get_header($line);
    }
}

$full_header_string = join ";", @header_entries;
print($full_header_string);

print("\n");

sub get_header {
    local($line) = @_;
    @header_parts = split(/:/, $line);
    $header_parts[0];
}
