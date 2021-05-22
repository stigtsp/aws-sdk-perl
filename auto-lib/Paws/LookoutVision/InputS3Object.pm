# Generated by default/object.tt
package Paws::LookoutVision::InputS3Object;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has VersionId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::InputS3Object

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LookoutVision::InputS3Object object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., VersionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LookoutVision::InputS3Object object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

Amazon S3 Location information for an input manifest file.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The Amazon S3 bucket that contains the manifest.


=head2 B<REQUIRED> Key => Str

The name and location of the manifest file withiin the bucket.


=head2 VersionId => Str

The version ID of the bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LookoutVision>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

