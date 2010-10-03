package Net::isoHunt::Response;

# ABSTRACT: Provides accessors to various response fields

use Moose;

has [
    qw{
        title
        link
        description
        language
        category
        last_build_date
        pubDate
      }
    ] => (
    is  => 'ro',
    isa => 'Str',
);

has [
    qw{
        max_results
        ttl
        total_results
        censored
      }
    ] => (
    is  => 'ro',
    isa => 'Int',
);

has 'image' => (
    is  => 'ro',
    isa => 'Net::isoHunt::Response::Image',
);

has 'items' => (
    is  => 'ro',
    isa => 'ArrayRef[Net::isoHunt::Response::Item]',
);

__PACKAGE__->meta()->make_immutable();

no Moose;

1;

__END__

=attr C<title>

=attr C<link>

=attr C<description>

=attr C<language>

=attr C<category>

=attr C<max_results>

=attr C<ttl>

=attr C<image>

Returns a L<Net::isoHunt::Response::Image> object.

=attr C<last_build_date>

=attr C<pub_date>

=attr C<total_results>

=attr C<censored>

=attr C<items>

Returns an array reference to L<Net::isoHunt::Response::Item> objects.
