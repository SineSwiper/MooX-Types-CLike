my @exports = grep { !/^is_/ } @MooX::Types::MooseLike::Base::EXPORT_OK;

package Dummy::MooseLike::Test;
use v5.10;
use Moo;
use MooX::Types::MooseLike::Base qw(:all);
no strict 'refs';

has 'Test_ABCD' => (
   is  => 'rw',
   isa => Int,
);

my $attr = 'Num';
has 'Test_'.$attr.'A' => (
   is  => 'rw',
   isa => &$attr,
);

foreach my $name (@exports) {
   has 'Test_'.$name => (
      is  => 'rw',
      isa => &{$name},
   );
   say $name;
   say \&{$name};
}
   
package main;

my $obj = Dummy::MooseLike::Test->new();
$obj->Test_Int('ABCInt');
$obj->Test_NumA('ABCNum');
$obj->Test_ABCD('ABCD');
