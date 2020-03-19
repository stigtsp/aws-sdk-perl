# Generated by default/object.tt
package Paws::CloudDirectory::BatchListObjectPoliciesResponse;
  use Moose;
  has AttachedPolicyIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchListObjectPoliciesResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchListObjectPoliciesResponse object:

  $service_obj->Method(Att1 => { AttachedPolicyIds => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchListObjectPoliciesResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachedPolicyIds

=head1 DESCRIPTION

Represents the output of a ListObjectPolicies response operation.

=head1 ATTRIBUTES


=head2 AttachedPolicyIds => ArrayRef[Str|Undef]

A list of policy C<ObjectIdentifiers>, that are attached to the object.


=head2 NextToken => Str

The pagination token.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

