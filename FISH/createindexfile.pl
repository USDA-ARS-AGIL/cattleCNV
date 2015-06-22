#!/usr/local/bin/perl -w

use strict;
use vars qw($no $bac $corna $cell1 $cell2 $cell3 $cnv);

open (BAC2,"tableelement.txt")||die "can not open file";

open (OUT,">bacwithname")||die "can not open file";

while (<BAC2>) {
	s/\r\n/\n/;
	chomp;
	($no,$bac, $corna, $cell1, $cell2, $cell3, $cnv)=split(/\t/,$_);
print OUT "<tr style='mso-yfti-irow:17;height:25pt'>
  <td width=100 style='width:100pt;background:#FFFFD1;padding:0in 0in 0in 0in;
  height:25pt'>
  <p class=MsoNormal align=center style='text-align:center;color:black'><b><span
  style='mso-fareast-font-family:\"Times New Roman\"'>$no <o:p></o:p></span></b></p>
  </td>
    <td width=500 style='width:500pt;background:#FFFFD1;padding:0in 0in 0in 0in;
    height:25pt'>
    <p class=MsoNormal align=center style='text-align:center;color:black'><b><span
    style='mso-fareast-font-family:\"Times New Roman\"'><a href=\"_$bac\.html\">$bac</a><o:p></o:p></span></b></p>
    </td>
    <td width=1000 style='width:1000pt;background:#FFFFD1;padding:0in 0in 0in 0in;
    height:25pt'>
    <p class=MsoNormal align=center style='text-align:center;color:black'><b><span
    style='mso-fareast-font-family:\"Times New Roman\"'>$corna<o:p></o:p></span></b></p>
    </td>
    <td width=200 style='width:200pt;background:#FFFFD1;padding:0in 0in 0in 0in;
    height:25pt'>
    <p class=MsoNormal align=center style='text-align:center;color:black'><b><span
    style='mso-fareast-font-family:\"Times New Roman\"'>$cell1<o:p></o:p></span></b></p>
    </td>
    <td width=200 style='width:200pt;background:#FFFFD1;padding:0in 0in 0in 0in;
    height:25pt'>
    <p class=MsoNormal align=center style='text-align:center;color:black'><b><span
    style='mso-fareast-font-family:\"Times New Roman\"'>$cell2<o:p></o:p></span></b></p>
    </td>
    <td width=200 style='width:200pt;background:#FFFFD1;padding:0in 0in 0in 0in;
    height:25pt'>
    <p class=MsoNormal align=center style='text-align:center;color:black'><b><span
    style='mso-fareast-font-family:\"Times New Roman\"'>$cell3<o:p></o:p></span></b></p>
    </td>
    <td width=400 style='width:400pt;background:#FFFFD1;padding:0in 0in 0in 0in;
    height:25pt'>
    <p class=MsoNormal align=center style='text-align:center;color:black'><b><span
    style='mso-fareast-font-family:\"Times New Roman\"'>$cnv <o:p></o:p></span></b></p>
    </td>
   </tr>
   ";
}
close BAC2;
close OUT;
