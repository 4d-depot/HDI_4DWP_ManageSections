If (Form:C1466.trace)
	TRACE:C157
End if 

$section:=WP Get section:C1581(Form:C1466.wp1; 3)
WP RESET ATTRIBUTES:C1344($section)  // no attribute names needed !

Form:C1466.action:="calcStats"
SET TIMER:C645(-1)