If (Form:C1466.trace)
	TRACE:C157
End if 

$section:=WP Get section:C1581(Form:C1466.wp1; 1)
//section 1 always exists but it can't be deleted if it's the last one!

Try
	WP DELETE SECTION:C1842($section)
Catch
	ALERT:C41("The last remaining section can't be deleted")
End try

Form:C1466.action:="calcStats"
SET TIMER:C645(-1)