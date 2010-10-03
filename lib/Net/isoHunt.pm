package Net::isoHunt;

# ABSTRACT: Access isohunt.com from Perl

use Moose;

use Net::isoHunt::Request;
use Net::isoHunt::Response;
use Net::isoHunt::Response::Image;
use Net::isoHunt::Response::Item;

sub prepare_request {
    my $self = shift;
    return Net::isoHunt::Request->new(@_);
}

__PACKAGE__->meta()->make_immutable();

no Moose;

1;

__END__

=head1 SYNOPSIS

    use Net::isoHunt;

    my $ih = Net::isoHunt->new();

    my $ih_request = $ih->prepare_request( { 'ihq' => 'ubuntu' } );
    $ih_request->start(21);
    $ih_request->rows(20);
    $ih_request->sort('seeds');

    my $ih_response = $ih_request->execute();

    print 'Title: ',       $ih_response->title(),       "\n";
    print 'Description: ', $ih_response->description(), "\n";

    my $image = $ih_response->image();
    print 'Image title: ', $image->title(), "\n";
    print 'Image URL: ',   $image->url(),   "\n";

    my @items = @{ $ih_response->items() };
    my $item  = shift @items;

=attr C<new>

Constructs and returns a L<Net::isoHunt> object.

=method C<prepare_request>

Returns a L<Net::isoHunt::Request> object based on the arguments passed. Accepts
a hash reference. Valid arguments are listed in L<Net::isoHunt::Request>. C<ihq>
is required.
