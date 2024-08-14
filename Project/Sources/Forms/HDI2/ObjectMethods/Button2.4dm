If (Form:C1466.trace)
	TRACE:C157
End if 

$section:=WP Get section:C1581(Form:C1466.wp1; 3)
If ($section#Null:C1517)
	
	// two possible syntaxes : 
	
	//WP DELETE SECTION(form.wp1; 3)
	//WP DELETE SECTION($section)
	
	WP DELETE SECTION:C1842($section)
Else 
	ALERT:C41("Section 3 does not exist anymore!")
End if 

Form:C1466.action:="calcStats"
SET TIMER:C645(-1)