
package Paws::Athena::GetQueryResultsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResultSet => (is => 'ro', isa => 'Paws::Athena::ResultSet');
  has UpdateCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetQueryResultsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token generated by the Athena service that specifies where to
continue pagination if a previous request was truncated. To obtain the
next set of pages, pass in the C<NextToken> from the response object of
the previous page call.


=head2 ResultSet => L<Paws::Athena::ResultSet>

The results of the query execution.


=head2 UpdateCount => Int

The number of rows inserted with a CREATE TABLE AS SELECT statement.


=head2 _request_id => Str


=cut

1;