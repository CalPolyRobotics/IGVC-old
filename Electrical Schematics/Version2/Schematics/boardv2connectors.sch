<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="14" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="connectors">
<packages>
<package name="34830-2001">
<pad name="P$6" x="1.75" y="1.75" drill="1.5" rot="R90"/>
<pad name="P$5" x="-1.75" y="1.75" drill="1.5" rot="R90"/>
<pad name="P$15" x="-1.75" y="-1.75" drill="1.5" rot="R90"/>
<pad name="P$16" x="1.72" y="-1.75" drill="1.5" rot="R90"/>
<pad name="P$7" x="5.25" y="1.75" drill="1.5" rot="R90"/>
<pad name="P$17" x="5.25" y="-1.75" drill="1.5" rot="R90"/>
<pad name="P$8" x="8.75" y="1.75" drill="1.5" rot="R90"/>
<pad name="P$18" x="8.75" y="-1.75" drill="1.5" rot="R90"/>
<pad name="P$9" x="12.25" y="1.75" drill="1.5" rot="R90"/>
<pad name="P$19" x="12.25" y="-1.75" drill="1.5" rot="R90"/>
<pad name="P$10" x="15.75" y="1.75" drill="1.5" rot="R90"/>
<pad name="P$20" x="15.75" y="-1.75" drill="1.5" rot="R90"/>
<pad name="P$4" x="-5.25" y="1.75" drill="1.5" rot="R90"/>
<pad name="P$14" x="-5.25" y="-1.75" drill="1.5" rot="R90"/>
<pad name="P$3" x="-8.75" y="1.75" drill="1.5" rot="R90"/>
<pad name="P$13" x="-8.75" y="-1.75" drill="1.5" rot="R90"/>
<pad name="P$2" x="-12.25" y="1.75" drill="1.5" rot="R90"/>
<pad name="P$12" x="-12.25" y="-1.75" drill="1.5" rot="R90"/>
<pad name="P$1" x="-15.75" y="1.75" drill="1.5" shape="square" rot="R90"/>
<pad name="P$11" x="-15.75" y="-1.75" drill="1.5" rot="R90"/>
<hole x="-22.75" y="-0.71" drill="4"/>
<hole x="22.75" y="-0.71" drill="4"/>
<wire x1="27.41" y1="-7.39" x2="27.41" y2="6.25" width="0.127" layer="51"/>
<wire x1="27.41" y1="6.25" x2="-27.41" y2="6.25" width="0.127" layer="51"/>
<wire x1="-27.41" y1="6.25" x2="-27.41" y2="-7.39" width="0.127" layer="51"/>
<wire x1="-27.41" y1="-7.39" x2="27.41" y2="-7.39" width="0.127" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="34830-2001">
<wire x1="-30.48" y1="2.54" x2="22.86" y2="2.54" width="0.254" layer="94"/>
<wire x1="22.86" y1="2.54" x2="22.86" y2="-5.08" width="0.254" layer="94"/>
<wire x1="22.86" y1="-5.08" x2="-30.48" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-30.48" y1="-5.08" x2="-30.48" y2="2.54" width="0.254" layer="94"/>
<pin name="P$1" x="-27.94" y="7.62" length="middle" rot="R270"/>
<pin name="P$2" x="-25.4" y="7.62" length="middle" rot="R270"/>
<pin name="P$3" x="-22.86" y="7.62" length="middle" rot="R270"/>
<pin name="P$4" x="-20.32" y="7.62" length="middle" rot="R270"/>
<pin name="P$5" x="-17.78" y="7.62" length="middle" rot="R270"/>
<pin name="P$6" x="-15.24" y="7.62" length="middle" rot="R270"/>
<pin name="P$7" x="-12.7" y="7.62" length="middle" rot="R270"/>
<pin name="P$8" x="-10.16" y="7.62" length="middle" rot="R270"/>
<pin name="P$9" x="-7.62" y="7.62" length="middle" rot="R270"/>
<pin name="P$10" x="-5.08" y="7.62" length="middle" rot="R270"/>
<pin name="P$11" x="-2.54" y="7.62" length="middle" rot="R270"/>
<pin name="P$12" x="0" y="7.62" length="middle" rot="R270"/>
<pin name="P$13" x="2.54" y="7.62" length="middle" rot="R270"/>
<pin name="P$14" x="5.08" y="7.62" length="middle" rot="R270"/>
<pin name="P$15" x="7.62" y="7.62" length="middle" rot="R270"/>
<pin name="P$16" x="10.16" y="7.62" length="middle" rot="R270"/>
<pin name="P$17" x="12.7" y="7.62" length="middle" rot="R270"/>
<pin name="P$18" x="15.24" y="7.62" length="middle" rot="R270"/>
<pin name="P$19" x="17.78" y="7.62" length="middle" rot="R270"/>
<pin name="P$20" x="20.32" y="7.62" length="middle" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="34830-2001">
<gates>
<gate name="G$1" symbol="34830-2001" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="34830-2001">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$10" pad="P$10"/>
<connect gate="G$1" pin="P$11" pad="P$11"/>
<connect gate="G$1" pin="P$12" pad="P$12"/>
<connect gate="G$1" pin="P$13" pad="P$13"/>
<connect gate="G$1" pin="P$14" pad="P$14"/>
<connect gate="G$1" pin="P$15" pad="P$15"/>
<connect gate="G$1" pin="P$16" pad="P$16"/>
<connect gate="G$1" pin="P$17" pad="P$17"/>
<connect gate="G$1" pin="P$18" pad="P$18"/>
<connect gate="G$1" pin="P$19" pad="P$19"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
<connect gate="G$1" pin="P$20" pad="P$20"/>
<connect gate="G$1" pin="P$3" pad="P$3"/>
<connect gate="G$1" pin="P$4" pad="P$4"/>
<connect gate="G$1" pin="P$5" pad="P$5"/>
<connect gate="G$1" pin="P$6" pad="P$6"/>
<connect gate="G$1" pin="P$7" pad="P$7"/>
<connect gate="G$1" pin="P$8" pad="P$8"/>
<connect gate="G$1" pin="P$9" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DOCFIELD" prefix="FRAME" uservalue="yes">
<description>&lt;B&gt;DOCUMENT FIELD&lt;/B&gt;</description>
<gates>
<gate name="G$1" symbol="DOCFIELD" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="connectors" deviceset="34830-2001" device=""/>
<part name="FRAME1" library="frames" deviceset="DOCFIELD" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<frame x1="10.16" y1="-40.64" x2="193.04" y2="106.68" columns="8" rows="5" layer="91"/>
<text x="33.02" y="88.9" size="5.08" layer="91">Connector Block</text>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="81.28" y="27.94"/>
<instance part="FRAME1" gate="G$1" x="86.36" y="-35.56"/>
</instances>
<busses>
<bus name="BATTERYBUS">
<segment>
<wire x1="66.04" y1="63.5" x2="88.9" y2="63.5" width="0.762" layer="92"/>
<label x="88.9" y="63.5" size="1.778" layer="95"/>
</segment>
</bus>
<bus name="FNRBUS">
<segment>
<wire x1="33.02" y1="38.1" x2="33.02" y2="55.88" width="0.762" layer="92"/>
<label x="33.02" y="35.56" size="1.778" layer="95"/>
</segment>
</bus>
</busses>
<nets>
<net name="F" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$1"/>
<wire x1="53.34" y1="35.56" x2="53.34" y2="40.64" width="0.1524" layer="91"/>
<wire x1="53.34" y1="40.64" x2="33.02" y2="40.64" width="0.1524" layer="91"/>
<label x="33.02" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="R" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$2"/>
<wire x1="55.88" y1="35.56" x2="55.88" y2="43.18" width="0.1524" layer="91"/>
<wire x1="55.88" y1="43.18" x2="33.02" y2="43.18" width="0.1524" layer="91"/>
<label x="33.02" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="THROTTLE+" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$3"/>
<wire x1="58.42" y1="35.56" x2="58.42" y2="45.72" width="0.1524" layer="91"/>
<wire x1="58.42" y1="45.72" x2="33.02" y2="45.72" width="0.1524" layer="91"/>
<label x="33.02" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="THROTTLE-" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$4"/>
<wire x1="60.96" y1="35.56" x2="60.96" y2="48.26" width="0.1524" layer="91"/>
<wire x1="60.96" y1="48.26" x2="33.02" y2="48.26" width="0.1524" layer="91"/>
<label x="33.02" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="THROTTLEWIPER" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$5"/>
<wire x1="63.5" y1="35.56" x2="63.5" y2="50.8" width="0.1524" layer="91"/>
<wire x1="63.5" y1="50.8" x2="33.02" y2="50.8" width="0.1524" layer="91"/>
<label x="33.02" y="50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="GROUND" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$6"/>
<wire x1="66.04" y1="35.56" x2="66.04" y2="53.34" width="0.1524" layer="91"/>
<wire x1="66.04" y1="53.34" x2="33.02" y2="53.34" width="0.1524" layer="91"/>
<label x="33.02" y="53.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="BAT1+" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$7"/>
<wire x1="68.58" y1="35.56" x2="68.58" y2="63.5" width="0.1524" layer="91"/>
<label x="68.58" y="63.5" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="BAT1-" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$8"/>
<wire x1="71.12" y1="35.56" x2="71.12" y2="63.5" width="0.1524" layer="91"/>
<label x="71.12" y="63.5" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="BAT2+" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$9"/>
<wire x1="73.66" y1="35.56" x2="73.66" y2="63.5" width="0.1524" layer="91"/>
<label x="73.66" y="63.5" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="BAT2-" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$10"/>
<wire x1="76.2" y1="35.56" x2="76.2" y2="63.5" width="0.1524" layer="91"/>
<label x="76.2" y="63.5" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="BAT3+" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$11"/>
<wire x1="78.74" y1="35.56" x2="78.74" y2="63.5" width="0.1524" layer="91"/>
<label x="78.74" y="63.5" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="BAT3-" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$12"/>
<wire x1="81.28" y1="35.56" x2="81.28" y2="63.5" width="0.1524" layer="91"/>
<label x="81.28" y="63.5" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="BAT4+" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$13"/>
<wire x1="83.82" y1="35.56" x2="83.82" y2="63.5" width="0.1524" layer="91"/>
<label x="83.82" y="63.5" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="BAT4-" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$14"/>
<wire x1="86.36" y1="35.56" x2="86.36" y2="63.5" width="0.1524" layer="91"/>
<label x="86.36" y="63.5" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="MOTOR+" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$15"/>
<wire x1="88.9" y1="35.56" x2="88.9" y2="45.72" width="0.1524" layer="91"/>
<wire x1="88.9" y1="45.72" x2="109.22" y2="45.72" width="0.1524" layer="91"/>
<label x="109.22" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="MOTOR-" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$16"/>
<wire x1="91.44" y1="35.56" x2="91.44" y2="43.18" width="0.1524" layer="91"/>
<wire x1="91.44" y1="43.18" x2="109.22" y2="43.18" width="0.1524" layer="91"/>
<label x="109.22" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
