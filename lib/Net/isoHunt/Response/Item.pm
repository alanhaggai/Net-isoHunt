package Net::isoHunt::Response::Item;

# ABSTRACT: Provides accessors to item fields

use Moose;

has [
    qw{
        title
        link
        enclosure_url
        tracker
        tracker_url
        kws
        exempts
        category
        original_site
        original_link
        size
        hash
        pub_date
      }
    ] => (
    is  => 'ro',
    isa => 'Str',
);

has [
    qw{
        guid
        length
        files
        seeds
        leechers
        downloads
        votes
        comments
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

=attr C<link>

=attr C<guid>

=attr C<enclosure_url>

=attr C<length>

=attr C<tracker>

=attr C<tracker_url>

=attr C<kws>

=attr C<exempts>

=attr C<category>

=attr C<original_site>

=attr C<original_link>

=attr C<size>

=attr C<files>

=attr C<seeds>

=attr C<leechers>

=attr C<downloads>

=attr C<votes>

=attr C<comments>

=attr C<hash>

=attr C<pub_date>
