# Generated by default/object.tt
package Paws::SSOAdmin::AccountAssignment;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has PermissionSetArn => (is => 'ro', isa => 'Str');
  has PrincipalId => (is => 'ro', isa => 'Str');
  has PrincipalType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::AccountAssignment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSOAdmin::AccountAssignment object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., PrincipalType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSOAdmin::AccountAssignment object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

The assignment that indicates a principal's limited access to a
specified AWS account with a specified permission set.

The term I<principal> here refers to a user or group that is defined in
AWS SSO.

=head1 ATTRIBUTES


=head2 AccountId => Str

The identifier of the AWS account.


=head2 PermissionSetArn => Str

The ARN of the permission set. For more information about ARNs, see
Amazon Resource Names (ARNs) and AWS Service Namespaces in the I<AWS
General Reference>.


=head2 PrincipalId => Str

An identifier for an object in AWS SSO, such as a user or group.
PrincipalIds are GUIDs (For example,
f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
PrincipalIds in AWS SSO, see the AWS SSO Identity Store API Reference.


=head2 PrincipalType => Str

The entity type for which the assignment will be created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

