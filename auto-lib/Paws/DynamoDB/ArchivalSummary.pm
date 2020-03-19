# Generated by default/object.tt
package Paws::DynamoDB::ArchivalSummary;
  use Moose;
  has ArchivalBackupArn => (is => 'ro', isa => 'Str');
  has ArchivalDateTime => (is => 'ro', isa => 'Str');
  has ArchivalReason => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ArchivalSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ArchivalSummary object:

  $service_obj->Method(Att1 => { ArchivalBackupArn => $value, ..., ArchivalReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ArchivalSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ArchivalBackupArn

=head1 DESCRIPTION

Contains details of a table archival operation.

=head1 ATTRIBUTES


=head2 ArchivalBackupArn => Str

The Amazon Resource Name (ARN) of the backup the table was archived to,
when applicable in the archival reason. If you wish to restore this
backup to the same table name, you will need to delete the original
table.


=head2 ArchivalDateTime => Str

The date and time when table archival was initiated by DynamoDB, in
UNIX epoch time format.


=head2 ArchivalReason => Str

The reason DynamoDB archived the table. Currently, the only possible
value is:

=over

=item *

C<INACCESSIBLE_ENCRYPTION_CREDENTIALS> - The table was archived due to
the table's AWS KMS key being inaccessible for more than seven days. An
On-Demand backup was created at the archival time.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

