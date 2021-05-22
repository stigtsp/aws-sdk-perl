# Generated by default/object.tt
package Paws::LocationService::BatchEvaluateGeofencesError;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str', required => 1);
  has Error => (is => 'ro', isa => 'Paws::LocationService::BatchItemError', required => 1);
  has SampleTime => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::BatchEvaluateGeofencesError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LocationService::BatchEvaluateGeofencesError object:

  $service_obj->Method(Att1 => { DeviceId => $value, ..., SampleTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LocationService::BatchEvaluateGeofencesError object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceId

=head1 DESCRIPTION

Contains error details for each device that failed to evaluate its
position against the geofences in a given geofence collection.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The device associated with the position evaluation error.


=head2 B<REQUIRED> Error => L<Paws::LocationService::BatchItemError>

Contains details associated to the batch error.


=head2 B<REQUIRED> SampleTime => Str

Specifies a timestamp for when the error occurred in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

