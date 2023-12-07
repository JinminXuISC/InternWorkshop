Class pop.Patient.Jun Extends (%Persistent, %Populate) [ DdlAllowed ]
{
    Property Name As %String [ Required ];

    Property Age As %Integer(MAXVAL = 90, MINVAL = 1);

    Property PhoneNum As %Integer(POPSPEC = ".GenerateRandomMobileNumber()");

    Property Gender As %String;

    Property Pronoun As %String;

    ClassMethod PrintPatientInfo() As %Status {
        
    }

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