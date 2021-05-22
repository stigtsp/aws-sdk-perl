# Generated by default/object.tt
package Paws::AmplifyBackend::BackendAPIAuthType;
  use Moose;
  has Mode => (is => 'ro', isa => 'Str', request_name => 'mode', traits => ['NameInRequest']);
  has Settings => (is => 'ro', isa => 'Paws::AmplifyBackend::BackendAPIAppSyncAuthSettings', request_name => 'settings', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::BackendAPIAuthType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AmplifyBackend::BackendAPIAuthType object:

  $service_obj->Method(Att1 => { Mode => $value, ..., Settings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AmplifyBackend::BackendAPIAuthType object:

  $result = $service_obj->Method(...);
  $result->Att1->Mode

=head1 DESCRIPTION

Describes the auth types for your configured data models.

=head1 ATTRIBUTES


=head2 Mode => Str

Describes the authentication mode.


=head2 Settings => L<Paws::AmplifyBackend::BackendAPIAppSyncAuthSettings>

Describes settings for the authentication mode.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

