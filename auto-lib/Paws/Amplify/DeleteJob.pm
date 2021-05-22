
package Paws::Amplify::DeleteJob;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BranchName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'branchName', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps/{appId}/branches/{branchName}/jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::DeleteJobResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::DeleteJob - Arguments for method DeleteJob on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteJob on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method DeleteJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteJob.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $DeleteJobResult = $amplify->DeleteJob(
      AppId      => 'MyAppId',
      BranchName => 'MyBranchName',
      JobId      => 'MyJobId',

    );

    # Results:
    my $JobSummary = $DeleteJobResult->JobSummary;

    # Returns a L<Paws::Amplify::DeleteJobResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/DeleteJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique ID for an Amplify app.



=head2 B<REQUIRED> BranchName => Str

The name for the branch, for the job.



=head2 B<REQUIRED> JobId => Str

The unique ID for the job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteJob in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

