Class pop.Sign.Dylan Extends (%Persistent, %Populate) [ DdlAllowed ]
{

Property HeartRate As %Integer(MAXVAL = 140, MINVAL = 60);

Property CollectedTime As %String(POPSPEC = ".GenerateCollectTime()");

ClassMethod GenerateCollectTime()
{
            Set ^Demo.timestamp = $H   // Collect the current timestamp
            Set time = $Get(^Demo.timestamp)
            Write "Timestamp: ", $ZDATETIME(time,3), !
            set updatetime = $ZDATETIME((time+1), 3)
            Set ^Demo.timestamp = updatetime
            Write "Timestamp: ", updatetime, !
            Quit updatetime
}

Storage Default
{
<Data name="DylanDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>HeartRate</Value>
</Value>
<Value name="3">
<Value>CollectedTime</Value>
</Value>
</Data>
<DataLocation>^pop.Sign.DylanD</DataLocation>
<DefaultData>DylanDefaultData</DefaultData>
<IdLocation>^pop.Sign.DylanD</IdLocation>
<IndexLocation>^pop.Sign.DylanI</IndexLocation>
<StreamLocation>^pop.Sign.DylanS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
