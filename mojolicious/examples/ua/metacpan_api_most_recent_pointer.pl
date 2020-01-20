use strict;
use warnings;

use Mojo::UserAgent;

my $ua = Mojo::UserAgent->new;
my $res = $ua->get('https://api.metacpan.org/v0/release/_search?q=status:latest&fields=name,status,date&sort=date:desc&size=10')
    ->res;
print $res->json("/hits/hits/0/fields/name"), "\n";



