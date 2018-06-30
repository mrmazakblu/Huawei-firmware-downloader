# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.08) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/V7b1FlgEXT/europe.  Olson data version 2018d
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Europe::Kirov;

use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '2.18';

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Europe::Kirov::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
60541862400, #      utc_end 1919-07-01 00:00:00 (Tue)
DateTime::TimeZone::NEG_INFINITY, #  local_start
60541874328, #    local_end 1919-07-01 03:18:48 (Tue)
11928,
0,
'LMT',
    ],
    [
60541862400, #    utc_start 1919-07-01 00:00:00 (Tue)
60888142800, #      utc_end 1930-06-20 21:00:00 (Fri)
60541873200, #  local_start 1919-07-01 03:00:00 (Tue)
60888153600, #    local_end 1930-06-21 00:00:00 (Sat)
10800,
0,
'+03',
    ],
    [
60888142800, #    utc_start 1930-06-20 21:00:00 (Fri)
62490600000, #      utc_end 1981-03-31 20:00:00 (Tue)
60888157200, #  local_start 1930-06-21 01:00:00 (Sat)
62490614400, #    local_end 1981-04-01 00:00:00 (Wed)
14400,
0,
'+04',
    ],
    [
62490600000, #    utc_start 1981-03-31 20:00:00 (Tue)
62506407600, #      utc_end 1981-09-30 19:00:00 (Wed)
62490618000, #  local_start 1981-04-01 01:00:00 (Wed)
62506425600, #    local_end 1981-10-01 00:00:00 (Thu)
18000,
1,
'+05',
    ],
    [
62506407600, #    utc_start 1981-09-30 19:00:00 (Wed)
62522136000, #      utc_end 1982-03-31 20:00:00 (Wed)
62506422000, #  local_start 1981-09-30 23:00:00 (Wed)
62522150400, #    local_end 1982-04-01 00:00:00 (Thu)
14400,
0,
'+04',
    ],
    [
62522136000, #    utc_start 1982-03-31 20:00:00 (Wed)
62537943600, #      utc_end 1982-09-30 19:00:00 (Thu)
62522154000, #  local_start 1982-04-01 01:00:00 (Thu)
62537961600, #    local_end 1982-10-01 00:00:00 (Fri)
18000,
1,
'+05',
    ],
    [
62537943600, #    utc_start 1982-09-30 19:00:00 (Thu)
62553672000, #      utc_end 1983-03-31 20:00:00 (Thu)
62537958000, #  local_start 1982-09-30 23:00:00 (Thu)
62553686400, #    local_end 1983-04-01 00:00:00 (Fri)
14400,
0,
'+04',
    ],
    [
62553672000, #    utc_start 1983-03-31 20:00:00 (Thu)
62569479600, #      utc_end 1983-09-30 19:00:00 (Fri)
62553690000, #  local_start 1983-04-01 01:00:00 (Fri)
62569497600, #    local_end 1983-10-01 00:00:00 (Sat)
18000,
1,
'+05',
    ],
    [
62569479600, #    utc_start 1983-09-30 19:00:00 (Fri)
62585294400, #      utc_end 1984-03-31 20:00:00 (Sat)
62569494000, #  local_start 1983-09-30 23:00:00 (Fri)
62585308800, #    local_end 1984-04-01 00:00:00 (Sun)
14400,
0,
'+04',
    ],
    [
62585294400, #    utc_start 1984-03-31 20:00:00 (Sat)
62601026400, #      utc_end 1984-09-29 22:00:00 (Sat)
62585312400, #  local_start 1984-04-01 01:00:00 (Sun)
62601044400, #    local_end 1984-09-30 03:00:00 (Sun)
18000,
1,
'+05',
    ],
    [
62601026400, #    utc_start 1984-09-29 22:00:00 (Sat)
62616751200, #      utc_end 1985-03-30 22:00:00 (Sat)
62601040800, #  local_start 1984-09-30 02:00:00 (Sun)
62616765600, #    local_end 1985-03-31 02:00:00 (Sun)
14400,
0,
'+04',
    ],
    [
62616751200, #    utc_start 1985-03-30 22:00:00 (Sat)
62632476000, #      utc_end 1985-09-28 22:00:00 (Sat)
62616769200, #  local_start 1985-03-31 03:00:00 (Sun)
62632494000, #    local_end 1985-09-29 03:00:00 (Sun)
18000,
1,
'+05',
    ],
    [
62632476000, #    utc_start 1985-09-28 22:00:00 (Sat)
62648200800, #      utc_end 1986-03-29 22:00:00 (Sat)
62632490400, #  local_start 1985-09-29 02:00:00 (Sun)
62648215200, #    local_end 1986-03-30 02:00:00 (Sun)
14400,
0,
'+04',
    ],
    [
62648200800, #    utc_start 1986-03-29 22:00:00 (Sat)
62663925600, #      utc_end 1986-09-27 22:00:00 (Sat)
62648218800, #  local_start 1986-03-30 03:00:00 (Sun)
62663943600, #    local_end 1986-09-28 03:00:00 (Sun)
18000,
1,
'+05',
    ],
    [
62663925600, #    utc_start 1986-09-27 22:00:00 (Sat)
62679650400, #      utc_end 1987-03-28 22:00:00 (Sat)
62663940000, #  local_start 1986-09-28 02:00:00 (Sun)
62679664800, #    local_end 1987-03-29 02:00:00 (Sun)
14400,
0,
'+04',
    ],
    [
62679650400, #    utc_start 1987-03-28 22:00:00 (Sat)
62695375200, #      utc_end 1987-09-26 22:00:00 (Sat)
62679668400, #  local_start 1987-03-29 03:00:00 (Sun)
62695393200, #    local_end 1987-09-27 03:00:00 (Sun)
18000,
1,
'+05',
    ],
    [
62695375200, #    utc_start 1987-09-26 22:00:00 (Sat)
62711100000, #      utc_end 1988-03-26 22:00:00 (Sat)
62695389600, #  local_start 1987-09-27 02:00:00 (Sun)
62711114400, #    local_end 1988-03-27 02:00:00 (Sun)
14400,
0,
'+04',
    ],
    [
62711100000, #    utc_start 1988-03-26 22:00:00 (Sat)
62726824800, #      utc_end 1988-09-24 22:00:00 (Sat)
62711118000, #  local_start 1988-03-27 03:00:00 (Sun)
62726842800, #    local_end 1988-09-25 03:00:00 (Sun)
18000,
1,
'+05',
    ],
    [
62726824800, #    utc_start 1988-09-24 22:00:00 (Sat)
62742549600, #      utc_end 1989-03-25 22:00:00 (Sat)
62726839200, #  local_start 1988-09-25 02:00:00 (Sun)
62742564000, #    local_end 1989-03-26 02:00:00 (Sun)
14400,
0,
'+04',
    ],
    [
62742549600, #    utc_start 1989-03-25 22:00:00 (Sat)
62758278000, #      utc_end 1989-09-23 23:00:00 (Sat)
62742564000, #  local_start 1989-03-26 02:00:00 (Sun)
62758292400, #    local_end 1989-09-24 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
62758278000, #    utc_start 1989-09-23 23:00:00 (Sat)
62774002800, #      utc_end 1990-03-24 23:00:00 (Sat)
62758288800, #  local_start 1989-09-24 02:00:00 (Sun)
62774013600, #    local_end 1990-03-25 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
62774002800, #    utc_start 1990-03-24 23:00:00 (Sat)
62790332400, #      utc_end 1990-09-29 23:00:00 (Sat)
62774017200, #  local_start 1990-03-25 03:00:00 (Sun)
62790346800, #    local_end 1990-09-30 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
62790332400, #    utc_start 1990-09-29 23:00:00 (Sat)
62806057200, #      utc_end 1991-03-30 23:00:00 (Sat)
62790343200, #  local_start 1990-09-30 02:00:00 (Sun)
62806068000, #    local_end 1991-03-31 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
62806057200, #    utc_start 1991-03-30 23:00:00 (Sat)
62837503200, #      utc_end 1992-03-28 22:00:00 (Sat)
62806071600, #  local_start 1991-03-31 03:00:00 (Sun)
62837517600, #    local_end 1992-03-29 02:00:00 (Sun)
14400,
0,
'+04',
    ],
    [
62837503200, #    utc_start 1992-03-28 22:00:00 (Sat)
62853231600, #      utc_end 1992-09-26 23:00:00 (Sat)
62837517600, #  local_start 1992-03-29 02:00:00 (Sun)
62853246000, #    local_end 1992-09-27 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
62853231600, #    utc_start 1992-09-26 23:00:00 (Sat)
62868956400, #      utc_end 1993-03-27 23:00:00 (Sat)
62853242400, #  local_start 1992-09-27 02:00:00 (Sun)
62868967200, #    local_end 1993-03-28 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
62868956400, #    utc_start 1993-03-27 23:00:00 (Sat)
62884681200, #      utc_end 1993-09-25 23:00:00 (Sat)
62868970800, #  local_start 1993-03-28 03:00:00 (Sun)
62884695600, #    local_end 1993-09-26 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
62884681200, #    utc_start 1993-09-25 23:00:00 (Sat)
62900406000, #      utc_end 1994-03-26 23:00:00 (Sat)
62884692000, #  local_start 1993-09-26 02:00:00 (Sun)
62900416800, #    local_end 1994-03-27 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
62900406000, #    utc_start 1994-03-26 23:00:00 (Sat)
62916130800, #      utc_end 1994-09-24 23:00:00 (Sat)
62900420400, #  local_start 1994-03-27 03:00:00 (Sun)
62916145200, #    local_end 1994-09-25 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
62916130800, #    utc_start 1994-09-24 23:00:00 (Sat)
62931855600, #      utc_end 1995-03-25 23:00:00 (Sat)
62916141600, #  local_start 1994-09-25 02:00:00 (Sun)
62931866400, #    local_end 1995-03-26 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
62931855600, #    utc_start 1995-03-25 23:00:00 (Sat)
62947580400, #      utc_end 1995-09-23 23:00:00 (Sat)
62931870000, #  local_start 1995-03-26 03:00:00 (Sun)
62947594800, #    local_end 1995-09-24 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
62947580400, #    utc_start 1995-09-23 23:00:00 (Sat)
62963910000, #      utc_end 1996-03-30 23:00:00 (Sat)
62947591200, #  local_start 1995-09-24 02:00:00 (Sun)
62963920800, #    local_end 1996-03-31 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
62963910000, #    utc_start 1996-03-30 23:00:00 (Sat)
62982054000, #      utc_end 1996-10-26 23:00:00 (Sat)
62963924400, #  local_start 1996-03-31 03:00:00 (Sun)
62982068400, #    local_end 1996-10-27 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
62982054000, #    utc_start 1996-10-26 23:00:00 (Sat)
62995359600, #      utc_end 1997-03-29 23:00:00 (Sat)
62982064800, #  local_start 1996-10-27 02:00:00 (Sun)
62995370400, #    local_end 1997-03-30 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
62995359600, #    utc_start 1997-03-29 23:00:00 (Sat)
63013503600, #      utc_end 1997-10-25 23:00:00 (Sat)
62995374000, #  local_start 1997-03-30 03:00:00 (Sun)
63013518000, #    local_end 1997-10-26 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
63013503600, #    utc_start 1997-10-25 23:00:00 (Sat)
63026809200, #      utc_end 1998-03-28 23:00:00 (Sat)
63013514400, #  local_start 1997-10-26 02:00:00 (Sun)
63026820000, #    local_end 1998-03-29 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
63026809200, #    utc_start 1998-03-28 23:00:00 (Sat)
63044953200, #      utc_end 1998-10-24 23:00:00 (Sat)
63026823600, #  local_start 1998-03-29 03:00:00 (Sun)
63044967600, #    local_end 1998-10-25 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
63044953200, #    utc_start 1998-10-24 23:00:00 (Sat)
63058258800, #      utc_end 1999-03-27 23:00:00 (Sat)
63044964000, #  local_start 1998-10-25 02:00:00 (Sun)
63058269600, #    local_end 1999-03-28 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
63058258800, #    utc_start 1999-03-27 23:00:00 (Sat)
63077007600, #      utc_end 1999-10-30 23:00:00 (Sat)
63058273200, #  local_start 1999-03-28 03:00:00 (Sun)
63077022000, #    local_end 1999-10-31 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
63077007600, #    utc_start 1999-10-30 23:00:00 (Sat)
63089708400, #      utc_end 2000-03-25 23:00:00 (Sat)
63077018400, #  local_start 1999-10-31 02:00:00 (Sun)
63089719200, #    local_end 2000-03-26 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
63089708400, #    utc_start 2000-03-25 23:00:00 (Sat)
63108457200, #      utc_end 2000-10-28 23:00:00 (Sat)
63089722800, #  local_start 2000-03-26 03:00:00 (Sun)
63108471600, #    local_end 2000-10-29 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
63108457200, #    utc_start 2000-10-28 23:00:00 (Sat)
63121158000, #      utc_end 2001-03-24 23:00:00 (Sat)
63108468000, #  local_start 2000-10-29 02:00:00 (Sun)
63121168800, #    local_end 2001-03-25 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
63121158000, #    utc_start 2001-03-24 23:00:00 (Sat)
63139906800, #      utc_end 2001-10-27 23:00:00 (Sat)
63121172400, #  local_start 2001-03-25 03:00:00 (Sun)
63139921200, #    local_end 2001-10-28 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
63139906800, #    utc_start 2001-10-27 23:00:00 (Sat)
63153212400, #      utc_end 2002-03-30 23:00:00 (Sat)
63139917600, #  local_start 2001-10-28 02:00:00 (Sun)
63153223200, #    local_end 2002-03-31 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
63153212400, #    utc_start 2002-03-30 23:00:00 (Sat)
63171356400, #      utc_end 2002-10-26 23:00:00 (Sat)
63153226800, #  local_start 2002-03-31 03:00:00 (Sun)
63171370800, #    local_end 2002-10-27 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
63171356400, #    utc_start 2002-10-26 23:00:00 (Sat)
63184662000, #      utc_end 2003-03-29 23:00:00 (Sat)
63171367200, #  local_start 2002-10-27 02:00:00 (Sun)
63184672800, #    local_end 2003-03-30 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
63184662000, #    utc_start 2003-03-29 23:00:00 (Sat)
63202806000, #      utc_end 2003-10-25 23:00:00 (Sat)
63184676400, #  local_start 2003-03-30 03:00:00 (Sun)
63202820400, #    local_end 2003-10-26 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
63202806000, #    utc_start 2003-10-25 23:00:00 (Sat)
63216111600, #      utc_end 2004-03-27 23:00:00 (Sat)
63202816800, #  local_start 2003-10-26 02:00:00 (Sun)
63216122400, #    local_end 2004-03-28 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
63216111600, #    utc_start 2004-03-27 23:00:00 (Sat)
63234860400, #      utc_end 2004-10-30 23:00:00 (Sat)
63216126000, #  local_start 2004-03-28 03:00:00 (Sun)
63234874800, #    local_end 2004-10-31 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
63234860400, #    utc_start 2004-10-30 23:00:00 (Sat)
63247561200, #      utc_end 2005-03-26 23:00:00 (Sat)
63234871200, #  local_start 2004-10-31 02:00:00 (Sun)
63247572000, #    local_end 2005-03-27 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
63247561200, #    utc_start 2005-03-26 23:00:00 (Sat)
63266310000, #      utc_end 2005-10-29 23:00:00 (Sat)
63247575600, #  local_start 2005-03-27 03:00:00 (Sun)
63266324400, #    local_end 2005-10-30 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
63266310000, #    utc_start 2005-10-29 23:00:00 (Sat)
63279010800, #      utc_end 2006-03-25 23:00:00 (Sat)
63266320800, #  local_start 2005-10-30 02:00:00 (Sun)
63279021600, #    local_end 2006-03-26 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
63279010800, #    utc_start 2006-03-25 23:00:00 (Sat)
63297759600, #      utc_end 2006-10-28 23:00:00 (Sat)
63279025200, #  local_start 2006-03-26 03:00:00 (Sun)
63297774000, #    local_end 2006-10-29 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
63297759600, #    utc_start 2006-10-28 23:00:00 (Sat)
63310460400, #      utc_end 2007-03-24 23:00:00 (Sat)
63297770400, #  local_start 2006-10-29 02:00:00 (Sun)
63310471200, #    local_end 2007-03-25 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
63310460400, #    utc_start 2007-03-24 23:00:00 (Sat)
63329209200, #      utc_end 2007-10-27 23:00:00 (Sat)
63310474800, #  local_start 2007-03-25 03:00:00 (Sun)
63329223600, #    local_end 2007-10-28 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
63329209200, #    utc_start 2007-10-27 23:00:00 (Sat)
63342514800, #      utc_end 2008-03-29 23:00:00 (Sat)
63329220000, #  local_start 2007-10-28 02:00:00 (Sun)
63342525600, #    local_end 2008-03-30 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
63342514800, #    utc_start 2008-03-29 23:00:00 (Sat)
63360658800, #      utc_end 2008-10-25 23:00:00 (Sat)
63342529200, #  local_start 2008-03-30 03:00:00 (Sun)
63360673200, #    local_end 2008-10-26 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
63360658800, #    utc_start 2008-10-25 23:00:00 (Sat)
63373964400, #      utc_end 2009-03-28 23:00:00 (Sat)
63360669600, #  local_start 2008-10-26 02:00:00 (Sun)
63373975200, #    local_end 2009-03-29 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
63373964400, #    utc_start 2009-03-28 23:00:00 (Sat)
63392108400, #      utc_end 2009-10-24 23:00:00 (Sat)
63373978800, #  local_start 2009-03-29 03:00:00 (Sun)
63392122800, #    local_end 2009-10-25 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
63392108400, #    utc_start 2009-10-24 23:00:00 (Sat)
63405414000, #      utc_end 2010-03-27 23:00:00 (Sat)
63392119200, #  local_start 2009-10-25 02:00:00 (Sun)
63405424800, #    local_end 2010-03-28 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
63405414000, #    utc_start 2010-03-27 23:00:00 (Sat)
63424162800, #      utc_end 2010-10-30 23:00:00 (Sat)
63405428400, #  local_start 2010-03-28 03:00:00 (Sun)
63424177200, #    local_end 2010-10-31 03:00:00 (Sun)
14400,
1,
'+04',
    ],
    [
63424162800, #    utc_start 2010-10-30 23:00:00 (Sat)
63436863600, #      utc_end 2011-03-26 23:00:00 (Sat)
63424173600, #  local_start 2010-10-31 02:00:00 (Sun)
63436874400, #    local_end 2011-03-27 02:00:00 (Sun)
10800,
0,
'+03',
    ],
    [
63436863600, #    utc_start 2011-03-26 23:00:00 (Sat)
63549957600, #      utc_end 2014-10-25 22:00:00 (Sat)
63436878000, #  local_start 2011-03-27 03:00:00 (Sun)
63549972000, #    local_end 2014-10-26 02:00:00 (Sun)
14400,
0,
'+04',
    ],
    [
63549957600, #    utc_start 2014-10-25 22:00:00 (Sat)
DateTime::TimeZone::INFINITY, #      utc_end
63549968400, #  local_start 2014-10-26 01:00:00 (Sun)
DateTime::TimeZone::INFINITY, #    local_end
10800,
0,
'+03',
    ],
];

sub olson_version {'2018d'}

sub has_dst_changes {29}

sub _max_year {2028}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}



1;

