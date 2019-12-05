package Paws::Athena::QueryExecutionStatistics;
  use Moose;
  has DataManifestLocation => (is => 'ro', isa => 'Str');
  has DataScannedInBytes => (is => 'ro', isa => 'Int');
  has EngineExecutionTimeInMillis => (is => 'ro', isa => 'Int');
  has QueryPlanningTimeInMillis => (is => 'ro', isa => 'Int');
  has QueryQueueTimeInMillis => (is => 'ro', isa => 'Int');
  has ServiceProcessingTimeInMillis => (is => 'ro', isa => 'Int');
  has TotalExecutionTimeInMillis => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::QueryExecutionStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::QueryExecutionStatistics object:

  $service_obj->Method(Att1 => { DataManifestLocation => $value, ..., TotalExecutionTimeInMillis => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::QueryExecutionStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->DataManifestLocation

=head1 DESCRIPTION

The amount of data scanned during the query execution and the amount of
time that it took to execute, and the type of statement that was run.

=head1 ATTRIBUTES


=head2 DataManifestLocation => Str

  The location and file name of a data manifest file. The manifest file
is saved to the Athena query results location in Amazon S3. The
manifest file tracks files that the query wrote to Amazon S3. If the
query fails, the manifest file also tracks files that the query
intended to write. The manifest is useful for identifying orphaned
files resulting from a failed query. For more information, see Working
with Query Results, Output Files, and Query History
(https://docs.aws.amazon.com/athena/latest/ug/querying.html) in the
I<Amazon Athena User Guide>.


=head2 DataScannedInBytes => Int

  The number of bytes in the data that was queried.


=head2 EngineExecutionTimeInMillis => Int

  The number of milliseconds that the query took to execute.


=head2 QueryPlanningTimeInMillis => Int

  The number of milliseconds that Athena took to plan the query
processing flow. This includes the time spent retrieving table
partitions from the data source. Note that because the query engine
performs the query planning, query planning time is a subset of engine
processing time.


=head2 QueryQueueTimeInMillis => Int

  The number of milliseconds that the query was in your query queue
waiting for resources. Note that if transient errors occur, Athena
might automatically add the query back to the queue.


=head2 ServiceProcessingTimeInMillis => Int

  The number of milliseconds that Athena took to finalize and publish the
query results after the query engine finished running the query.


=head2 TotalExecutionTimeInMillis => Int

  The number of milliseconds that Athena took to run the query.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

