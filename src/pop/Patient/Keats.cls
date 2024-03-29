Class pop.Patient.Keats Extends (%Persistent, %Populate) [ DdlAllowed ]
{

Property Name As %String;

Property Age As %Integer(MAXVAL = 90, MINVAL = 1);

// Added gender property for patient

Property Gender As %String;

Property PhoneNum As %Integer(POPSPEC = ".GenerateRandomMobileNumber()");

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

Storage Default
{
<Data name="KeatsDefaultData">
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
<DataLocation>^pop.Patient.KeatsD</DataLocation>
<DefaultData>KeatsDefaultData</DefaultData>
<IdLocation>^pop.Patient.KeatsD</IdLocation>
<IndexLocation>^pop.Patient.KeatsI</IndexLocation>
<StreamLocation>^pop.Patient.KeatsS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
