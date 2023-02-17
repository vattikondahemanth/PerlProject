use strict;
use warnings;
use v5.10; # for say() function

use DBI;
say "Perl MySQL Cooooooooooooooooonnect Demo";

my $dsn = "DBI:mysql:perlmysqldb";
my $username = "root";
my $password = 'root';


my $dbh  = DBI->connect($dsn, $username, $password)  or die $DBI::errstr;


my $sth = $dbh->prepare("SELECT _title, _content FROM article");

$sth->execute() or die $DBI::errstr;
print "Number of rows found :" + $sth->rows;
while (my @row = $sth->fetchrow_array()) {
   my ($_title, $_content ) = @row;
   print "Title = $_title, Content = $_content\n";
}
$sth->finish()

