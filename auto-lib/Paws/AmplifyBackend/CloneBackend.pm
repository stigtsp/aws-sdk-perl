
package Paws::AmplifyBackend::CloneBackend;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backendEnvironmentName', required => 1);
  has TargetEnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetEnvironmentName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CloneBackend');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend/{appId}/environments/{backendEnvironmentName}/clone');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::CloneBackendResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::CloneBackend - Arguments for method CloneBackend on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CloneBackend on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method CloneBackend.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CloneBackend.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $CloneBackendResponse = $amplifybackend->CloneBackend(
      AppId                  => 'My__string',
      BackendEnvironmentName => 'My__string',
      TargetEnvironmentName  => 'My__string',

    );

    # Results:
    my $AppId                  = $CloneBackendResponse->AppId;
    my $BackendEnvironmentName = $CloneBackendResponse->BackendEnvironmentName;
    my $Error                  = $CloneBackendResponse->Error;
    my $JobId                  = $CloneBackendResponse->JobId;
    my $Operation              = $CloneBackendResponse->Operation;
    my $Status                 = $CloneBackendResponse->Status;

    # Returns a L<Paws::AmplifyBackend::CloneBackendResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/CloneBackend>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 B<REQUIRED> BackendEnvironmentName => Str

The name of the backend environment.



=head2 B<REQUIRED> TargetEnvironmentName => Str

The name of the destination backend environment to be created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CloneBackend in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

