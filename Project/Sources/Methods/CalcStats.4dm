//%attributes = {}
#DECLARE($document : Object)->$stats : Text

var $allPictures; $allSections; $allTextBoxes : Collection
var $section; $subSection : Object
var $subSectionsFirst; $subSectionsLR : Integer

$stats:=""

$allSections:=WP Get sections:C1580($document)
$allPictures:=WP Get elements:C1550($document; wk type image:K81:192)
$allTextBoxes:=WP Get elements:C1550($document; wk type text box:K81:372)

$subSectionsFirst:=0
$subSectionsLR:=0

For each ($section; $allSections)
	$subSection:=WP Get subsection:C1582($section; wk first page:K81:203)
	If ($subSection#Null:C1517)
		$subSectionsFirst+=1
	End if 
	$subSection:=WP Get subsection:C1582($section; wk right page:K81:205)
	If ($subSection#Null:C1517)
		$subSectionsLR+=1
	End if 
End for each 






If ($allSections.length<2)
	$stats+=String:C10($allSections.length)+" section.\r"
Else 
	$stats+=String:C10($allSections.length)+" sections.\r"
End if 

If ($subSectionsFirst#0)
	If ($subSectionsFirst<2)
		$stats+=String:C10($subSectionsFirst)+" subsection (1st).\r"
	Else 
		$stats+=String:C10($subSectionsFirst)+" subsections (1st).\r"
	End if 
End if 

If ($subSectionsLR#0)
	If ($subSectionsLR<2)
		$stats+=String:C10($subSectionsLR)+" subsection (l/r).\r"
	Else 
		$stats+=String:C10($subSectionsLR)+" subsections (l/r).\r"
	End if 
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
