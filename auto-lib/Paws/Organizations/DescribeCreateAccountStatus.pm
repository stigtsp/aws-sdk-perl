
package Paws::Organizations::DescribeCreateAccountStatus;
  use Moose;
  has CreateAccountRequestId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCreateAccountStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::DescribeCreateAccountStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribeCreateAccountStatus - Arguments for method DescribeCreateAccountStatus on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCreateAccountStatus on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method DescribeCreateAccountStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCreateAccountStatus.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
# To get information about a request to create an account
# The following example shows how to request the status about a previous request
# to create an account in an organization. This operation can be called only by
# a principal from the organization's master account. In the example, the
# specified "createAccountRequestId" comes from the response of the original
# call to "CreateAccount":
    my $DescribeCreateAccountStatusResponse =
      $organizations->DescribeCreateAccountStatus(
      'CreateAccountRequestId' => 'car-exampleaccountcreationrequestid' );

    # Results:
    my $CreateAccountStatus =
      $DescribeCreateAccountStatusResponse->CreateAccountStatus;

 # Returns a L<Paws::Organizations::DescribeCreateAccountStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/DescribeCreateAccountStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateAccountRequestId => Str

Specifies the C<Id> value that uniquely identifies the C<CreateAccount>
request. You can get the value from the C<CreateAccountStatus.Id>
response in an earlier CreateAccount request, or from the
ListCreateAccountStatus operation.

The regex pattern (http://wikipedia.org/wiki/regex) for a create
account request ID string requires "car-" followed by from 8 to 32
lowercase letters or digits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCreateAccountStatus in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

