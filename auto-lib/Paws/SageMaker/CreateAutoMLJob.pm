
package Paws::SageMaker::CreateAutoMLJob;
  use Moose;
  has AutoMLJobConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLJobConfig');
  has AutoMLJobName => (is => 'ro', isa => 'Str', required => 1);
  has AutoMLJobObjective => (is => 'ro', isa => 'Paws::SageMaker::AutoMLJobObjective');
  has GenerateCandidateDefinitionsOnly => (is => 'ro', isa => 'Bool');
  has InputDataConfig => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AutoMLChannel]', required => 1);
  has ModelDeployConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelDeployConfig');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLOutputDataConfig', required => 1);
  has ProblemType => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAutoMLJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateAutoMLJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateAutoMLJob - Arguments for method CreateAutoMLJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAutoMLJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateAutoMLJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAutoMLJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateAutoMLJobResponse = $api . sagemaker->CreateAutoMLJob(
      AutoMLJobName   => 'MyAutoMLJobName',
      InputDataConfig => [
        {
          DataSource => {
            S3DataSource => {
              S3DataType => 'ManifestFile',    # values: ManifestFile, S3Prefix
              S3Uri      => 'MyS3Uri',         # max: 1024

            },

          },
          TargetAttributeName => 'MyTargetAttributeName',    # min: 1
          CompressionType     => 'None',    # values: None, Gzip; OPTIONAL
        },
        ...
      ],
      OutputDataConfig => {
        S3OutputPath => 'MyS3Uri',       # max: 1024
        KmsKeyId     => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },
      RoleArn         => 'MyRoleArn',
      AutoMLJobConfig => {
        CompletionCriteria => {
          MaxAutoMLJobRuntimeInSeconds      => 1,    # min: 1; OPTIONAL
          MaxCandidates                     => 1,    # min: 1; OPTIONAL
          MaxRuntimePerTrainingJobInSeconds => 1,    # min: 1; OPTIONAL
        },    # OPTIONAL
        SecurityConfig => {
          EnableInterContainerTrafficEncryption => 1,    # OPTIONAL
          VolumeKmsKeyId => 'MyKmsKeyId',                # max: 2048; OPTIONAL
          VpcConfig      => {
            SecurityGroupIds => [
              'MySecurityGroupId', ...                   # max: 32
            ],    # min: 1, max: 5
            Subnets => [
              'MySubnetId', ...    # max: 32
            ],    # min: 1, max: 16

          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      AutoMLJobObjective => {
        MetricName => 'Accuracy',    # values: Accuracy, MSE, F1, F1macro, AUC

      },    # OPTIONAL
      GenerateCandidateDefinitionsOnly => 1,    # OPTIONAL
      ModelDeployConfig                => {
        AutoGenerateEndpointName => 1,                   # OPTIONAL
        EndpointName             => 'MyEndpointName',    # max: 63; OPTIONAL
      },    # OPTIONAL
      ProblemType => 'BinaryClassification',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AutoMLJobArn = $CreateAutoMLJobResponse->AutoMLJobArn;

    # Returns a L<Paws::SageMaker::CreateAutoMLJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateAutoMLJob>

=head1 ATTRIBUTES


=head2 AutoMLJobConfig => L<Paws::SageMaker::AutoMLJobConfig>

Contains C<CompletionCriteria> and C<SecurityConfig> settings for the
AutoML job.



=head2 B<REQUIRED> AutoMLJobName => Str

Identifies an Autopilot job. The name must be unique to your account
and is case-insensitive.



=head2 AutoMLJobObjective => L<Paws::SageMaker::AutoMLJobObjective>

Defines the objective metric used to measure the predictive quality of
an AutoML job. You provide an AutoMLJobObjective$MetricName and
Autopilot infers whether to minimize or maximize it.



=head2 GenerateCandidateDefinitionsOnly => Bool

Generates possible candidates without training the models. A candidate
is a combination of data preprocessors, algorithms, and algorithm
parameter settings.



=head2 B<REQUIRED> InputDataConfig => ArrayRef[L<Paws::SageMaker::AutoMLChannel>]

An array of channel objects that describes the input data and its
location. Each channel is a named input source. Similar to
C<InputDataConfig> supported by . Format(s) supported: CSV. Minimum of
500 rows.



=head2 ModelDeployConfig => L<Paws::SageMaker::ModelDeployConfig>

Specifies how to generate the endpoint name for an automatic one-click
Autopilot model deployment.



=head2 B<REQUIRED> OutputDataConfig => L<Paws::SageMaker::AutoMLOutputDataConfig>

Provides information about encryption and the Amazon S3 output path
needed to store artifacts from an AutoML job. Format(s) supported: CSV.

E<lt>paraE<gt>Specifies whether to automatically deploy the best &ATP;
model to an endpoint and the name of that endpoint if deployed
automatically.E<lt>/paraE<gt>



=head2 ProblemType => Str

Defines the type of supervised learning available for the candidates.
Options include: C<BinaryClassification>, C<MulticlassClassification>,
and C<Regression>. For more information, see Amazon SageMaker Autopilot
problem types and algorithm support
(https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development-problem-types.html).

Valid values are: C<"BinaryClassification">, C<"MulticlassClassification">, C<"Regression">

=head2 B<REQUIRED> RoleArn => Str

The ARN of the role that is used to access the data.

E<lt>paraE<gt>Specifies whether to automatically deploy the best &ATP;
model to an endpoint and the name of that endpoint if deployed
automatically.E<lt>/paraE<gt>



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Each tag consists of a key and an optional value. Tag keys must be
unique per resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAutoMLJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

