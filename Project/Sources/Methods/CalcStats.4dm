//%attributes = {}
#DECLARE($document : Object)->$stats : Text

var $allPictures; $allSections; $allTextBoxes : Collection

$stats:=""

$allSections:=WP Get sections:C1580($document)
$allPictures:=WP Get elements:C1550($document; wk type image:K81:192)
$allTextBoxes:=WP Get elements:C1550($document; wk type text box:K81:372)

If ($allSections.length<2)
	$stats+=String:C10($allSections.length)+" section.\r"
Else 
	$stats+=String:C10($allSections.length)+" sections.\r"
End if 
If ($allPictures.length<2)
	$stats+=String:C10($allPictures.length)+" picture.\r"
Else 
	$stats+=String:C10($allPictures.length)+" picture(s).\r"
End if 
If ($allTextBoxes.length<2)
	$stats+=String:C10($allTextBoxes.length)+" text box.\r"
Else 
	$stats+=String:C10($allTextBoxes.length)+" text boxe(s).\r"
End if 
