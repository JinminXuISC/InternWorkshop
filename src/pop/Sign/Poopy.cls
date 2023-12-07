Class InternWorkshop.src.pop.Sign.Poopy Extends (%Persistent, %Populate) [ DdlAllowed ]
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
<Data name="PoopyDefaultData">
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
<DataLocation>^InternWorkshop.src.p5070.PoopyD</DataLocation>
<DefaultData>PoopyDefaultData</DefaultData>
<IdLocation>^InternWorkshop.src.p5070.PoopyD</IdLocation>
<IndexLocation>^InternWorkshop.src.p5070.PoopyI</IndexLocation>
<StreamLocation>^InternWorkshop.src.p5070.PoopyS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
