Class pop.Sign.Xu Extends (%Persistent, %Populate) [ DdlAllowed ]
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
<Data name="XuDefaultData">
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
<DataLocation>^pop.Sign.XuD</DataLocation>
<DefaultData>XuDefaultData</DefaultData>
<IdLocation>^pop.Sign.XuD</IdLocation>
<IndexLocation>^pop.Sign.XuI</IndexLocation>
<StreamLocation>^pop.Sign.XuS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
