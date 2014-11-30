
use Paws::API;


package Paws::DynamoDB {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'dynamodb');
  has version => (is => 'ro', isa => 'Str', default => '2012-08-10');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'DynamoDB_20120810');
  has json_version => (is => 'ro', isa => 'Str', default => "1.0");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub BatchGetItem {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::BatchGetItem', @_);
  }
  sub BatchWriteItem {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::BatchWriteItem', @_);
  }
  sub CreateTable {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::CreateTable', @_);
  }
  sub DeleteItem {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::DeleteItem', @_);
  }
  sub DeleteTable {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::DeleteTable', @_);
  }
  sub DescribeTable {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::DescribeTable', @_);
  }
  sub GetItem {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::GetItem', @_);
  }
  sub ListTables {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::ListTables', @_);
  }
  sub PutItem {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::PutItem', @_);
  }
  sub Query {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::Query', @_);
  }
  sub Scan {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::Scan', @_);
  }
  sub UpdateItem {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::UpdateItem', @_);
  }
  sub UpdateTable {
    my $self = shift;
    return $self->do_call('Paws::DynamoDB::UpdateTable', @_);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB - Perl Interface to AWS Amazon DynamoDB

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



Amazon DynamoDB B<Overview>

This is the Amazon DynamoDB API Reference. This guide provides
descriptions and samples of the low-level DynamoDB API. For information
about DynamoDB application development, go to the Amazon DynamoDB
Developer Guide.

Instead of making the requests to the low-level DynamoDB API directly
from your application, we recommend that you use the AWS Software
Development Kits (SDKs). The easy-to-use libraries in the AWS SDKs make
it unnecessary to call the low-level DynamoDB API directly from your
application. The libraries take care of request authentication,
serialization, and connection management. For more information, go to
Using the AWS SDKs with DynamoDB in the I<Amazon DynamoDB Developer
Guide>.

If you decide to code against the low-level DynamoDB API directly, you
will need to write the necessary code to authenticate your requests.
For more information on signing your requests, go to Using the DynamoDB
API in the I<Amazon DynamoDB Developer Guide>.

The following are short descriptions of each low-level API action,
organized by function.

B<Managing Tables>

=over

=item *

I<CreateTable> - Creates a table with user-specified provisioned
throughput settings. You must designate one attribute as the hash
primary key for the table; you can optionally designate a second
attribute as the range primary key. DynamoDB creates indexes on these
key attributes for fast data access. Optionally, you can create one or
more secondary indexes, which provide fast data access using non-key
attributes.

=item *

I<DescribeTable> - Returns metadata for a table, such as table size,
status, and index information.

=item *

I<UpdateTable> - Modifies the provisioned throughput settings for a
table. Optionally, you can modify the provisioned throughput settings
for global secondary indexes on the table.

=item *

I<ListTables> - Returns a list of all tables associated with the
current AWS account and endpoint.

=item *

I<DeleteTable> - Deletes a table and all of its indexes.

=back

For conceptual information about managing tables, go to Working with
Tables in the I<Amazon DynamoDB Developer Guide>.

B<Reading Data>

=over

=item *

I<GetItem> - Returns a set of attributes for the item that has a given
primary key. By default, I<GetItem> performs an eventually consistent
read; however, applications can specify a strongly consistent read
instead.

=item *

I<BatchGetItem> - Performs multiple I<GetItem> requests for data items
using their primary keys, from one table or multiple tables. The
response from I<BatchGetItem> has a size limit of 16 MB and returns a
maximum of 100 items. Both eventually consistent and strongly
consistent reads can be used.

=item *

I<Query> - Returns one or more items from a table or a secondary index.
You must provide a specific hash key value. You can narrow the scope of
the query using comparison operators against a range key value, or on
the index key. I<Query> supports either eventual or strong consistency.
A single response has a size limit of 1 MB.

=item *

I<Scan> - Reads every item in a table; the result set is eventually
consistent. You can limit the number of items returned by filtering the
data attributes, using conditional expressions. I<Scan> can be used to
enable ad-hoc querying of a table against non-key attributes; however,
since this is a full table scan without using an index, I<Scan> should
not be used for any application query use case that requires
predictable performance.

=back

For conceptual information about reading data, go to Working with Items
and Query and Scan Operations in the I<Amazon DynamoDB Developer
Guide>.

B<Modifying Data>

=over

=item *

I<PutItem> - Creates a new item, or replaces an existing item with a
new item (including all the attributes). By default, if an item in the
table already exists with the same primary key, the new item completely
replaces the existing item. You can use conditional operators to
replace an item only if its attribute values match certain conditions,
or to insert a new item only if that item doesn't already exist.

=item *

I<UpdateItem> - Modifies the attributes of an existing item. You can
also use conditional operators to perform an update only if the item's
attribute values match certain conditions.

=item *

I<DeleteItem> - Deletes an item in a table by primary key. You can use
conditional operators to perform a delete an item only if the item's
attribute values match certain conditions.

=item *

I<BatchWriteItem> - Performs multiple I<PutItem> and I<DeleteItem>
requests across multiple tables in a single request. A failure of any
request(s) in the batch will not cause the entire I<BatchWriteItem>
operation to fail. Supports batches of up to 25 items to put or delete,
with a maximum total request size of 16 MB.

=back

For conceptual information about modifying data, go to Working with
Items and Query and Scan Operations in the I<Amazon DynamoDB Developer
Guide>.










=head1 METHODS

=head2 BatchGetItem()

  Arguments described in: L<Paws::DynamoDB::BatchGetItem>

  Returns: L<Paws::DynamoDB::BatchGetItemOutput>

  

The I<BatchGetItem> operation returns the attributes of one or more
items from one or more tables. You identify requested items by primary
key.

A single operation can retrieve up to 16 MB of data, which can contain
as many as 100 items. I<BatchGetItem> will return a partial result if
the response size limit is exceeded, the table's provisioned throughput
is exceeded, or an internal processing failure occurs. If a partial
result is returned, the operation returns a value for
I<UnprocessedKeys>. You can use this value to retry the operation
starting with the next item to get.

For example, if you ask to retrieve 100 items, but each individual item
is 300 KB in size, the system returns 52 items (so as not to exceed the
16 MB limit). It also returns an appropriate I<UnprocessedKeys> value
so you can get the next page of results. If desired, your application
can include its own logic to assemble the pages of results into one
data set.

If I<none> of the items can be processed due to insufficient
provisioned throughput on all of the tables in the request, then
I<BatchGetItem> will return a
I<ProvisionedThroughputExceededException>. If I<at least one> of the
items is successfully processed, then I<BatchGetItem> completes
successfully, while returning the keys of the unread items in
I<UnprocessedKeys>.

If DynamoDB returns any unprocessed items, you should retry the batch
operation on those items. However, I<we strongly recommend that you use
an exponential backoff algorithm>. If you retry the batch operation
immediately, the underlying read or write requests can still fail due
to throttling on the individual tables. If you delay the batch
operation using exponential backoff, the individual requests in the
batch are much more likely to succeed.

For more information, go to Batch Operations and Error Handling in the
I<Amazon DynamoDB Developer Guide>.

By default, I<BatchGetItem> performs eventually consistent reads on
every table in the request. If you want strongly consistent reads
instead, you can set I<ConsistentRead> to C<true> for any or all
tables.

In order to minimize response latency, I<BatchGetItem> retrieves items
in parallel.

When designing your application, keep in mind that DynamoDB does not
return attributes in any particular order. To help parse the response
by item, include the primary key values for the items in your request
in the I<AttributesToGet> parameter.

If a requested item does not exist, it is not returned in the result.
Requests for nonexistent items consume the minimum read capacity units
according to the type of read. For more information, see Capacity Units
Calculations in the I<Amazon DynamoDB Developer Guide>.











=head2 BatchWriteItem()

  Arguments described in: L<Paws::DynamoDB::BatchWriteItem>

  Returns: L<Paws::DynamoDB::BatchWriteItemOutput>

  

The I<BatchWriteItem> operation puts or deletes multiple items in one
or more tables. A single call to I<BatchWriteItem> can write up to 16
MB of data, which can comprise as many as 25 put or delete requests.
Individual items to be written can be as large as 400 KB.

The individual I<PutItem> and I<DeleteItem> operations specified in
I<BatchWriteItem> are atomic; however I<BatchWriteItem> as a whole is
not. If any requested operations fail because the table's provisioned
throughput is exceeded or an internal processing failure occurs, the
failed operations are returned in the I<UnprocessedItems> response
parameter. You can investigate and optionally resend the requests.
Typically, you would call I<BatchWriteItem> in a loop. Each iteration
would check for unprocessed items and submit a new I<BatchWriteItem>
request with those unprocessed items until all items have been
processed.

Note that if I<none> of the items can be processed due to insufficient
provisioned throughput on all of the tables in the request, then
I<BatchWriteItem> will return a
I<ProvisionedThroughputExceededException>.

If DynamoDB returns any unprocessed items, you should retry the batch
operation on those items. However, I<we strongly recommend that you use
an exponential backoff algorithm>. If you retry the batch operation
immediately, the underlying read or write requests can still fail due
to throttling on the individual tables. If you delay the batch
operation using exponential backoff, the individual requests in the
batch are much more likely to succeed.

For more information, go to Batch Operations and Error Handling in the
I<Amazon DynamoDB Developer Guide>.

With I<BatchWriteItem>, you can efficiently write or delete large
amounts of data, such as from Amazon Elastic MapReduce (EMR), or copy
data from another database into DynamoDB. In order to improve
performance with these large-scale operations, I<BatchWriteItem> does
not behave in the same way as individual I<PutItem> and I<DeleteItem>
calls would For example, you cannot specify conditions on individual
put and delete requests, and I<BatchWriteItem> does not return deleted
items in the response.

If you use a programming language that supports concurrency, such as
Java, you can use threads to write items in parallel. Your application
must include the necessary logic to manage the threads. With languages
that don't support threading, such as PHP, you must update or delete
the specified items one at a time. In both situations,
I<BatchWriteItem> provides an alternative where the API performs the
specified put and delete operations in parallel, giving you the power
of the thread pool approach without having to introduce complexity into
your application.

Parallel processing reduces latency, but each specified put and delete
request consumes the same number of write capacity units whether it is
processed in parallel or not. Delete operations on nonexistent items
consume one write capacity unit.

If one or more of the following is true, DynamoDB rejects the entire
batch write operation:

=over

=item *

One or more tables specified in the I<BatchWriteItem> request does not
exist.

=item *

Primary key attributes specified on an item in the request do not match
those in the corresponding table's primary key schema.

=item *

You try to perform multiple operations on the same item in the same
I<BatchWriteItem> request. For example, you cannot put and delete the
same item in the same I<BatchWriteItem> request.

=item *

There are more than 25 requests in the batch.

=item *

Any individual item in a batch exceeds 400 KB.

=item *

The total request size exceeds 16 MB.

=back











=head2 CreateTable()

  Arguments described in: L<Paws::DynamoDB::CreateTable>

  Returns: L<Paws::DynamoDB::CreateTableOutput>

  

The I<CreateTable> operation adds a new table to your account. In an
AWS account, table names must be unique within each region. That is,
you can have two tables with same name if you create the tables in
different regions.

I<CreateTable> is an asynchronous operation. Upon receiving a
I<CreateTable> request, DynamoDB immediately returns a response with a
I<TableStatus> of C<CREATING>. After the table is created, DynamoDB
sets the I<TableStatus> to C<ACTIVE>. You can perform read and write
operations only on an C<ACTIVE> table.

If you want to create multiple tables with secondary indexes on them,
you must create them sequentially. Only one table with secondary
indexes can be in the C<CREATING> state at any given time.

You can use the I<DescribeTable> API to check the table status.











=head2 DeleteItem()

  Arguments described in: L<Paws::DynamoDB::DeleteItem>

  Returns: L<Paws::DynamoDB::DeleteItemOutput>

  

Deletes a single item in a table by primary key. You can perform a
conditional delete operation that deletes the item if it exists, or if
it has an expected attribute value.

In addition to deleting an item, you can also return the item's
attribute values in the same operation, using the I<ReturnValues>
parameter.

Unless you specify conditions, the I<DeleteItem> is an idempotent
operation; running it multiple times on the same item or attribute does
I<not> result in an error response.

Conditional deletes are useful for deleting items only if specific
conditions are met. If those conditions are met, DynamoDB performs the
delete. Otherwise, the item is not deleted.











=head2 DeleteTable()

  Arguments described in: L<Paws::DynamoDB::DeleteTable>

  Returns: L<Paws::DynamoDB::DeleteTableOutput>

  

The I<DeleteTable> operation deletes a table and all of its items.
After a I<DeleteTable> request, the specified table is in the
C<DELETING> state until DynamoDB completes the deletion. If the table
is in the C<ACTIVE> state, you can delete it. If a table is in
C<CREATING> or C<UPDATING> states, then DynamoDB returns a
I<ResourceInUseException>. If the specified table does not exist,
DynamoDB returns a I<ResourceNotFoundException>. If table is already in
the C<DELETING> state, no error is returned.

When you delete a table, any indexes on that table are also deleted.

Use the I<DescribeTable> API to check the status of the table.











=head2 DescribeTable()

  Arguments described in: L<Paws::DynamoDB::DescribeTable>

  Returns: L<Paws::DynamoDB::DescribeTableOutput>

  

Returns information about the table, including the current status of
the table, when it was created, the primary key schema, and any indexes
on the table.











=head2 GetItem()

  Arguments described in: L<Paws::DynamoDB::GetItem>

  Returns: L<Paws::DynamoDB::GetItemOutput>

  

The I<GetItem> operation returns a set of attributes for the item with
the given primary key. If there is no matching item, I<GetItem> does
not return any data.

I<GetItem> provides an eventually consistent read by default. If your
application requires a strongly consistent read, set I<ConsistentRead>
to C<true>. Although a strongly consistent read might take more time
than an eventually consistent read, it always returns the last updated
value.











=head2 ListTables()

  Arguments described in: L<Paws::DynamoDB::ListTables>

  Returns: L<Paws::DynamoDB::ListTablesOutput>

  

Returns an array of table names associated with the current account and
endpoint. The output from I<ListTables> is paginated, with each page
returning a maximum of 100 table names.











=head2 PutItem()

  Arguments described in: L<Paws::DynamoDB::PutItem>

  Returns: L<Paws::DynamoDB::PutItemOutput>

  

Creates a new item, or replaces an old item with a new item. If an item
that has the same primary key as the new item already exists in the
specified table, the new item completely replaces the existing item.
You can perform a conditional put operation (add a new item if one with
the specified primary key doesn't exist), or replace an existing item
if it has certain attribute values.

In addition to putting an item, you can also return the item's
attribute values in the same operation, using the I<ReturnValues>
parameter.

When you add an item, the primary key attribute(s) are the only
required attributes. Attribute values cannot be null. String and Binary
type attributes must have lengths greater than zero. Set type
attributes cannot be empty. Requests with empty values will be rejected
with a I<ValidationException> exception.

You can request that I<PutItem> return either a copy of the original
item (before the update) or a copy of the updated item (after the
update). For more information, see the I<ReturnValues> description
below.

For more information about using this API, see Working with Items in
the I<Amazon DynamoDB Developer Guide>.











=head2 Query()

  Arguments described in: L<Paws::DynamoDB::Query>

  Returns: L<Paws::DynamoDB::QueryOutput>

  

A I<Query> operation directly accesses items from a table using the
table primary key, or from an index using the index key. You must
provide a specific hash key value. You can narrow the scope of the
query by using comparison operators on the range key value, or on the
index key. You can use the I<ScanIndexForward> parameter to get results
in forward or reverse order, by range key or by index key.

Queries that do not return results consume the minimum number of read
capacity units for that type of read operation.

If the total number of items meeting the query criteria exceeds the
result set size limit of 1 MB, the query stops and results are returned
to the user with I<LastEvaluatedKey> to continue the query in a
subsequent operation. Unlike a I<Scan> operation, a I<Query> operation
never returns both an empty result set and a I<LastEvaluatedKey>. The
I<LastEvaluatedKey> is only provided if the results exceed 1 MB, or if
you have used I<Limit>.

You can query a table, a local secondary index, or a global secondary
index. For a query on a table or on a local secondary index, you can
set I<ConsistentRead> to true and obtain a strongly consistent result.
Global secondary indexes support eventually consistent reads only, so
do not specify I<ConsistentRead> when querying a global secondary
index.











=head2 Scan()

  Arguments described in: L<Paws::DynamoDB::Scan>

  Returns: L<Paws::DynamoDB::ScanOutput>

  

The I<Scan> operation returns one or more items and item attributes by
accessing every item in the table. To have DynamoDB return fewer items,
you can provide a I<ScanFilter> operation.

If the total number of scanned items exceeds the maximum data set size
limit of 1 MB, the scan stops and results are returned to the user as a
I<LastEvaluatedKey> value to continue the scan in a subsequent
operation. The results also include the number of items exceeding the
limit. A scan can result in no table data meeting the filter criteria.

The result set is eventually consistent.

By default, I<Scan> operations proceed sequentially; however, for
faster performance on large tables, applications can request a parallel
I<Scan> operation by specifying the I<Segment> and I<TotalSegments>
parameters. For more information, see Parallel Scan in the I<Amazon
DynamoDB Developer Guide>.











=head2 UpdateItem()

  Arguments described in: L<Paws::DynamoDB::UpdateItem>

  Returns: L<Paws::DynamoDB::UpdateItemOutput>

  

Edits an existing item's attributes, or adds a new item to the table if
it does not already exist. You can put, delete, or add attribute
values. You can also perform a conditional update (insert a new
attribute name-value pair if it doesn't exist, or replace an existing
name-value pair if it has certain expected attribute values).

You can also return the item's attribute values in the same
I<UpdateItem> operation using the I<ReturnValues> parameter.











=head2 UpdateTable()

  Arguments described in: L<Paws::DynamoDB::UpdateTable>

  Returns: L<Paws::DynamoDB::UpdateTableOutput>

  

Updates the provisioned throughput for the given table. Setting the
throughput for a table helps you manage performance and is part of the
provisioned throughput feature of DynamoDB.

The provisioned throughput values can be upgraded or downgraded based
on the maximums and minimums listed in the Limits section in the
I<Amazon DynamoDB Developer Guide>.

The table must be in the C<ACTIVE> state for this operation to succeed.
I<UpdateTable> is an asynchronous operation; while executing the
operation, the table is in the C<UPDATING> state. While the table is in
the C<UPDATING> state, the table still has the provisioned throughput
from before the call. The new provisioned throughput setting is in
effect only when the table returns to the C<ACTIVE> state after the
I<UpdateTable> operation.

You cannot add, modify or delete indexes using I<UpdateTable>. Indexes
can only be defined at table creation time.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

