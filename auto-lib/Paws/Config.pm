
use Paws::API;


package Paws::Config {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'config');
  has version => (is => 'ro', isa => 'Str', default => '2014-11-12');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'StarlingDoveService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub DeleteDeliveryChannel {
    my $self = shift;
    return $self->do_call('Paws::Config::DeleteDeliveryChannel', @_);
  }
  sub DeliverConfigSnapshot {
    my $self = shift;
    return $self->do_call('Paws::Config::DeliverConfigSnapshot', @_);
  }
  sub DescribeConfigurationRecorders {
    my $self = shift;
    return $self->do_call('Paws::Config::DescribeConfigurationRecorders', @_);
  }
  sub DescribeConfigurationRecorderStatus {
    my $self = shift;
    return $self->do_call('Paws::Config::DescribeConfigurationRecorderStatus', @_);
  }
  sub DescribeDeliveryChannels {
    my $self = shift;
    return $self->do_call('Paws::Config::DescribeDeliveryChannels', @_);
  }
  sub DescribeDeliveryChannelStatus {
    my $self = shift;
    return $self->do_call('Paws::Config::DescribeDeliveryChannelStatus', @_);
  }
  sub GetResourceConfigHistory {
    my $self = shift;
    return $self->do_call('Paws::Config::GetResourceConfigHistory', @_);
  }
  sub PutConfigurationRecorder {
    my $self = shift;
    return $self->do_call('Paws::Config::PutConfigurationRecorder', @_);
  }
  sub PutDeliveryChannel {
    my $self = shift;
    return $self->do_call('Paws::Config::PutDeliveryChannel', @_);
  }
  sub StartConfigurationRecorder {
    my $self = shift;
    return $self->do_call('Paws::Config::StartConfigurationRecorder', @_);
  }
  sub StopConfigurationRecorder {
    my $self = shift;
    return $self->do_call('Paws::Config::StopConfigurationRecorder', @_);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config - Perl Interface to AWS AWS Config

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



AWS Config

AWS Config provides a way to keep track of the configurations of all
the AWS resources associated with your AWS account. You can use AWS
Config to get the current and historical configurations of each AWS
resource and also to get information about the relationship between the
resources. An AWS resource can be an Amazon Compute Cloud (Amazon EC2)
instance, an Elastic Block Store (EBS) volume, an Elastic network
Interface (ENI), or a security group. For a complete list of resources
currently supported by AWS Config, see Supported AWS Resources.

You can access and manage AWS Config through the AWS Management
Console, the AWS Command Line Interface (AWS CLI), the AWS Config API,
or the AWS SDKs for AWS Config

This reference guide contains documentation for the AWS Config API and
the AWS CLI commands that you can use to manage AWS Config.

The AWS Config API uses the Signature Version 4 protocol for signing
requests. For more information about how to sign a request with this
protocol, see Signature Version 4 Signing Process.

For detailed information about AWS Config features and their associated
actions or commands, as well as how to work with AWS Management
Console, see What Is AWS Config? in the I<AWS Config Developer Guide>.










=head1 METHODS

=head2 DeleteDeliveryChannel()

  Arguments described in: L<Paws::Config::DeleteDeliveryChannel>

  Returns: nothing

  

Deletes the specified delivery channel.

The delivery channel cannot be deleted if it is the only delivery
channel and the configuration recorder is still running. To delete the
delivery channel, stop the running configuration recorder using the
StopConfigurationRecorder action.











=head2 DeliverConfigSnapshot()

  Arguments described in: L<Paws::Config::DeliverConfigSnapshot>

  Returns: L<Paws::Config::DeliverConfigSnapshotResponse>

  

Schedules delivery of a configuration snapshot to the Amazon S3 bucket
in the specified delivery channel. After the delivery has started, AWS
Config sends following notifications using an Amazon SNS topic that you
have specified.

=over

=item * Notification of starting the delivery.

=item * Notification of delivery completed, if the delivery was
successfully completed.

=item * Notification of delivery failure, if the delivery failed to
complete.

=back











=head2 DescribeConfigurationRecorders()

  Arguments described in: L<Paws::Config::DescribeConfigurationRecorders>

  Returns: L<Paws::Config::DescribeConfigurationRecordersResponse>

  

Returns the name of one or more specified configuration recorders. If
the recorder name is not specified, this action returns the names of
all the configuration recorders associated with the account.











=head2 DescribeConfigurationRecorderStatus()

  Arguments described in: L<Paws::Config::DescribeConfigurationRecorderStatus>

  Returns: L<Paws::Config::DescribeConfigurationRecorderStatusResponse>

  

Returns the current status of the specified configuration recorder. If
a configuration recorder is not specified, this action returns the
status of all configuration recorder associated with the account.











=head2 DescribeDeliveryChannels()

  Arguments described in: L<Paws::Config::DescribeDeliveryChannels>

  Returns: L<Paws::Config::DescribeDeliveryChannelsResponse>

  

Returns details about the specified delivery channel. If a delivery
channel is not specified, this action returns the details of all
delivery channels associated with the account.











=head2 DescribeDeliveryChannelStatus()

  Arguments described in: L<Paws::Config::DescribeDeliveryChannelStatus>

  Returns: L<Paws::Config::DescribeDeliveryChannelStatusResponse>

  

Returns the current status of the specified delivery channel. If a
delivery channel is not specified, this action returns the current
status of all delivery channels associated with the account.











=head2 GetResourceConfigHistory()

  Arguments described in: L<Paws::Config::GetResourceConfigHistory>

  Returns: L<Paws::Config::GetResourceConfigHistoryResponse>

  

Returns a list of configuration items for the specified resource. The
list contains details about each state of the resource during the
specified time interval. You can specify a C<limit> on the number of
results returned on the page. If a limit is specified, a C<nextToken>
is returned as part of the result that you can use to continue this
request.











=head2 PutConfigurationRecorder()

  Arguments described in: L<Paws::Config::PutConfigurationRecorder>

  Returns: nothing

  

Creates a new configuration recorder to record the resource
configurations.

You can use this action to change the role (C<roleARN>) of an existing
recorder. To change the role, call the action on the existing
configuration recorder and specify a role.











=head2 PutDeliveryChannel()

  Arguments described in: L<Paws::Config::PutDeliveryChannel>

  Returns: nothing

  

Creates a new delivery channel object to deliver the configuration
information to an Amazon S3 bucket, and to an Amazon SNS topic.

You can use this action to change the Amazon S3 bucket or an Amazon SNS
topic of the existing delivery channel. To change the Amazon S3 bucket
or an Amazon SNS topic, call this action and specify the changed values
for the S3 bucket and the SNS topic. If you specify a different value
for either the S3 bucket or the SNS topic, this action will keep the
existing value for the parameter that is not changed.











=head2 StartConfigurationRecorder()

  Arguments described in: L<Paws::Config::StartConfigurationRecorder>

  Returns: nothing

  

Starts recording configurations of all the resources associated with
the account.

You must have created at least one delivery channel to successfully
start the configuration recorder.











=head2 StopConfigurationRecorder()

  Arguments described in: L<Paws::Config::StopConfigurationRecorder>

  Returns: nothing

  

Stops recording configurations of all the resources associated with the
account.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

