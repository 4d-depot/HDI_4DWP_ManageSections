var $subSection : Object

If (Form:C1466.trace)
	TRACE:C157
End if 

$subSection:=WP Get subsection:C1582(WP Get section:C1581(Form:C1466.wp1; 1); wk right page:K81:205)
WP RESET ATTRIBUTES:C1344($subSection)  // no attribute names needed !