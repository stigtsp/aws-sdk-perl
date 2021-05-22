# Generated by default/object.tt
package Paws::LocationService::BatchPutGeofenceSuccess;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has GeofenceId => (is => 'ro', isa => 'Str', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::BatchPutGeofenceSuccess

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LocationService::BatchPutGeofenceSuccess object:

  $service_obj->Method(Att1 => { CreateTime => $value, ..., UpdateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LocationService::BatchPutGeofenceSuccess object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateTime

=head1 DESCRIPTION

Contains a summary of each geofence that was successfully stored in a
given geofence collection.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateTime => Str

The timestamp for when the geofence was stored in a geofence collection
in ISO 8601 (https://www.iso.org/iso-8601-date-and-time-format.html)
format: C<YYYY-MM-DDThh:mm:ss.sssZ>


=head2 B<REQUIRED> GeofenceId => Str

The geofence successfully stored in a geofence collection.


=head2 B<REQUIRED> UpdateTime => Str

The timestamp for when the geofence was last updated in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

