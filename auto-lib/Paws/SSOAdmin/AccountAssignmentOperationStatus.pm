# Generated by default/object.tt
package Paws::SSOAdmin::AccountAssignmentOperationStatus;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has PermissionSetArn => (is => 'ro', isa => 'Str');
  has PrincipalId => (is => 'ro', isa => 'Str');
  has PrincipalType => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TargetId => (is => 'ro', isa => 'Str');
  has TargetType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::AccountAssignmentOperationStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSOAdmin::AccountAssignmentOperationStatus object:

  $service_obj->Method(Att1 => { CreatedDate => $value, ..., TargetType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSOAdmin::AccountAssignmentOperationStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedDate

=head1 DESCRIPTION

The status of the creation or deletion operation of an assignment that
a principal needs to access an account.

=head1 ATTRIBUTES


=head2 CreatedDate => Str

The date that the permission set was created.


=head2 FailureReason => Str

The message that contains an error or exception in case of an operation
failure.


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


=head2 RequestId => Str

The identifier for tracking the request operation that is generated by
the universally unique identifier (UUID) workflow.


=head2 Status => Str

The status of the permission set provisioning process.


=head2 TargetId => Str

TargetID is an AWS account identifier, typically a 10-12 digit string
(For example, 123456789012).


=head2 TargetType => Str

The entity type for which the assignment will be created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

