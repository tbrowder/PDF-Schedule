#!/usr/bin/env raku

use Spreadsheet::XLSX;

my $x = "../t/data/t.xlsx".IO.absolute;
if not @*ARGS {
    print qq:to/HERE/;
    Usage: {$*PROGRAM.basename} go

    Exercises various operations on Excel file '$x'

    HERE
   
    exit
}

#my $w = Spreadsheet::XLSX.load($x);
#my $w = Spreadsheet::XLSX.load('../t/data/t.xlsx');
#my $w = Spreadsheet::XLSX.load('t.xlsx');
my $w = Spreadsheet::XLSX.load('basic.xlsx');
say $w.worksheets.elems;
my $s = $w.worksheets[0];
say $s.cells.elems;
say $s.columns.elems;
say $s.rows.elems;


