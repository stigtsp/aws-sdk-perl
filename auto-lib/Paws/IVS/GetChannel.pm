
package Paws::IVS::GetChannel;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetChannel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVS::GetChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::GetChannel - Arguments for method GetChannel on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetChannel on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method GetChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetChannel.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    my $GetChannelResponse = $ivs->GetChannel(
      Arn => 'MyChannelArn',

    );

    # Results:
    my $Channel = $GetChannelResponse->Channel;

    # Returns a L<Paws::IVS::GetChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/GetChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

ARN of the channel for which the configuration is to be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetChannel in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

