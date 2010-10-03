package Net::isoHunt::Response::Image;

# ABSTRACT: Provides accessors to image fields

use Moose;

has [
    qw{
        title
        url
        link
      }
    ] => (
    is  => 'ro',
    isa => 'Str',
);

has [
    qw{
        width
        height
      }
    ] => (
    is  => 'ro',
    isa => 'Int',
);

__PACKAGE__->meta()->make_immutable();

no Moose;

1;

__END__

=attr C<title>

=attr C<url>

=attr C<link>

=attr C<width>

=attr C<height>
