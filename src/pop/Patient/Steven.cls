Class pop.Patient.Steven Extends (%Persistent, %Populate) [ DdlAllowed ]
{

Property Name As %String;

Property Age As %Integer(MAXVAL = 90, MINVAL = 1);

// Steven wrote this integer gender

Property Gender As %Integer;

Property PhoneNum As %Integer(POPSPEC = ".GenerateRandomMobileNumber()");

ClassMethod GenerateRandomMobileNumber() As %Integer
{
            // Steven wrote this
            write "I am in the mobile number generator"
            //Set countryCode = "+61"  
            Set areaCode = "04"
            Set firstPart = $RANDOM(900) + 100
            Set secondPart = $RANDOM(90000) + 10000
            Set randomMobileNumber =  areaCode _ firstPart _ secondPart
            //write randomMobileNumber
            Quit randomMobileNumber
}

Storage Default
{
<Data name="StevenDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Age</Value>
</Value>
<Value name="4">
<Value>Gender</Value>
</Value>
<Value name="5">
<Value>PhoneNum</Value>
</Value>
</Data>
<DataLocation>^pop.Patient.StevenD</DataLocation>
<DefaultData>StevenDefaultData</DefaultData>
<IdLocation>^pop.Patient.StevenD</IdLocation>
<IndexLocation>^pop.Patient.StevenI</IndexLocation>
<StreamLocation>^pop.Patient.StevenS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
