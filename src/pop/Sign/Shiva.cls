Class pop.Sign.Shiva Extends %RegisteredObject
{

Property Name As %String;

Property Age As %Integer(MAXVAL = 90, MINVAL = 1);

// This method generates a random mobile number

ClassMethod GenerateRandomMobileNumber() As %Integer
{
    //Set countryCode = "+61"  
    Set areaCode = "04"
    Set firstPart = $RANDOM(900) + 100
    Set secondPart = $RANDOM(90000) + 10000
    Set randomMobileNumber =  areaCode _ firstPart _ secondPart
    //write randomMobileNumber
    Quit randomMobileNumber
}

}
