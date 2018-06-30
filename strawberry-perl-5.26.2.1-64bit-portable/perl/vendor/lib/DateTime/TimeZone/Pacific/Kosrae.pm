# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.08) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/V7b1FlgEXT/australasia.  Olson data version 2018d
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Pacific::Kosrae;

use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '2.18';

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Pacific::Kosrae::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
59958191284, #      utc_end 1900-12-31 13:08:04 (Mon)
DateTime::TimeZone::NEG_INFINITY, #  local_start
59958230400, #    local_end 1901-01-01 00:00:00 (Tue)
39116,
0,
'LMT',
    ],
    [
59958191284, #    utc_start 1900-12-31 13:08:04 (Mon)
62127694800, #      utc_end 1969-09-30 13:00:00 (Tue)
59958230884, #  local_start 1901-01-01 00:08:04 (Tue)
62127734400, #    local_end 1969-10-01 00:00:00 (Wed)
39600,
0,
'+11',
    ],
    [
62127694800, #    utc_start 1969-09-30 13:00:00 (Tue)
63050788800, #      utc_end 1998-12-31 12:00:00 (Thu)
62127738000, #  local_start 1969-10-01 01:00:00 (Wed)
63050832000, #    local_end 1999-01-01 00:00:00 (Fri)
43200,
0,
'+12',
    ],
    [
63050788800, #    utc_start 1998-12-31 12:00:00 (Thu)
DateTime::TimeZone::INFINITY, #      utc_end
63050828400, #  local_start 1998-12-31 23:00:00 (Thu)
DateTime::TimeZone::INFINITY, #    local_end
39600,
0,
'+11',
    ],
];

sub olson_version {'2018d'}

sub has_dst_changes {0}

sub _max_year {2028}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}



1;

