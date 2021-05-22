# Generated by default/object.tt
package Paws::AmplifyBackend::UpdateBackendAuthForgotPasswordConfig;
  use Moose;
  has DeliveryMethod => (is => 'ro', isa => 'Str', request_name => 'deliveryMethod', traits => ['NameInRequest']);
  has EmailSettings => (is => 'ro', isa => 'Paws::AmplifyBackend::EmailSettings', request_name => 'emailSettings', traits => ['NameInRequest']);
  has SmsSettings => (is => 'ro', isa => 'Paws::AmplifyBackend::SmsSettings', request_name => 'smsSettings', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::UpdateBackendAuthForgotPasswordConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AmplifyBackend::UpdateBackendAuthForgotPasswordConfig object:

  $service_obj->Method(Att1 => { DeliveryMethod => $value, ..., SmsSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AmplifyBackend::UpdateBackendAuthForgotPasswordConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->DeliveryMethod

=head1 DESCRIPTION

Describes the forgot password policy for authenticating into the
Amplify app.

=head1 ATTRIBUTES


=head2 DeliveryMethod => Str

Describes which method to use (either SMS or email) to deliver messages
to app users that want to recover their password.


=head2 EmailSettings => L<Paws::AmplifyBackend::EmailSettings>

The configuration for the email sent when an app user forgets their
password.


=head2 SmsSettings => L<Paws::AmplifyBackend::SmsSettings>

The configuration for the SMS message sent when an Amplify app user
forgets their password.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

