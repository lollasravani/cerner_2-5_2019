/* cerner_2^5_2019
 Language used: CCL
 Output: CERNER (printed through asterisk symbols)*/
drop program day4:dba go
create program day4:dba
prompt 
	"Output to File/Printer/MINE" = "MINE"   

with OUTDEV
select into $outdev
from (dummyt d1 with seq = 1)
plan d1
head report
col 55 "Cerner_2^5_programming_Day4"
row +3
I_AM = " *****   *****   ***     *   *   *****   ***"
AT = "*        *       *  *    *  **   *       *  *"
CERNER = " *****   *****   *   *   *   *   *****   *   *"
A = "*        *       *  *    **  *   *       *  *"
DEVELOPER = "*        *****   ***     * * *   *****   ***"

col 45 I_AM
row+1
col 45 A
row+1
col 45 DEVELOPER
row+1
col 45 AT
row+1
col 45 CERNER
with nocounter
end
go
