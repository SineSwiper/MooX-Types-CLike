use sanity;
use Test::More;
use Class::Load;

plan skip_all => "Author tests not required for installation"
   unless $ENV{RELEASE_TESTING};

# auto-fail if RELEASE_TESTING
Class::Load::load_class('Test::CheckManifest', { -version => 0.9 });

Test::CheckManifest::ok_manifest();
