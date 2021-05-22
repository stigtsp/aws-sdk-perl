
package Paws::LocationService::DeletePlaceIndex;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IndexName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePlaceIndex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/places/v0/indexes/{IndexName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::DeletePlaceIndexResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::DeletePlaceIndex - Arguments for method DeletePlaceIndex on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePlaceIndex on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method DeletePlaceIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePlaceIndex.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $DeletePlaceIndexResponse = $geo->DeletePlaceIndex(
      IndexName => 'MyResourceName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/DeletePlaceIndex>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexName => Str

The name of the Place index resource to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePlaceIndex in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

