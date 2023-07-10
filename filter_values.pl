#!/usr/bin/perl

while ($line = <STDIN>) {

    if ($line =~ Core) {
        push @values_entries, &get_values($line);
    }
}

$full_values_string = join ";", @values_entries;
print($full_values_string);

print("\n");


sub get_values {
    local($line) = @_;
    @remaining_parts = split(/\+/, $line);
    $temp = $remaining_parts[1];
    @numbers_splited = split(/°/, $temp);
    $value = $numbers_splited[0];
    if ($ARGV[0] == "1") {
        $value =~ s/\./,/g;
    }
    $value;
}
