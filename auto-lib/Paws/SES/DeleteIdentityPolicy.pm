
package Paws::SES::DeleteIdentityPolicy;
  use Moose;
  has Identity => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIdentityPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::DeleteIdentityPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteIdentityPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DeleteIdentityPolicy - Arguments for method DeleteIdentityPolicy on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIdentityPolicy on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method DeleteIdentityPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIdentityPolicy.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
 # DeleteIdentityPolicy
 # The following example deletes a sending authorization policy for an identity:
    my $DeleteIdentityPolicyResponse = $email->DeleteIdentityPolicy(
      'Identity'   => 'user@example.com',
      'PolicyName' => 'MyPolicy'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/DeleteIdentityPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identity => Str

The identity that is associated with the policy that you want to
delete. You can specify the identity by using its name or by using its
Amazon Resource Name (ARN). Examples: C<user@example.com>,
C<example.com>,
C<arn:aws:ses:us-east-1:123456789012:identity/example.com>.

To successfully call this API, you must own the identity.



=head2 B<REQUIRED> PolicyName => Str

The name of the policy to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIdentityPolicy in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

