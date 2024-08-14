//%attributes = {}
#DECLARE($document : Object)->$stats : Text

var $allPictures; $allSections; $allTextBoxes : Collection
//var $picturesSection; $textBoxesSection : Collection
//var $picturesSubSection; $textBoxesSubSection : Collection


$stats:=""

$allSections:=WP Get sections:C1580($document)
$allPictures:=WP Get elements:C1550($document; wk type image:K81:192)
$allTextBoxes:=WP Get elements:C1550($document; wk type text box:K81:372)

$stats+=String:C10($allSections.length)+" sections.\r"
$stats+=String:C10($allPictures.length)+" pictures.\r"
$stats+=String:C10($allTextBoxes.length)+" text boxes.\r\r"




//$i:=1
//For each ($section; $allSections)
//Form.stats+="Section "+String($i)+" contains: \r"

//$picturesSection:=$allPictures.query("anchorSection = :1"; $i)
//If ($picturesSection.length>0)
//Form.stats+="  - "+String($picturesSection.length)+" pictures\r"
//End if 
//$textBoxesSection:=$allTextBoxes.query("anchorSection = :1"; $i)
//If ($textBoxesSection.length>0)
//Form.stats+="  - "+String($textBoxesSection.length)+" text boxes\r"
//End if 

//$hf:=WP Get header($section)
//If ($hf#Null)
//Form.stats+="  - a header\r"
//End if 
//$hf:=WP Get footer($section)
//If ($hf#Null)
//Form.stats+="  - a footer\r"
//End if 

//$types:=[wk first page; wk left page; wk right page]

//For each ($type; $types)

//$sub:=WP Get subsection($section; $type)
//If ($sub#Null)
//Case of 
//: ($type=wk first page)
//Form.stats+="  - a first page"
//$anchorPage:=wk anchor first page  // -2
//: ($type=wk left page)
//Form.stats+="  - a left page"
//$anchorPage:=wk anchor left page  //-3
//: ($type=wk right page)
//Form.stats+="  - a right page"
//$anchorPage:=wk anchor right page  //-4
//End case 

//$picturesSubSection:=$picturesSection.query("anchorPage = :1"; $anchorPage)
//$textBoxesSubSection:=$textBoxesSection.query("anchorPage = :1"; $anchorPage)

//$header:=WP Get header($sub)
//$footer:=WP Get footer($sub)

//If ($picturesSubSection.length>0) || ($textBoxesSubSection.length>0) || ($header#Null) || ($footer#Null)

//Form.stats+=" with:\r"

//If ($picturesSubSection.length>0)
//Form.stats+="     - "+String($picturesSubSection.length)+" pictures\r"
//End if 
//If ($textBoxesSubSection.length>0)
//Form.stats+="     - "+String($textBoxesSubSection.length)+" text boxes\r"
//End if 
//If ($header#Null)
//Form.stats+="     - a header\r"
//End if 
//If ($footer#Null)
//Form.stats+="     - a footer\r"
//End if 
//Else 
//Form.stats+="\r"
//End if 
//Else 

//End if 

//End for each 

//Form.stats+="\r"
//$i+=1
//End for each 

//$sectionCount:=$allSections.length
