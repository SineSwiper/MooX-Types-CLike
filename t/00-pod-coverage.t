use sanity;
use Test::More;
use Class::Load;

# Ensure a recent version of Test::Pod::Coverage
my $min_tpc = 1.08;
Class::Load::load_optional_class('Test::Pod::Coverage', { -version => $min_tpc } ) || 
   plan skip_all => "Test::Pod::Coverage $min_tpc required for testing POD coverage";

# Test::Pod::Coverage doesn't require a minimum Pod::Coverage version,
# but older versions don't recognize some common documentation styles
my $min_pc = 0.18;
Class::Load::load_optional_class('Pod::Coverage', { -version => $min_pc }) || 
   plan skip_all => "Pod::Coverage $min_pc required for testing POD coverage";

Test::Pod::Coverage::all_pod_coverage_ok();
