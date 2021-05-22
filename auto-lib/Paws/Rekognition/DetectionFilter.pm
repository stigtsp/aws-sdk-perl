# Generated by default/object.tt
package Paws::Rekognition::DetectionFilter;
  use Moose;
  has MinBoundingBoxHeight => (is => 'ro', isa => 'Num');
  has MinBoundingBoxWidth => (is => 'ro', isa => 'Num');
  has MinConfidence => (is => 'ro', isa => 'Num');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectionFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::DetectionFilter object:

  $service_obj->Method(Att1 => { MinBoundingBoxHeight => $value, ..., MinConfidence => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::DetectionFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->MinBoundingBoxHeight

=head1 DESCRIPTION

A set of parameters that allow you to filter out certain results from
your returned results.

=head1 ATTRIBUTES


=head2 MinBoundingBoxHeight => Num

Sets the minimum height of the word bounding box. Words with bounding
box heights lesser than this value will be excluded from the result.
Value is relative to the video frame height.


=head2 MinBoundingBoxWidth => Num

Sets the minimum width of the word bounding box. Words with bounding
boxes widths lesser than this value will be excluded from the result.
Value is relative to the video frame width.


=head2 MinConfidence => Num

Sets the confidence of word detection. Words with detection confidence
below this will be excluded from the result. Values should be between
50 and 100 as Text in Video will not return any result below 50.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

