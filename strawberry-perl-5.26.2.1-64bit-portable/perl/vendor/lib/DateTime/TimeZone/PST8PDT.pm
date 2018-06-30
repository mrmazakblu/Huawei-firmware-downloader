# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.08) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/V7b1FlgEXT/northamerica.  Olson data version 2018d
#
# Do not edit this file directly.
#
package DateTime::TimeZone::PST8PDT;

use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '2.18';

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::PST8PDT::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
60502413600, #      utc_end 1918-03-31 10:00:00 (Sun)
DateTime::TimeZone::NEG_INFINITY, #  local_start
60502384800, #    local_end 1918-03-31 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
60502413600, #    utc_start 1918-03-31 10:00:00 (Sun)
60520554000, #      utc_end 1918-10-27 09:00:00 (Sun)
60502388400, #  local_start 1918-03-31 03:00:00 (Sun)
60520528800, #    local_end 1918-10-27 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
60520554000, #    utc_start 1918-10-27 09:00:00 (Sun)
60533863200, #      utc_end 1919-03-30 10:00:00 (Sun)
60520525200, #  local_start 1918-10-27 01:00:00 (Sun)
60533834400, #    local_end 1919-03-30 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
60533863200, #    utc_start 1919-03-30 10:00:00 (Sun)
60552003600, #      utc_end 1919-10-26 09:00:00 (Sun)
60533838000, #  local_start 1919-03-30 03:00:00 (Sun)
60551978400, #    local_end 1919-10-26 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
60552003600, #    utc_start 1919-10-26 09:00:00 (Sun)
61255476000, #      utc_end 1942-02-09 10:00:00 (Mon)
60551974800, #  local_start 1919-10-26 01:00:00 (Sun)
61255447200, #    local_end 1942-02-09 02:00:00 (Mon)
-28800,
0,
'PST',
    ],
    [
61255476000, #    utc_start 1942-02-09 10:00:00 (Mon)
61366287600, #      utc_end 1945-08-14 23:00:00 (Tue)
61255450800, #  local_start 1942-02-09 03:00:00 (Mon)
61366262400, #    local_end 1945-08-14 16:00:00 (Tue)
-25200,
1,
'PWT',
    ],
    [
61366287600, #    utc_start 1945-08-14 23:00:00 (Tue)
61370298000, #      utc_end 1945-09-30 09:00:00 (Sun)
61366262400, #  local_start 1945-08-14 16:00:00 (Tue)
61370272800, #    local_end 1945-09-30 02:00:00 (Sun)
-25200,
1,
'PPT',
    ],
    [
61370298000, #    utc_start 1945-09-30 09:00:00 (Sun)
62051306400, #      utc_end 1967-04-30 10:00:00 (Sun)
61370269200, #  local_start 1945-09-30 01:00:00 (Sun)
62051277600, #    local_end 1967-04-30 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62051306400, #    utc_start 1967-04-30 10:00:00 (Sun)
62067027600, #      utc_end 1967-10-29 09:00:00 (Sun)
62051281200, #  local_start 1967-04-30 03:00:00 (Sun)
62067002400, #    local_end 1967-10-29 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62067027600, #    utc_start 1967-10-29 09:00:00 (Sun)
62082756000, #      utc_end 1968-04-28 10:00:00 (Sun)
62066998800, #  local_start 1967-10-29 01:00:00 (Sun)
62082727200, #    local_end 1968-04-28 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62082756000, #    utc_start 1968-04-28 10:00:00 (Sun)
62098477200, #      utc_end 1968-10-27 09:00:00 (Sun)
62082730800, #  local_start 1968-04-28 03:00:00 (Sun)
62098452000, #    local_end 1968-10-27 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62098477200, #    utc_start 1968-10-27 09:00:00 (Sun)
62114205600, #      utc_end 1969-04-27 10:00:00 (Sun)
62098448400, #  local_start 1968-10-27 01:00:00 (Sun)
62114176800, #    local_end 1969-04-27 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62114205600, #    utc_start 1969-04-27 10:00:00 (Sun)
62129926800, #      utc_end 1969-10-26 09:00:00 (Sun)
62114180400, #  local_start 1969-04-27 03:00:00 (Sun)
62129901600, #    local_end 1969-10-26 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62129926800, #    utc_start 1969-10-26 09:00:00 (Sun)
62145655200, #      utc_end 1970-04-26 10:00:00 (Sun)
62129898000, #  local_start 1969-10-26 01:00:00 (Sun)
62145626400, #    local_end 1970-04-26 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62145655200, #    utc_start 1970-04-26 10:00:00 (Sun)
62161376400, #      utc_end 1970-10-25 09:00:00 (Sun)
62145630000, #  local_start 1970-04-26 03:00:00 (Sun)
62161351200, #    local_end 1970-10-25 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62161376400, #    utc_start 1970-10-25 09:00:00 (Sun)
62177104800, #      utc_end 1971-04-25 10:00:00 (Sun)
62161347600, #  local_start 1970-10-25 01:00:00 (Sun)
62177076000, #    local_end 1971-04-25 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62177104800, #    utc_start 1971-04-25 10:00:00 (Sun)
62193430800, #      utc_end 1971-10-31 09:00:00 (Sun)
62177079600, #  local_start 1971-04-25 03:00:00 (Sun)
62193405600, #    local_end 1971-10-31 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62193430800, #    utc_start 1971-10-31 09:00:00 (Sun)
62209159200, #      utc_end 1972-04-30 10:00:00 (Sun)
62193402000, #  local_start 1971-10-31 01:00:00 (Sun)
62209130400, #    local_end 1972-04-30 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62209159200, #    utc_start 1972-04-30 10:00:00 (Sun)
62224880400, #      utc_end 1972-10-29 09:00:00 (Sun)
62209134000, #  local_start 1972-04-30 03:00:00 (Sun)
62224855200, #    local_end 1972-10-29 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62224880400, #    utc_start 1972-10-29 09:00:00 (Sun)
62240608800, #      utc_end 1973-04-29 10:00:00 (Sun)
62224851600, #  local_start 1972-10-29 01:00:00 (Sun)
62240580000, #    local_end 1973-04-29 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62240608800, #    utc_start 1973-04-29 10:00:00 (Sun)
62256330000, #      utc_end 1973-10-28 09:00:00 (Sun)
62240583600, #  local_start 1973-04-29 03:00:00 (Sun)
62256304800, #    local_end 1973-10-28 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62256330000, #    utc_start 1973-10-28 09:00:00 (Sun)
62262381600, #      utc_end 1974-01-06 10:00:00 (Sun)
62256301200, #  local_start 1973-10-28 01:00:00 (Sun)
62262352800, #    local_end 1974-01-06 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62262381600, #    utc_start 1974-01-06 10:00:00 (Sun)
62287779600, #      utc_end 1974-10-27 09:00:00 (Sun)
62262356400, #  local_start 1974-01-06 03:00:00 (Sun)
62287754400, #    local_end 1974-10-27 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62287779600, #    utc_start 1974-10-27 09:00:00 (Sun)
62298064800, #      utc_end 1975-02-23 10:00:00 (Sun)
62287750800, #  local_start 1974-10-27 01:00:00 (Sun)
62298036000, #    local_end 1975-02-23 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62298064800, #    utc_start 1975-02-23 10:00:00 (Sun)
62319229200, #      utc_end 1975-10-26 09:00:00 (Sun)
62298039600, #  local_start 1975-02-23 03:00:00 (Sun)
62319204000, #    local_end 1975-10-26 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62319229200, #    utc_start 1975-10-26 09:00:00 (Sun)
62334957600, #      utc_end 1976-04-25 10:00:00 (Sun)
62319200400, #  local_start 1975-10-26 01:00:00 (Sun)
62334928800, #    local_end 1976-04-25 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62334957600, #    utc_start 1976-04-25 10:00:00 (Sun)
62351283600, #      utc_end 1976-10-31 09:00:00 (Sun)
62334932400, #  local_start 1976-04-25 03:00:00 (Sun)
62351258400, #    local_end 1976-10-31 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62351283600, #    utc_start 1976-10-31 09:00:00 (Sun)
62366407200, #      utc_end 1977-04-24 10:00:00 (Sun)
62351254800, #  local_start 1976-10-31 01:00:00 (Sun)
62366378400, #    local_end 1977-04-24 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62366407200, #    utc_start 1977-04-24 10:00:00 (Sun)
62382733200, #      utc_end 1977-10-30 09:00:00 (Sun)
62366382000, #  local_start 1977-04-24 03:00:00 (Sun)
62382708000, #    local_end 1977-10-30 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62382733200, #    utc_start 1977-10-30 09:00:00 (Sun)
62398461600, #      utc_end 1978-04-30 10:00:00 (Sun)
62382704400, #  local_start 1977-10-30 01:00:00 (Sun)
62398432800, #    local_end 1978-04-30 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62398461600, #    utc_start 1978-04-30 10:00:00 (Sun)
62414182800, #      utc_end 1978-10-29 09:00:00 (Sun)
62398436400, #  local_start 1978-04-30 03:00:00 (Sun)
62414157600, #    local_end 1978-10-29 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62414182800, #    utc_start 1978-10-29 09:00:00 (Sun)
62429911200, #      utc_end 1979-04-29 10:00:00 (Sun)
62414154000, #  local_start 1978-10-29 01:00:00 (Sun)
62429882400, #    local_end 1979-04-29 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62429911200, #    utc_start 1979-04-29 10:00:00 (Sun)
62445632400, #      utc_end 1979-10-28 09:00:00 (Sun)
62429886000, #  local_start 1979-04-29 03:00:00 (Sun)
62445607200, #    local_end 1979-10-28 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62445632400, #    utc_start 1979-10-28 09:00:00 (Sun)
62461360800, #      utc_end 1980-04-27 10:00:00 (Sun)
62445603600, #  local_start 1979-10-28 01:00:00 (Sun)
62461332000, #    local_end 1980-04-27 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62461360800, #    utc_start 1980-04-27 10:00:00 (Sun)
62477082000, #      utc_end 1980-10-26 09:00:00 (Sun)
62461335600, #  local_start 1980-04-27 03:00:00 (Sun)
62477056800, #    local_end 1980-10-26 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62477082000, #    utc_start 1980-10-26 09:00:00 (Sun)
62492810400, #      utc_end 1981-04-26 10:00:00 (Sun)
62477053200, #  local_start 1980-10-26 01:00:00 (Sun)
62492781600, #    local_end 1981-04-26 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62492810400, #    utc_start 1981-04-26 10:00:00 (Sun)
62508531600, #      utc_end 1981-10-25 09:00:00 (Sun)
62492785200, #  local_start 1981-04-26 03:00:00 (Sun)
62508506400, #    local_end 1981-10-25 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62508531600, #    utc_start 1981-10-25 09:00:00 (Sun)
62524260000, #      utc_end 1982-04-25 10:00:00 (Sun)
62508502800, #  local_start 1981-10-25 01:00:00 (Sun)
62524231200, #    local_end 1982-04-25 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62524260000, #    utc_start 1982-04-25 10:00:00 (Sun)
62540586000, #      utc_end 1982-10-31 09:00:00 (Sun)
62524234800, #  local_start 1982-04-25 03:00:00 (Sun)
62540560800, #    local_end 1982-10-31 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62540586000, #    utc_start 1982-10-31 09:00:00 (Sun)
62555709600, #      utc_end 1983-04-24 10:00:00 (Sun)
62540557200, #  local_start 1982-10-31 01:00:00 (Sun)
62555680800, #    local_end 1983-04-24 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62555709600, #    utc_start 1983-04-24 10:00:00 (Sun)
62572035600, #      utc_end 1983-10-30 09:00:00 (Sun)
62555684400, #  local_start 1983-04-24 03:00:00 (Sun)
62572010400, #    local_end 1983-10-30 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62572035600, #    utc_start 1983-10-30 09:00:00 (Sun)
62587764000, #      utc_end 1984-04-29 10:00:00 (Sun)
62572006800, #  local_start 1983-10-30 01:00:00 (Sun)
62587735200, #    local_end 1984-04-29 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62587764000, #    utc_start 1984-04-29 10:00:00 (Sun)
62603485200, #      utc_end 1984-10-28 09:00:00 (Sun)
62587738800, #  local_start 1984-04-29 03:00:00 (Sun)
62603460000, #    local_end 1984-10-28 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62603485200, #    utc_start 1984-10-28 09:00:00 (Sun)
62619213600, #      utc_end 1985-04-28 10:00:00 (Sun)
62603456400, #  local_start 1984-10-28 01:00:00 (Sun)
62619184800, #    local_end 1985-04-28 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62619213600, #    utc_start 1985-04-28 10:00:00 (Sun)
62634934800, #      utc_end 1985-10-27 09:00:00 (Sun)
62619188400, #  local_start 1985-04-28 03:00:00 (Sun)
62634909600, #    local_end 1985-10-27 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62634934800, #    utc_start 1985-10-27 09:00:00 (Sun)
62650663200, #      utc_end 1986-04-27 10:00:00 (Sun)
62634906000, #  local_start 1985-10-27 01:00:00 (Sun)
62650634400, #    local_end 1986-04-27 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62650663200, #    utc_start 1986-04-27 10:00:00 (Sun)
62666384400, #      utc_end 1986-10-26 09:00:00 (Sun)
62650638000, #  local_start 1986-04-27 03:00:00 (Sun)
62666359200, #    local_end 1986-10-26 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62666384400, #    utc_start 1986-10-26 09:00:00 (Sun)
62680298400, #      utc_end 1987-04-05 10:00:00 (Sun)
62666355600, #  local_start 1986-10-26 01:00:00 (Sun)
62680269600, #    local_end 1987-04-05 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62680298400, #    utc_start 1987-04-05 10:00:00 (Sun)
62697834000, #      utc_end 1987-10-25 09:00:00 (Sun)
62680273200, #  local_start 1987-04-05 03:00:00 (Sun)
62697808800, #    local_end 1987-10-25 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62697834000, #    utc_start 1987-10-25 09:00:00 (Sun)
62711748000, #      utc_end 1988-04-03 10:00:00 (Sun)
62697805200, #  local_start 1987-10-25 01:00:00 (Sun)
62711719200, #    local_end 1988-04-03 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62711748000, #    utc_start 1988-04-03 10:00:00 (Sun)
62729888400, #      utc_end 1988-10-30 09:00:00 (Sun)
62711722800, #  local_start 1988-04-03 03:00:00 (Sun)
62729863200, #    local_end 1988-10-30 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62729888400, #    utc_start 1988-10-30 09:00:00 (Sun)
62743197600, #      utc_end 1989-04-02 10:00:00 (Sun)
62729859600, #  local_start 1988-10-30 01:00:00 (Sun)
62743168800, #    local_end 1989-04-02 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62743197600, #    utc_start 1989-04-02 10:00:00 (Sun)
62761338000, #      utc_end 1989-10-29 09:00:00 (Sun)
62743172400, #  local_start 1989-04-02 03:00:00 (Sun)
62761312800, #    local_end 1989-10-29 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62761338000, #    utc_start 1989-10-29 09:00:00 (Sun)
62774647200, #      utc_end 1990-04-01 10:00:00 (Sun)
62761309200, #  local_start 1989-10-29 01:00:00 (Sun)
62774618400, #    local_end 1990-04-01 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62774647200, #    utc_start 1990-04-01 10:00:00 (Sun)
62792787600, #      utc_end 1990-10-28 09:00:00 (Sun)
62774622000, #  local_start 1990-04-01 03:00:00 (Sun)
62792762400, #    local_end 1990-10-28 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62792787600, #    utc_start 1990-10-28 09:00:00 (Sun)
62806701600, #      utc_end 1991-04-07 10:00:00 (Sun)
62792758800, #  local_start 1990-10-28 01:00:00 (Sun)
62806672800, #    local_end 1991-04-07 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62806701600, #    utc_start 1991-04-07 10:00:00 (Sun)
62824237200, #      utc_end 1991-10-27 09:00:00 (Sun)
62806676400, #  local_start 1991-04-07 03:00:00 (Sun)
62824212000, #    local_end 1991-10-27 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62824237200, #    utc_start 1991-10-27 09:00:00 (Sun)
62838151200, #      utc_end 1992-04-05 10:00:00 (Sun)
62824208400, #  local_start 1991-10-27 01:00:00 (Sun)
62838122400, #    local_end 1992-04-05 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62838151200, #    utc_start 1992-04-05 10:00:00 (Sun)
62855686800, #      utc_end 1992-10-25 09:00:00 (Sun)
62838126000, #  local_start 1992-04-05 03:00:00 (Sun)
62855661600, #    local_end 1992-10-25 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62855686800, #    utc_start 1992-10-25 09:00:00 (Sun)
62869600800, #      utc_end 1993-04-04 10:00:00 (Sun)
62855658000, #  local_start 1992-10-25 01:00:00 (Sun)
62869572000, #    local_end 1993-04-04 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62869600800, #    utc_start 1993-04-04 10:00:00 (Sun)
62887741200, #      utc_end 1993-10-31 09:00:00 (Sun)
62869575600, #  local_start 1993-04-04 03:00:00 (Sun)
62887716000, #    local_end 1993-10-31 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62887741200, #    utc_start 1993-10-31 09:00:00 (Sun)
62901050400, #      utc_end 1994-04-03 10:00:00 (Sun)
62887712400, #  local_start 1993-10-31 01:00:00 (Sun)
62901021600, #    local_end 1994-04-03 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62901050400, #    utc_start 1994-04-03 10:00:00 (Sun)
62919190800, #      utc_end 1994-10-30 09:00:00 (Sun)
62901025200, #  local_start 1994-04-03 03:00:00 (Sun)
62919165600, #    local_end 1994-10-30 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62919190800, #    utc_start 1994-10-30 09:00:00 (Sun)
62932500000, #      utc_end 1995-04-02 10:00:00 (Sun)
62919162000, #  local_start 1994-10-30 01:00:00 (Sun)
62932471200, #    local_end 1995-04-02 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62932500000, #    utc_start 1995-04-02 10:00:00 (Sun)
62950640400, #      utc_end 1995-10-29 09:00:00 (Sun)
62932474800, #  local_start 1995-04-02 03:00:00 (Sun)
62950615200, #    local_end 1995-10-29 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62950640400, #    utc_start 1995-10-29 09:00:00 (Sun)
62964554400, #      utc_end 1996-04-07 10:00:00 (Sun)
62950611600, #  local_start 1995-10-29 01:00:00 (Sun)
62964525600, #    local_end 1996-04-07 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62964554400, #    utc_start 1996-04-07 10:00:00 (Sun)
62982090000, #      utc_end 1996-10-27 09:00:00 (Sun)
62964529200, #  local_start 1996-04-07 03:00:00 (Sun)
62982064800, #    local_end 1996-10-27 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
62982090000, #    utc_start 1996-10-27 09:00:00 (Sun)
62996004000, #      utc_end 1997-04-06 10:00:00 (Sun)
62982061200, #  local_start 1996-10-27 01:00:00 (Sun)
62995975200, #    local_end 1997-04-06 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
62996004000, #    utc_start 1997-04-06 10:00:00 (Sun)
63013539600, #      utc_end 1997-10-26 09:00:00 (Sun)
62995978800, #  local_start 1997-04-06 03:00:00 (Sun)
63013514400, #    local_end 1997-10-26 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63013539600, #    utc_start 1997-10-26 09:00:00 (Sun)
63027453600, #      utc_end 1998-04-05 10:00:00 (Sun)
63013510800, #  local_start 1997-10-26 01:00:00 (Sun)
63027424800, #    local_end 1998-04-05 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63027453600, #    utc_start 1998-04-05 10:00:00 (Sun)
63044989200, #      utc_end 1998-10-25 09:00:00 (Sun)
63027428400, #  local_start 1998-04-05 03:00:00 (Sun)
63044964000, #    local_end 1998-10-25 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63044989200, #    utc_start 1998-10-25 09:00:00 (Sun)
63058903200, #      utc_end 1999-04-04 10:00:00 (Sun)
63044960400, #  local_start 1998-10-25 01:00:00 (Sun)
63058874400, #    local_end 1999-04-04 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63058903200, #    utc_start 1999-04-04 10:00:00 (Sun)
63077043600, #      utc_end 1999-10-31 09:00:00 (Sun)
63058878000, #  local_start 1999-04-04 03:00:00 (Sun)
63077018400, #    local_end 1999-10-31 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63077043600, #    utc_start 1999-10-31 09:00:00 (Sun)
63090352800, #      utc_end 2000-04-02 10:00:00 (Sun)
63077014800, #  local_start 1999-10-31 01:00:00 (Sun)
63090324000, #    local_end 2000-04-02 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63090352800, #    utc_start 2000-04-02 10:00:00 (Sun)
63108493200, #      utc_end 2000-10-29 09:00:00 (Sun)
63090327600, #  local_start 2000-04-02 03:00:00 (Sun)
63108468000, #    local_end 2000-10-29 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63108493200, #    utc_start 2000-10-29 09:00:00 (Sun)
63121802400, #      utc_end 2001-04-01 10:00:00 (Sun)
63108464400, #  local_start 2000-10-29 01:00:00 (Sun)
63121773600, #    local_end 2001-04-01 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63121802400, #    utc_start 2001-04-01 10:00:00 (Sun)
63139942800, #      utc_end 2001-10-28 09:00:00 (Sun)
63121777200, #  local_start 2001-04-01 03:00:00 (Sun)
63139917600, #    local_end 2001-10-28 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63139942800, #    utc_start 2001-10-28 09:00:00 (Sun)
63153856800, #      utc_end 2002-04-07 10:00:00 (Sun)
63139914000, #  local_start 2001-10-28 01:00:00 (Sun)
63153828000, #    local_end 2002-04-07 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63153856800, #    utc_start 2002-04-07 10:00:00 (Sun)
63171392400, #      utc_end 2002-10-27 09:00:00 (Sun)
63153831600, #  local_start 2002-04-07 03:00:00 (Sun)
63171367200, #    local_end 2002-10-27 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63171392400, #    utc_start 2002-10-27 09:00:00 (Sun)
63185306400, #      utc_end 2003-04-06 10:00:00 (Sun)
63171363600, #  local_start 2002-10-27 01:00:00 (Sun)
63185277600, #    local_end 2003-04-06 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63185306400, #    utc_start 2003-04-06 10:00:00 (Sun)
63202842000, #      utc_end 2003-10-26 09:00:00 (Sun)
63185281200, #  local_start 2003-04-06 03:00:00 (Sun)
63202816800, #    local_end 2003-10-26 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63202842000, #    utc_start 2003-10-26 09:00:00 (Sun)
63216756000, #      utc_end 2004-04-04 10:00:00 (Sun)
63202813200, #  local_start 2003-10-26 01:00:00 (Sun)
63216727200, #    local_end 2004-04-04 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63216756000, #    utc_start 2004-04-04 10:00:00 (Sun)
63234896400, #      utc_end 2004-10-31 09:00:00 (Sun)
63216730800, #  local_start 2004-04-04 03:00:00 (Sun)
63234871200, #    local_end 2004-10-31 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63234896400, #    utc_start 2004-10-31 09:00:00 (Sun)
63248205600, #      utc_end 2005-04-03 10:00:00 (Sun)
63234867600, #  local_start 2004-10-31 01:00:00 (Sun)
63248176800, #    local_end 2005-04-03 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63248205600, #    utc_start 2005-04-03 10:00:00 (Sun)
63266346000, #      utc_end 2005-10-30 09:00:00 (Sun)
63248180400, #  local_start 2005-04-03 03:00:00 (Sun)
63266320800, #    local_end 2005-10-30 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63266346000, #    utc_start 2005-10-30 09:00:00 (Sun)
63279655200, #      utc_end 2006-04-02 10:00:00 (Sun)
63266317200, #  local_start 2005-10-30 01:00:00 (Sun)
63279626400, #    local_end 2006-04-02 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63279655200, #    utc_start 2006-04-02 10:00:00 (Sun)
63297795600, #      utc_end 2006-10-29 09:00:00 (Sun)
63279630000, #  local_start 2006-04-02 03:00:00 (Sun)
63297770400, #    local_end 2006-10-29 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63297795600, #    utc_start 2006-10-29 09:00:00 (Sun)
63309290400, #      utc_end 2007-03-11 10:00:00 (Sun)
63297766800, #  local_start 2006-10-29 01:00:00 (Sun)
63309261600, #    local_end 2007-03-11 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63309290400, #    utc_start 2007-03-11 10:00:00 (Sun)
63329850000, #      utc_end 2007-11-04 09:00:00 (Sun)
63309265200, #  local_start 2007-03-11 03:00:00 (Sun)
63329824800, #    local_end 2007-11-04 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63329850000, #    utc_start 2007-11-04 09:00:00 (Sun)
63340740000, #      utc_end 2008-03-09 10:00:00 (Sun)
63329821200, #  local_start 2007-11-04 01:00:00 (Sun)
63340711200, #    local_end 2008-03-09 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63340740000, #    utc_start 2008-03-09 10:00:00 (Sun)
63361299600, #      utc_end 2008-11-02 09:00:00 (Sun)
63340714800, #  local_start 2008-03-09 03:00:00 (Sun)
63361274400, #    local_end 2008-11-02 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63361299600, #    utc_start 2008-11-02 09:00:00 (Sun)
63372189600, #      utc_end 2009-03-08 10:00:00 (Sun)
63361270800, #  local_start 2008-11-02 01:00:00 (Sun)
63372160800, #    local_end 2009-03-08 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63372189600, #    utc_start 2009-03-08 10:00:00 (Sun)
63392749200, #      utc_end 2009-11-01 09:00:00 (Sun)
63372164400, #  local_start 2009-03-08 03:00:00 (Sun)
63392724000, #    local_end 2009-11-01 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63392749200, #    utc_start 2009-11-01 09:00:00 (Sun)
63404244000, #      utc_end 2010-03-14 10:00:00 (Sun)
63392720400, #  local_start 2009-11-01 01:00:00 (Sun)
63404215200, #    local_end 2010-03-14 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63404244000, #    utc_start 2010-03-14 10:00:00 (Sun)
63424803600, #      utc_end 2010-11-07 09:00:00 (Sun)
63404218800, #  local_start 2010-03-14 03:00:00 (Sun)
63424778400, #    local_end 2010-11-07 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63424803600, #    utc_start 2010-11-07 09:00:00 (Sun)
63435693600, #      utc_end 2011-03-13 10:00:00 (Sun)
63424774800, #  local_start 2010-11-07 01:00:00 (Sun)
63435664800, #    local_end 2011-03-13 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63435693600, #    utc_start 2011-03-13 10:00:00 (Sun)
63456253200, #      utc_end 2011-11-06 09:00:00 (Sun)
63435668400, #  local_start 2011-03-13 03:00:00 (Sun)
63456228000, #    local_end 2011-11-06 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63456253200, #    utc_start 2011-11-06 09:00:00 (Sun)
63467143200, #      utc_end 2012-03-11 10:00:00 (Sun)
63456224400, #  local_start 2011-11-06 01:00:00 (Sun)
63467114400, #    local_end 2012-03-11 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63467143200, #    utc_start 2012-03-11 10:00:00 (Sun)
63487702800, #      utc_end 2012-11-04 09:00:00 (Sun)
63467118000, #  local_start 2012-03-11 03:00:00 (Sun)
63487677600, #    local_end 2012-11-04 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63487702800, #    utc_start 2012-11-04 09:00:00 (Sun)
63498592800, #      utc_end 2013-03-10 10:00:00 (Sun)
63487674000, #  local_start 2012-11-04 01:00:00 (Sun)
63498564000, #    local_end 2013-03-10 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63498592800, #    utc_start 2013-03-10 10:00:00 (Sun)
63519152400, #      utc_end 2013-11-03 09:00:00 (Sun)
63498567600, #  local_start 2013-03-10 03:00:00 (Sun)
63519127200, #    local_end 2013-11-03 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63519152400, #    utc_start 2013-11-03 09:00:00 (Sun)
63530042400, #      utc_end 2014-03-09 10:00:00 (Sun)
63519123600, #  local_start 2013-11-03 01:00:00 (Sun)
63530013600, #    local_end 2014-03-09 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63530042400, #    utc_start 2014-03-09 10:00:00 (Sun)
63550602000, #      utc_end 2014-11-02 09:00:00 (Sun)
63530017200, #  local_start 2014-03-09 03:00:00 (Sun)
63550576800, #    local_end 2014-11-02 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63550602000, #    utc_start 2014-11-02 09:00:00 (Sun)
63561492000, #      utc_end 2015-03-08 10:00:00 (Sun)
63550573200, #  local_start 2014-11-02 01:00:00 (Sun)
63561463200, #    local_end 2015-03-08 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63561492000, #    utc_start 2015-03-08 10:00:00 (Sun)
63582051600, #      utc_end 2015-11-01 09:00:00 (Sun)
63561466800, #  local_start 2015-03-08 03:00:00 (Sun)
63582026400, #    local_end 2015-11-01 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63582051600, #    utc_start 2015-11-01 09:00:00 (Sun)
63593546400, #      utc_end 2016-03-13 10:00:00 (Sun)
63582022800, #  local_start 2015-11-01 01:00:00 (Sun)
63593517600, #    local_end 2016-03-13 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63593546400, #    utc_start 2016-03-13 10:00:00 (Sun)
63614106000, #      utc_end 2016-11-06 09:00:00 (Sun)
63593521200, #  local_start 2016-03-13 03:00:00 (Sun)
63614080800, #    local_end 2016-11-06 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63614106000, #    utc_start 2016-11-06 09:00:00 (Sun)
63624996000, #      utc_end 2017-03-12 10:00:00 (Sun)
63614077200, #  local_start 2016-11-06 01:00:00 (Sun)
63624967200, #    local_end 2017-03-12 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63624996000, #    utc_start 2017-03-12 10:00:00 (Sun)
63645555600, #      utc_end 2017-11-05 09:00:00 (Sun)
63624970800, #  local_start 2017-03-12 03:00:00 (Sun)
63645530400, #    local_end 2017-11-05 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63645555600, #    utc_start 2017-11-05 09:00:00 (Sun)
63656445600, #      utc_end 2018-03-11 10:00:00 (Sun)
63645526800, #  local_start 2017-11-05 01:00:00 (Sun)
63656416800, #    local_end 2018-03-11 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63656445600, #    utc_start 2018-03-11 10:00:00 (Sun)
63677005200, #      utc_end 2018-11-04 09:00:00 (Sun)
63656420400, #  local_start 2018-03-11 03:00:00 (Sun)
63676980000, #    local_end 2018-11-04 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63677005200, #    utc_start 2018-11-04 09:00:00 (Sun)
63687895200, #      utc_end 2019-03-10 10:00:00 (Sun)
63676976400, #  local_start 2018-11-04 01:00:00 (Sun)
63687866400, #    local_end 2019-03-10 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63687895200, #    utc_start 2019-03-10 10:00:00 (Sun)
63708454800, #      utc_end 2019-11-03 09:00:00 (Sun)
63687870000, #  local_start 2019-03-10 03:00:00 (Sun)
63708429600, #    local_end 2019-11-03 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63708454800, #    utc_start 2019-11-03 09:00:00 (Sun)
63719344800, #      utc_end 2020-03-08 10:00:00 (Sun)
63708426000, #  local_start 2019-11-03 01:00:00 (Sun)
63719316000, #    local_end 2020-03-08 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63719344800, #    utc_start 2020-03-08 10:00:00 (Sun)
63739904400, #      utc_end 2020-11-01 09:00:00 (Sun)
63719319600, #  local_start 2020-03-08 03:00:00 (Sun)
63739879200, #    local_end 2020-11-01 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63739904400, #    utc_start 2020-11-01 09:00:00 (Sun)
63751399200, #      utc_end 2021-03-14 10:00:00 (Sun)
63739875600, #  local_start 2020-11-01 01:00:00 (Sun)
63751370400, #    local_end 2021-03-14 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63751399200, #    utc_start 2021-03-14 10:00:00 (Sun)
63771958800, #      utc_end 2021-11-07 09:00:00 (Sun)
63751374000, #  local_start 2021-03-14 03:00:00 (Sun)
63771933600, #    local_end 2021-11-07 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63771958800, #    utc_start 2021-11-07 09:00:00 (Sun)
63782848800, #      utc_end 2022-03-13 10:00:00 (Sun)
63771930000, #  local_start 2021-11-07 01:00:00 (Sun)
63782820000, #    local_end 2022-03-13 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63782848800, #    utc_start 2022-03-13 10:00:00 (Sun)
63803408400, #      utc_end 2022-11-06 09:00:00 (Sun)
63782823600, #  local_start 2022-03-13 03:00:00 (Sun)
63803383200, #    local_end 2022-11-06 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63803408400, #    utc_start 2022-11-06 09:00:00 (Sun)
63814298400, #      utc_end 2023-03-12 10:00:00 (Sun)
63803379600, #  local_start 2022-11-06 01:00:00 (Sun)
63814269600, #    local_end 2023-03-12 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63814298400, #    utc_start 2023-03-12 10:00:00 (Sun)
63834858000, #      utc_end 2023-11-05 09:00:00 (Sun)
63814273200, #  local_start 2023-03-12 03:00:00 (Sun)
63834832800, #    local_end 2023-11-05 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63834858000, #    utc_start 2023-11-05 09:00:00 (Sun)
63845748000, #      utc_end 2024-03-10 10:00:00 (Sun)
63834829200, #  local_start 2023-11-05 01:00:00 (Sun)
63845719200, #    local_end 2024-03-10 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63845748000, #    utc_start 2024-03-10 10:00:00 (Sun)
63866307600, #      utc_end 2024-11-03 09:00:00 (Sun)
63845722800, #  local_start 2024-03-10 03:00:00 (Sun)
63866282400, #    local_end 2024-11-03 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63866307600, #    utc_start 2024-11-03 09:00:00 (Sun)
63877197600, #      utc_end 2025-03-09 10:00:00 (Sun)
63866278800, #  local_start 2024-11-03 01:00:00 (Sun)
63877168800, #    local_end 2025-03-09 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63877197600, #    utc_start 2025-03-09 10:00:00 (Sun)
63897757200, #      utc_end 2025-11-02 09:00:00 (Sun)
63877172400, #  local_start 2025-03-09 03:00:00 (Sun)
63897732000, #    local_end 2025-11-02 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63897757200, #    utc_start 2025-11-02 09:00:00 (Sun)
63908647200, #      utc_end 2026-03-08 10:00:00 (Sun)
63897728400, #  local_start 2025-11-02 01:00:00 (Sun)
63908618400, #    local_end 2026-03-08 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63908647200, #    utc_start 2026-03-08 10:00:00 (Sun)
63929206800, #      utc_end 2026-11-01 09:00:00 (Sun)
63908622000, #  local_start 2026-03-08 03:00:00 (Sun)
63929181600, #    local_end 2026-11-01 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63929206800, #    utc_start 2026-11-01 09:00:00 (Sun)
63940701600, #      utc_end 2027-03-14 10:00:00 (Sun)
63929178000, #  local_start 2026-11-01 01:00:00 (Sun)
63940672800, #    local_end 2027-03-14 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63940701600, #    utc_start 2027-03-14 10:00:00 (Sun)
63961261200, #      utc_end 2027-11-07 09:00:00 (Sun)
63940676400, #  local_start 2027-03-14 03:00:00 (Sun)
63961236000, #    local_end 2027-11-07 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63961261200, #    utc_start 2027-11-07 09:00:00 (Sun)
63972151200, #      utc_end 2028-03-12 10:00:00 (Sun)
63961232400, #  local_start 2027-11-07 01:00:00 (Sun)
63972122400, #    local_end 2028-03-12 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
63972151200, #    utc_start 2028-03-12 10:00:00 (Sun)
63992710800, #      utc_end 2028-11-05 09:00:00 (Sun)
63972126000, #  local_start 2028-03-12 03:00:00 (Sun)
63992685600, #    local_end 2028-11-05 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
    [
63992710800, #    utc_start 2028-11-05 09:00:00 (Sun)
64003600800, #      utc_end 2029-03-11 10:00:00 (Sun)
63992682000, #  local_start 2028-11-05 01:00:00 (Sun)
64003572000, #    local_end 2029-03-11 02:00:00 (Sun)
-28800,
0,
'PST',
    ],
    [
64003600800, #    utc_start 2029-03-11 10:00:00 (Sun)
64024160400, #      utc_end 2029-11-04 09:00:00 (Sun)
64003575600, #  local_start 2029-03-11 03:00:00 (Sun)
64024135200, #    local_end 2029-11-04 02:00:00 (Sun)
-25200,
1,
'PDT',
    ],
];

sub olson_version {'2018d'}

sub has_dst_changes {67}

sub _max_year {2028}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}

sub _last_offset { -28800 }

my $last_observance = bless( {
  'format' => 'P%sT',
  'gmtoff' => '-8:00',
  'local_start_datetime' => {},
  'offset_from_std' => 0,
  'offset_from_utc' => -28800,
  'until' => [],
  'utc_start_datetime' => {}
}, 'DateTime::TimeZone::OlsonDB::Observance' )
;
sub _last_observance { $last_observance }

my $rules = [
  bless( {
    'at' => '2:00',
    'from' => '2007',
    'in' => 'Mar',
    'letter' => 'D',
    'name' => 'US',
    'offset_from_std' => 3600,
    'on' => 'Sun>=8',
    'save' => '1:00',
    'to' => 'max'
  }, 'DateTime::TimeZone::OlsonDB::Rule' ),
  bless( {
    'at' => '2:00',
    'from' => '2007',
    'in' => 'Nov',
    'letter' => 'S',
    'name' => 'US',
    'offset_from_std' => 0,
    'on' => 'Sun>=1',
    'save' => '0',
    'to' => 'max'
  }, 'DateTime::TimeZone::OlsonDB::Rule' )
]
;
sub _rules { $rules }


1;

