# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.08) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/V7b1FlgEXT/australasia.  Olson data version 2018d
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Indian::Christmas;

use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '2.18';

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Indian::Christmas::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
59771581028, #      utc_end 1895-01-31 16:57:08 (Thu)
DateTime::TimeZone::NEG_INFINITY, #  local_start
59771606400, #    local_end 1895-02-01 00:00:00 (Fri)
25372,
0,
'LMT',
    ],
    [
59771581028, #    utc_start 1895-01-31 16:57:08 (Thu)
DateTime::TimeZone::INFINITY, #      utc_end
59771606228, #  local_start 1895-01-31 23:57:08 (Thu)
DateTime::TimeZone::INFINITY, #    local_end
25200,
0,
'+07',
    ],
];

sub olson_version {'2018d'}

sub has_dst_changes {0}

sub _max_year {2028}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}



1;

