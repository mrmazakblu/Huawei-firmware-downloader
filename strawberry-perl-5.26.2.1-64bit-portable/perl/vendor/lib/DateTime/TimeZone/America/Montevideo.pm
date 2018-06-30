# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.08) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/V7b1FlgEXT/southamerica.  Olson data version 2018d
#
# Do not edit this file directly.
#
package DateTime::TimeZone::America::Montevideo;

use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '2.18';

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::America::Montevideo::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
60192992691, #      utc_end 1908-06-10 03:44:51 (Wed)
DateTime::TimeZone::NEG_INFINITY, #  local_start
60192979200, #    local_end 1908-06-10 00:00:00 (Wed)
-13491,
0,
'LMT',
    ],
    [
60192992691, #    utc_start 1908-06-10 03:44:51 (Wed)
60568227891, #      utc_end 1920-05-01 03:44:51 (Sat)
60192979200, #  local_start 1908-06-10 00:00:00 (Wed)
60568214400, #    local_end 1920-05-01 00:00:00 (Sat)
-13491,
0,
'MMT',
    ],
    [
60568227891, #    utc_start 1920-05-01 03:44:51 (Sat)
60676056000, #      utc_end 1923-10-01 04:00:00 (Mon)
60568213491, #  local_start 1920-04-30 23:44:51 (Fri)
60676041600, #    local_end 1923-10-01 00:00:00 (Mon)
-14400,
0,
'-04',
    ],
    [
60676056000, #    utc_start 1923-10-01 04:00:00 (Mon)
60691863600, #      utc_end 1924-04-01 03:00:00 (Tue)
60676045200, #  local_start 1923-10-01 01:00:00 (Mon)
60691852800, #    local_end 1924-04-01 00:00:00 (Tue)
-10800,
1,
'-03',
    ],
    [
60691863600, #    utc_start 1924-04-01 03:00:00 (Tue)
60707676600, #      utc_end 1924-10-01 03:30:00 (Wed)
60691851000, #  local_start 1924-03-31 23:30:00 (Mon)
60707664000, #    local_end 1924-10-01 00:00:00 (Wed)
-12600,
0,
'-0330',
    ],
    [
60707676600, #    utc_start 1924-10-01 03:30:00 (Wed)
60723399600, #      utc_end 1925-04-01 03:00:00 (Wed)
60707665800, #  local_start 1924-10-01 00:30:00 (Wed)
60723388800, #    local_end 1925-04-01 00:00:00 (Wed)
-10800,
1,
'-03',
    ],
    [
60723399600, #    utc_start 1925-04-01 03:00:00 (Wed)
60739212600, #      utc_end 1925-10-01 03:30:00 (Thu)
60723387000, #  local_start 1925-03-31 23:30:00 (Tue)
60739200000, #    local_end 1925-10-01 00:00:00 (Thu)
-12600,
0,
'-0330',
    ],
    [
60739212600, #    utc_start 1925-10-01 03:30:00 (Thu)
60754935600, #      utc_end 1926-04-01 03:00:00 (Thu)
60739201800, #  local_start 1925-10-01 00:30:00 (Thu)
60754924800, #    local_end 1926-04-01 00:00:00 (Thu)
-10800,
1,
'-03',
    ],
    [
60754935600, #    utc_start 1926-04-01 03:00:00 (Thu)
60994092600, #      utc_end 1933-10-29 03:30:00 (Sun)
60754923000, #  local_start 1926-03-31 23:30:00 (Wed)
60994080000, #    local_end 1933-10-29 00:00:00 (Sun)
-12600,
0,
'-0330',
    ],
    [
60994092600, #    utc_start 1933-10-29 03:30:00 (Sun)
61007396400, #      utc_end 1934-04-01 03:00:00 (Sun)
60994081800, #  local_start 1933-10-29 00:30:00 (Sun)
61007385600, #    local_end 1934-04-01 00:00:00 (Sun)
-10800,
1,
'-03',
    ],
    [
61007396400, #    utc_start 1934-04-01 03:00:00 (Sun)
61025542200, #      utc_end 1934-10-28 03:30:00 (Sun)
61007383800, #  local_start 1934-03-31 23:30:00 (Sat)
61025529600, #    local_end 1934-10-28 00:00:00 (Sun)
-12600,
0,
'-0330',
    ],
    [
61025542200, #    utc_start 1934-10-28 03:30:00 (Sun)
61038846000, #      utc_end 1935-03-31 03:00:00 (Sun)
61025531400, #  local_start 1934-10-28 00:30:00 (Sun)
61038835200, #    local_end 1935-03-31 00:00:00 (Sun)
-10800,
1,
'-03',
    ],
    [
61038846000, #    utc_start 1935-03-31 03:00:00 (Sun)
61056991800, #      utc_end 1935-10-27 03:30:00 (Sun)
61038833400, #  local_start 1935-03-30 23:30:00 (Sat)
61056979200, #    local_end 1935-10-27 00:00:00 (Sun)
-12600,
0,
'-0330',
    ],
    [
61056991800, #    utc_start 1935-10-27 03:30:00 (Sun)
61070295600, #      utc_end 1936-03-29 03:00:00 (Sun)
61056981000, #  local_start 1935-10-27 00:30:00 (Sun)
61070284800, #    local_end 1936-03-29 00:00:00 (Sun)
-10800,
1,
'-03',
    ],
    [
61070295600, #    utc_start 1936-03-29 03:00:00 (Sun)
61088441400, #      utc_end 1936-10-25 03:30:00 (Sun)
61070283000, #  local_start 1936-03-28 23:30:00 (Sat)
61088428800, #    local_end 1936-10-25 00:00:00 (Sun)
-12600,
0,
'-0330',
    ],
    [
61088441400, #    utc_start 1936-10-25 03:30:00 (Sun)
61101745200, #      utc_end 1937-03-28 03:00:00 (Sun)
61088430600, #  local_start 1936-10-25 00:30:00 (Sun)
61101734400, #    local_end 1937-03-28 00:00:00 (Sun)
-10800,
1,
'-03',
    ],
    [
61101745200, #    utc_start 1937-03-28 03:00:00 (Sun)
61120495800, #      utc_end 1937-10-31 03:30:00 (Sun)
61101732600, #  local_start 1937-03-27 23:30:00 (Sat)
61120483200, #    local_end 1937-10-31 00:00:00 (Sun)
-12600,
0,
'-0330',
    ],
    [
61120495800, #    utc_start 1937-10-31 03:30:00 (Sun)
61133194800, #      utc_end 1938-03-27 03:00:00 (Sun)
61120485000, #  local_start 1937-10-31 00:30:00 (Sun)
61133184000, #    local_end 1938-03-27 00:00:00 (Sun)
-10800,
1,
'-03',
    ],
    [
61133194800, #    utc_start 1938-03-27 03:00:00 (Sun)
61151945400, #      utc_end 1938-10-30 03:30:00 (Sun)
61133182200, #  local_start 1938-03-26 23:30:00 (Sat)
61151932800, #    local_end 1938-10-30 00:00:00 (Sun)
-12600,
0,
'-0330',
    ],
    [
61151945400, #    utc_start 1938-10-30 03:30:00 (Sun)
61164644400, #      utc_end 1939-03-26 03:00:00 (Sun)
61151934600, #  local_start 1938-10-30 00:30:00 (Sun)
61164633600, #    local_end 1939-03-26 00:00:00 (Sun)
-10800,
1,
'-03',
    ],
    [
61164644400, #    utc_start 1939-03-26 03:00:00 (Sun)
61180975800, #      utc_end 1939-10-01 03:30:00 (Sun)
61164631800, #  local_start 1939-03-25 23:30:00 (Sat)
61180963200, #    local_end 1939-10-01 00:00:00 (Sun)
-12600,
0,
'-0330',
    ],
    [
61180975800, #    utc_start 1939-10-01 03:30:00 (Sun)
61196698800, #      utc_end 1940-03-31 03:00:00 (Sun)
61180965000, #  local_start 1939-10-01 00:30:00 (Sun)
61196688000, #    local_end 1940-03-31 00:00:00 (Sun)
-10800,
1,
'-03',
    ],
    [
61196698800, #    utc_start 1940-03-31 03:00:00 (Sun)
61214844600, #      utc_end 1940-10-27 03:30:00 (Sun)
61196686200, #  local_start 1940-03-30 23:30:00 (Sat)
61214832000, #    local_end 1940-10-27 00:00:00 (Sun)
-12600,
0,
'-0330',
    ],
    [
61214844600, #    utc_start 1940-10-27 03:30:00 (Sun)
61228148400, #      utc_end 1941-03-30 03:00:00 (Sun)
61214833800, #  local_start 1940-10-27 00:30:00 (Sun)
61228137600, #    local_end 1941-03-30 00:00:00 (Sun)
-10800,
1,
'-03',
    ],
    [
61228148400, #    utc_start 1941-03-30 03:00:00 (Sun)
61238863800, #      utc_end 1941-08-01 03:30:00 (Fri)
61228135800, #  local_start 1941-03-29 23:30:00 (Sat)
61238851200, #    local_end 1941-08-01 00:00:00 (Fri)
-12600,
0,
'-0330',
    ],
    [
61238863800, #    utc_start 1941-08-01 03:30:00 (Fri)
61282062000, #      utc_end 1942-12-14 03:00:00 (Mon)
61238853000, #  local_start 1941-08-01 00:30:00 (Fri)
61282051200, #    local_end 1942-12-14 00:00:00 (Mon)
-10800,
1,
'-03',
    ],
    [
61282062000, #    utc_start 1942-12-14 03:00:00 (Mon)
61289836200, #      utc_end 1943-03-14 02:30:00 (Sun)
61282053000, #  local_start 1942-12-14 00:30:00 (Mon)
61289827200, #    local_end 1943-03-14 00:00:00 (Sun)
-9000,
1,
'-0230',
    ],
    [
61289836200, #    utc_start 1943-03-14 02:30:00 (Sun)
61800894000, #      utc_end 1959-05-24 03:00:00 (Sun)
61289825400, #  local_start 1943-03-13 23:30:00 (Sat)
61800883200, #    local_end 1959-05-24 00:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
61800894000, #    utc_start 1959-05-24 03:00:00 (Sun)
61816012200, #      utc_end 1959-11-15 02:30:00 (Sun)
61800885000, #  local_start 1959-05-24 00:30:00 (Sun)
61816003200, #    local_end 1959-11-15 00:00:00 (Sun)
-9000,
1,
'-0230',
    ],
    [
61816012200, #    utc_start 1959-11-15 02:30:00 (Sun)
61820074800, #      utc_end 1960-01-01 03:00:00 (Fri)
61816001400, #  local_start 1959-11-14 23:30:00 (Sat)
61820064000, #    local_end 1960-01-01 00:00:00 (Fri)
-10800,
0,
'-03',
    ],
    [
61820074800, #    utc_start 1960-01-01 03:00:00 (Fri)
61821457200, #      utc_end 1960-01-17 03:00:00 (Sun)
61820064000, #  local_start 1960-01-01 00:00:00 (Fri)
61821446400, #    local_end 1960-01-17 00:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
61821457200, #    utc_start 1960-01-17 03:00:00 (Sun)
61825687200, #      utc_end 1960-03-06 02:00:00 (Sun)
61821450000, #  local_start 1960-01-17 01:00:00 (Sun)
61825680000, #    local_end 1960-03-06 00:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
61825687200, #    utc_start 1960-03-06 02:00:00 (Sun)
61985962800, #      utc_end 1965-04-04 03:00:00 (Sun)
61825676400, #  local_start 1960-03-05 23:00:00 (Sat)
61985952000, #    local_end 1965-04-04 00:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
61985962800, #    utc_start 1965-04-04 03:00:00 (Sun)
62001079200, #      utc_end 1965-09-26 02:00:00 (Sun)
61985955600, #  local_start 1965-04-04 01:00:00 (Sun)
62001072000, #    local_end 1965-09-26 00:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
62001079200, #    utc_start 1965-09-26 02:00:00 (Sun)
62072535600, #      utc_end 1968-01-01 03:00:00 (Mon)
62001068400, #  local_start 1965-09-25 23:00:00 (Sat)
62072524800, #    local_end 1968-01-01 00:00:00 (Mon)
-10800,
0,
'-03',
    ],
    [
62072535600, #    utc_start 1968-01-01 03:00:00 (Mon)
62085236400, #      utc_end 1968-05-27 03:00:00 (Mon)
62072524800, #  local_start 1968-01-01 00:00:00 (Mon)
62085225600, #    local_end 1968-05-27 00:00:00 (Mon)
-10800,
0,
'-03',
    ],
    [
62085236400, #    utc_start 1968-05-27 03:00:00 (Mon)
62101477800, #      utc_end 1968-12-01 02:30:00 (Sun)
62085227400, #  local_start 1968-05-27 00:30:00 (Mon)
62101468800, #    local_end 1968-12-01 00:00:00 (Sun)
-9000,
1,
'-0230',
    ],
    [
62101477800, #    utc_start 1968-12-01 02:30:00 (Sun)
62135694000, #      utc_end 1970-01-01 03:00:00 (Thu)
62101467000, #  local_start 1968-11-30 23:30:00 (Sat)
62135683200, #    local_end 1970-01-01 00:00:00 (Thu)
-10800,
0,
'-03',
    ],
    [
62135694000, #    utc_start 1970-01-01 03:00:00 (Thu)
62145543600, #      utc_end 1970-04-25 03:00:00 (Sat)
62135683200, #  local_start 1970-01-01 00:00:00 (Thu)
62145532800, #    local_end 1970-04-25 00:00:00 (Sat)
-10800,
0,
'-03',
    ],
    [
62145543600, #    utc_start 1970-04-25 03:00:00 (Sat)
62149860000, #      utc_end 1970-06-14 02:00:00 (Sun)
62145536400, #  local_start 1970-04-25 01:00:00 (Sat)
62149852800, #    local_end 1970-06-14 00:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
62149860000, #    utc_start 1970-06-14 02:00:00 (Sun)
62208529200, #      utc_end 1972-04-23 03:00:00 (Sun)
62149849200, #  local_start 1970-06-13 23:00:00 (Sat)
62208518400, #    local_end 1972-04-23 00:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
62208529200, #    utc_start 1972-04-23 03:00:00 (Sun)
62215783200, #      utc_end 1972-07-16 02:00:00 (Sun)
62208522000, #  local_start 1972-04-23 01:00:00 (Sun)
62215776000, #    local_end 1972-07-16 00:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
62215783200, #    utc_start 1972-07-16 02:00:00 (Sun)
62261924400, #      utc_end 1974-01-01 03:00:00 (Tue)
62215772400, #  local_start 1972-07-15 23:00:00 (Sat)
62261913600, #    local_end 1974-01-01 00:00:00 (Tue)
-10800,
0,
'-03',
    ],
    [
62261924400, #    utc_start 1974-01-01 03:00:00 (Tue)
62262961200, #      utc_end 1974-01-13 03:00:00 (Sun)
62261913600, #  local_start 1974-01-01 00:00:00 (Tue)
62262950400, #    local_end 1974-01-13 00:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
62262961200, #    utc_start 1974-01-13 03:00:00 (Sun)
62267794200, #      utc_end 1974-03-10 01:30:00 (Sun)
62262955800, #  local_start 1974-01-13 01:30:00 (Sun)
62267788800, #    local_end 1974-03-10 00:00:00 (Sun)
-5400,
1,
'-0130',
    ],
    [
62267794200, #    utc_start 1974-03-10 01:30:00 (Sun)
62282917800, #      utc_end 1974-09-01 02:30:00 (Sun)
62267785200, #  local_start 1974-03-09 23:00:00 (Sat)
62282908800, #    local_end 1974-09-01 00:00:00 (Sun)
-9000,
1,
'-0230',
    ],
    [
62282917800, #    utc_start 1974-09-01 02:30:00 (Sun)
62292596400, #      utc_end 1974-12-22 03:00:00 (Sun)
62282907000, #  local_start 1974-08-31 23:30:00 (Sat)
62292585600, #    local_end 1974-12-22 00:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
62292596400, #    utc_start 1974-12-22 03:00:00 (Sun)
62301060000, #      utc_end 1975-03-30 02:00:00 (Sun)
62292589200, #  local_start 1974-12-22 01:00:00 (Sun)
62301052800, #    local_end 1975-03-30 00:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
62301060000, #    utc_start 1975-03-30 02:00:00 (Sun)
62355495600, #      utc_end 1976-12-19 03:00:00 (Sun)
62301049200, #  local_start 1975-03-29 23:00:00 (Sat)
62355484800, #    local_end 1976-12-19 00:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
62355495600, #    utc_start 1976-12-19 03:00:00 (Sun)
62362144800, #      utc_end 1977-03-06 02:00:00 (Sun)
62355488400, #  local_start 1976-12-19 01:00:00 (Sun)
62362137600, #    local_end 1977-03-06 00:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
62362144800, #    utc_start 1977-03-06 02:00:00 (Sun)
62385735600, #      utc_end 1977-12-04 03:00:00 (Sun)
62362134000, #  local_start 1977-03-05 23:00:00 (Sat)
62385724800, #    local_end 1977-12-04 00:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
62385735600, #    utc_start 1977-12-04 03:00:00 (Sun)
62393594400, #      utc_end 1978-03-05 02:00:00 (Sun)
62385728400, #  local_start 1977-12-04 01:00:00 (Sun)
62393587200, #    local_end 1978-03-05 00:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
62393594400, #    utc_start 1978-03-05 02:00:00 (Sun)
62418394800, #      utc_end 1978-12-17 03:00:00 (Sun)
62393583600, #  local_start 1978-03-04 23:00:00 (Sat)
62418384000, #    local_end 1978-12-17 00:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
62418394800, #    utc_start 1978-12-17 03:00:00 (Sun)
62425044000, #      utc_end 1979-03-04 02:00:00 (Sun)
62418387600, #  local_start 1978-12-17 01:00:00 (Sun)
62425036800, #    local_end 1979-03-04 00:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
62425044000, #    utc_start 1979-03-04 02:00:00 (Sun)
62429886000, #      utc_end 1979-04-29 03:00:00 (Sun)
62425033200, #  local_start 1979-03-03 23:00:00 (Sat)
62429875200, #    local_end 1979-04-29 00:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
62429886000, #    utc_start 1979-04-29 03:00:00 (Sun)
62457703200, #      utc_end 1980-03-16 02:00:00 (Sun)
62429878800, #  local_start 1979-04-29 01:00:00 (Sun)
62457696000, #    local_end 1980-03-16 00:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
62457703200, #    utc_start 1980-03-16 02:00:00 (Sun)
62702132400, #      utc_end 1987-12-14 03:00:00 (Mon)
62457692400, #  local_start 1980-03-15 23:00:00 (Sat)
62702121600, #    local_end 1987-12-14 00:00:00 (Mon)
-10800,
0,
'-03',
    ],
    [
62702132400, #    utc_start 1987-12-14 03:00:00 (Mon)
62708695200, #      utc_end 1988-02-28 02:00:00 (Sun)
62702125200, #  local_start 1987-12-14 01:00:00 (Mon)
62708688000, #    local_end 1988-02-28 00:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
62708695200, #    utc_start 1988-02-28 02:00:00 (Sun)
62733495600, #      utc_end 1988-12-11 03:00:00 (Sun)
62708684400, #  local_start 1988-02-27 23:00:00 (Sat)
62733484800, #    local_end 1988-12-11 00:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
62733495600, #    utc_start 1988-12-11 03:00:00 (Sun)
62740749600, #      utc_end 1989-03-05 02:00:00 (Sun)
62733488400, #  local_start 1988-12-11 01:00:00 (Sun)
62740742400, #    local_end 1989-03-05 00:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
62740749600, #    utc_start 1989-03-05 02:00:00 (Sun)
62761316400, #      utc_end 1989-10-29 03:00:00 (Sun)
62740738800, #  local_start 1989-03-04 23:00:00 (Sat)
62761305600, #    local_end 1989-10-29 00:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
62761316400, #    utc_start 1989-10-29 03:00:00 (Sun)
62771594400, #      utc_end 1990-02-25 02:00:00 (Sun)
62761309200, #  local_start 1989-10-29 01:00:00 (Sun)
62771587200, #    local_end 1990-02-25 00:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
62771594400, #    utc_start 1990-02-25 02:00:00 (Sun)
62792161200, #      utc_end 1990-10-21 03:00:00 (Sun)
62771583600, #  local_start 1990-02-24 23:00:00 (Sat)
62792150400, #    local_end 1990-10-21 00:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
62792161200, #    utc_start 1990-10-21 03:00:00 (Sun)
62803648800, #      utc_end 1991-03-03 02:00:00 (Sun)
62792154000, #  local_start 1990-10-21 01:00:00 (Sun)
62803641600, #    local_end 1991-03-03 00:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
62803648800, #    utc_start 1991-03-03 02:00:00 (Sun)
62824215600, #      utc_end 1991-10-27 03:00:00 (Sun)
62803638000, #  local_start 1991-03-02 23:00:00 (Sat)
62824204800, #    local_end 1991-10-27 00:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
62824215600, #    utc_start 1991-10-27 03:00:00 (Sun)
62835098400, #      utc_end 1992-03-01 02:00:00 (Sun)
62824208400, #  local_start 1991-10-27 01:00:00 (Sun)
62835091200, #    local_end 1992-03-01 00:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
62835098400, #    utc_start 1992-03-01 02:00:00 (Sun)
62855060400, #      utc_end 1992-10-18 03:00:00 (Sun)
62835087600, #  local_start 1992-02-29 23:00:00 (Sat)
62855049600, #    local_end 1992-10-18 00:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
62855060400, #    utc_start 1992-10-18 03:00:00 (Sun)
62866548000, #      utc_end 1993-02-28 02:00:00 (Sun)
62855053200, #  local_start 1992-10-18 01:00:00 (Sun)
62866540800, #    local_end 1993-02-28 00:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
62866548000, #    utc_start 1993-02-28 02:00:00 (Sun)
63231246000, #      utc_end 2004-09-19 03:00:00 (Sun)
62866537200, #  local_start 1993-02-27 23:00:00 (Sat)
63231235200, #    local_end 2004-09-19 00:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
63231246000, #    utc_start 2004-09-19 03:00:00 (Sun)
63247579200, #      utc_end 2005-03-27 04:00:00 (Sun)
63231238800, #  local_start 2004-09-19 01:00:00 (Sun)
63247572000, #    local_end 2005-03-27 02:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
63247579200, #    utc_start 2005-03-27 04:00:00 (Sun)
63264517200, #      utc_end 2005-10-09 05:00:00 (Sun)
63247568400, #  local_start 2005-03-27 01:00:00 (Sun)
63264506400, #    local_end 2005-10-09 02:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
63264517200, #    utc_start 2005-10-09 05:00:00 (Sun)
63277819200, #      utc_end 2006-03-12 04:00:00 (Sun)
63264510000, #  local_start 2005-10-09 03:00:00 (Sun)
63277812000, #    local_end 2006-03-12 02:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
63277819200, #    utc_start 2006-03-12 04:00:00 (Sun)
63295362000, #      utc_end 2006-10-01 05:00:00 (Sun)
63277808400, #  local_start 2006-03-12 01:00:00 (Sun)
63295351200, #    local_end 2006-10-01 02:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
63295362000, #    utc_start 2006-10-01 05:00:00 (Sun)
63309268800, #      utc_end 2007-03-11 04:00:00 (Sun)
63295354800, #  local_start 2006-10-01 03:00:00 (Sun)
63309261600, #    local_end 2007-03-11 02:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
63309268800, #    utc_start 2007-03-11 04:00:00 (Sun)
63327416400, #      utc_end 2007-10-07 05:00:00 (Sun)
63309258000, #  local_start 2007-03-11 01:00:00 (Sun)
63327405600, #    local_end 2007-10-07 02:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
63327416400, #    utc_start 2007-10-07 05:00:00 (Sun)
63340718400, #      utc_end 2008-03-09 04:00:00 (Sun)
63327409200, #  local_start 2007-10-07 03:00:00 (Sun)
63340711200, #    local_end 2008-03-09 02:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
63340718400, #    utc_start 2008-03-09 04:00:00 (Sun)
63358866000, #      utc_end 2008-10-05 05:00:00 (Sun)
63340707600, #  local_start 2008-03-09 01:00:00 (Sun)
63358855200, #    local_end 2008-10-05 02:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
63358866000, #    utc_start 2008-10-05 05:00:00 (Sun)
63372168000, #      utc_end 2009-03-08 04:00:00 (Sun)
63358858800, #  local_start 2008-10-05 03:00:00 (Sun)
63372160800, #    local_end 2009-03-08 02:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
63372168000, #    utc_start 2009-03-08 04:00:00 (Sun)
63390315600, #      utc_end 2009-10-04 05:00:00 (Sun)
63372157200, #  local_start 2009-03-08 01:00:00 (Sun)
63390304800, #    local_end 2009-10-04 02:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
63390315600, #    utc_start 2009-10-04 05:00:00 (Sun)
63404222400, #      utc_end 2010-03-14 04:00:00 (Sun)
63390308400, #  local_start 2009-10-04 03:00:00 (Sun)
63404215200, #    local_end 2010-03-14 02:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
63404222400, #    utc_start 2010-03-14 04:00:00 (Sun)
63421765200, #      utc_end 2010-10-03 05:00:00 (Sun)
63404211600, #  local_start 2010-03-14 01:00:00 (Sun)
63421754400, #    local_end 2010-10-03 02:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
63421765200, #    utc_start 2010-10-03 05:00:00 (Sun)
63435672000, #      utc_end 2011-03-13 04:00:00 (Sun)
63421758000, #  local_start 2010-10-03 03:00:00 (Sun)
63435664800, #    local_end 2011-03-13 02:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
63435672000, #    utc_start 2011-03-13 04:00:00 (Sun)
63453214800, #      utc_end 2011-10-02 05:00:00 (Sun)
63435661200, #  local_start 2011-03-13 01:00:00 (Sun)
63453204000, #    local_end 2011-10-02 02:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
63453214800, #    utc_start 2011-10-02 05:00:00 (Sun)
63467121600, #      utc_end 2012-03-11 04:00:00 (Sun)
63453207600, #  local_start 2011-10-02 03:00:00 (Sun)
63467114400, #    local_end 2012-03-11 02:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
63467121600, #    utc_start 2012-03-11 04:00:00 (Sun)
63485269200, #      utc_end 2012-10-07 05:00:00 (Sun)
63467110800, #  local_start 2012-03-11 01:00:00 (Sun)
63485258400, #    local_end 2012-10-07 02:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
63485269200, #    utc_start 2012-10-07 05:00:00 (Sun)
63498571200, #      utc_end 2013-03-10 04:00:00 (Sun)
63485262000, #  local_start 2012-10-07 03:00:00 (Sun)
63498564000, #    local_end 2013-03-10 02:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
63498571200, #    utc_start 2013-03-10 04:00:00 (Sun)
63516718800, #      utc_end 2013-10-06 05:00:00 (Sun)
63498560400, #  local_start 2013-03-10 01:00:00 (Sun)
63516708000, #    local_end 2013-10-06 02:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
63516718800, #    utc_start 2013-10-06 05:00:00 (Sun)
63530020800, #      utc_end 2014-03-09 04:00:00 (Sun)
63516711600, #  local_start 2013-10-06 03:00:00 (Sun)
63530013600, #    local_end 2014-03-09 02:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
63530020800, #    utc_start 2014-03-09 04:00:00 (Sun)
63548168400, #      utc_end 2014-10-05 05:00:00 (Sun)
63530010000, #  local_start 2014-03-09 01:00:00 (Sun)
63548157600, #    local_end 2014-10-05 02:00:00 (Sun)
-10800,
0,
'-03',
    ],
    [
63548168400, #    utc_start 2014-10-05 05:00:00 (Sun)
63561470400, #      utc_end 2015-03-08 04:00:00 (Sun)
63548161200, #  local_start 2014-10-05 03:00:00 (Sun)
63561463200, #    local_end 2015-03-08 02:00:00 (Sun)
-7200,
1,
'-02',
    ],
    [
63561470400, #    utc_start 2015-03-08 04:00:00 (Sun)
DateTime::TimeZone::INFINITY, #      utc_end
63561459600, #  local_start 2015-03-08 01:00:00 (Sun)
DateTime::TimeZone::INFINITY, #    local_end
-10800,
0,
'-03',
    ],
];

sub olson_version {'2018d'}

sub has_dst_changes {43}

sub _max_year {2028}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}



1;

