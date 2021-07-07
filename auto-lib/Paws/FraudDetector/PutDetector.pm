
package Paws::FraudDetector::PutDetector;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorId' , required => 1);
  has EventTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTypeName' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDetector');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::PutDetectorResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::PutDetector - Arguments for method PutDetector on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDetector on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method PutDetector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDetector.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $PutDetectorResult = $frauddetector->PutDetector(
      DetectorId    => 'Myidentifier',
      EventTypeName => 'Myidentifier',
      Description   => 'Mydescription',    # OPTIONAL
      Tags          => [
        {
          Key   => 'MytagKey',      # min: 1, max: 128
          Value => 'MytagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/PutDetector>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the detector.



=head2 B<REQUIRED> DetectorId => Str

The detector ID.



=head2 B<REQUIRED> EventTypeName => Str

The name of the event type.



=head2 Tags => ArrayRef[L<Paws::FraudDetector::Tag>]

A collection of key and value pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDetector in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

