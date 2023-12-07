Class pop.Patient.Jun Extends (%Persistent, %Populate) [ DdlAllowed ]
{

Property Name As %String [ Required ];

Property Age As %Integer(MAXVAL = 90, MINVAL = 1);

Property PhoneNum As %Integer(POPSPEC = ".GenerateRandomMobileNumber()");

Property Gender As %String;

Property Pronoun As %String;

ClassMethod PrintPatientInfo() As %Status
{
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

Storage Default
{
<Data name="JunDefaultData">
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
<Value>PhoneNum</Value>
</Value>
<Value name="5">
<Value>Gender</Value>
</Value>
<Value name="6">
<Value>Pronoun</Value>
</Value>
</Data>
<DataLocation>^pop.Patient.JunD</DataLocation>
<DefaultData>JunDefaultData</DefaultData>
<IdLocation>^pop.Patient.JunD</IdLocation>
<IndexLocation>^pop.Patient.JunI</IndexLocation>
<StreamLocation>^pop.Patient.JunS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
