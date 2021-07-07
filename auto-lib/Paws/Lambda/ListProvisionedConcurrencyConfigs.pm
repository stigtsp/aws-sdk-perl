
package Paws::Lambda::ListProvisionedConcurrencyConfigs;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Marker');
  has MaxItems => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxItems');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProvisionedConcurrencyConfigs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2019-09-30/functions/{FunctionName}/provisioned-concurrency?List=ALL');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::ListProvisionedConcurrencyConfigsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListProvisionedConcurrencyConfigs - Arguments for method ListProvisionedConcurrencyConfigs on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProvisionedConcurrencyConfigs on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method ListProvisionedConcurrencyConfigs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProvisionedConcurrencyConfigs.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
# To get a list of provisioned concurrency configurations
# The following example returns a list of provisioned concurrency configurations
# for a function named my-function.
    my $ListProvisionedConcurrencyConfigsResponse =
      $lambda->ListProvisionedConcurrencyConfigs(
      'FunctionName' => 'my-function' );

    # Results:
    my $ProvisionedConcurrencyConfigs =
      $ListProvisionedConcurrencyConfigsResponse->ProvisionedConcurrencyConfigs;

  # Returns a L<Paws::Lambda::ListProvisionedConcurrencyConfigsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/ListProvisionedConcurrencyConfigs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionName => Str

The name of the Lambda function.

B<Name formats>

=over

=item *

B<Function name> - C<my-function>.

=item *

B<Function ARN> -
C<arn:aws:lambda:us-west-2:123456789012:function:my-function>.

=item *

B<Partial ARN> - C<123456789012:function:my-function>.

=back

The length constraint applies only to the full ARN. If you specify only
the function name, it is limited to 64 characters in length.



=head2 Marker => Str

Specify the pagination token that's returned by a previous request to
retrieve the next page of results.



=head2 MaxItems => Int

Specify a number to limit the number of configurations returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProvisionedConcurrencyConfigs in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

