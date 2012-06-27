#!perl
use sanity;
use Test::More;
use Class::Load;

# Ensure a recent version of Test::Pod
my $min_tp = 1.22;
Class::Load::load_optional_class('Test::Pod', { -version => $min_tp }) || 
   plan skip_all => "Test::Pod $min_tp required for testing POD";

Test::Pod::all_pod_files_ok();
