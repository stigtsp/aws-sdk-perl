package Paws::MediaConvert::DolbyVision;
  use Moose;
  has L6Metadata => (is => 'ro', isa => 'Paws::MediaConvert::DolbyVisionLevel6Metadata', request_name => 'l6Metadata', traits => ['NameInRequest']);
  has L6Mode => (is => 'ro', isa => 'Str', request_name => 'l6Mode', traits => ['NameInRequest']);
  has Profile => (is => 'ro', isa => 'Str', request_name => 'profile', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::DolbyVision

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::DolbyVision object:

  $service_obj->Method(Att1 => { L6Metadata => $value, ..., Profile => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::DolbyVision object:

  $result = $service_obj->Method(...);
  $result->Att1->L6Metadata

=head1 DESCRIPTION

Settings for Dolby Vision

=head1 ATTRIBUTES


=head2 L6Metadata => L<Paws::MediaConvert::DolbyVisionLevel6Metadata>

  Use these settings when you set DolbyVisionLevel6Mode to SPECIFY to
override the MaxCLL and MaxFALL values in your input with new values.


=head2 L6Mode => Str

  Use Dolby Vision Mode to choose how the service will handle Dolby
Vision MaxCLL and MaxFALL properies.


=head2 Profile => Str

  In the current MediaConvert implementation, the Dolby Vision profile is
always 5 (PROFILE_5). Therefore, all of your inputs must contain Dolby
Vision frame interleaved data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

