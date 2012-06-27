use sanity;
use Test::More;
use version;

plan tests => 1;

BEGIN {
   use_ok( 'MooX::Types::CLike' ) || print "Bail out!\n";
}

diag( 
   sprintf("Testing %s %s, Perl %s (%s)", 'MooX::Types::CLike', (map { version->parse($_)->normal } ($MooX::Types::CLike::VERSION, $])), $^X)
);
