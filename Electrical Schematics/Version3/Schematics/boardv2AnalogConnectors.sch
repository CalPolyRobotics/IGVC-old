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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
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
<library name="jumper">
<description>&lt;b&gt;Jumpers&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="JP2">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-3.81" y1="-1.016" x2="-3.81" y2="1.016" width="0.1524" layer="21"/>
<wire x1="3.556" y1="1.27" x2="1.524" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.016" x2="1.524" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.556" y1="-1.27" x2="1.524" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.016" x2="1.524" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.556" y1="-1.27" x2="3.81" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="3.556" y1="1.27" x2="3.81" y2="1.016" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.016" x2="3.81" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.016" y1="1.27" x2="1.27" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.016" y1="1.27" x2="-1.016" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.016" x2="-1.016" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.27" x2="-1.27" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.016" x2="-3.556" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.27" x2="-3.556" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-1.27" x2="1.27" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.016" x2="-1.016" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.27" x2="-1.27" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.016" x2="-3.556" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-1.27" x2="-1.016" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.27" x2="-3.556" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="0.9144" shape="long" rot="R90"/>
<text x="-3.556" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.667" size="0.9906" layer="21" ratio="12">1</text>
<text x="0" y="-2.667" size="0.9906" layer="21" ratio="12">2</text>
<text x="2.54" y="-2.667" size="0.9906" layer="21" ratio="12">3</text>
<text x="-3.556" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.8448" y1="-0.3048" x2="-2.2352" y2="0.3048" layer="51"/>
<rectangle x1="-0.3048" y1="-0.3048" x2="0.3048" y2="0.3048" layer="51"/>
<rectangle x1="2.2352" y1="-0.3048" x2="2.8448" y2="0.3048" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="JP3E">
<wire x1="2.54" y1="0" x2="2.54" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="1.27" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="1.27" width="0.4064" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.27" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="1.27" width="0.4064" layer="94"/>
<wire x1="-3.175" y1="0" x2="3.175" y2="0" width="0.4064" layer="94"/>
<wire x1="3.175" y1="0" x2="3.175" y2="0.635" width="0.4064" layer="94"/>
<wire x1="3.175" y1="0.635" x2="-3.175" y2="0.635" width="0.4064" layer="94"/>
<wire x1="-3.175" y1="0.635" x2="-3.175" y2="0" width="0.4064" layer="94"/>
<text x="-3.81" y="0" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="0" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="1" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2" x="0" y="-2.54" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="3" x="2.54" y="-2.54" visible="pad" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="JP2E" prefix="JP" uservalue="yes">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="JP3E" x="0" y="0"/>
</gates>
<devices>
<device name="" package="JP2">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
</connects>
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
<part name="JP1" library="jumper" deviceset="JP2E" device=""/>
<part name="JP2" library="jumper" deviceset="JP2E" device=""/>
<part name="JP3" library="jumper" deviceset="JP2E" device=""/>
<part name="JP4" library="jumper" deviceset="JP2E" device=""/>
<part name="JP5" library="jumper" deviceset="JP2E" device=""/>
<part name="JP6" library="jumper" deviceset="JP2E" device=""/>
<part name="JP7" library="jumper" deviceset="JP2E" device=""/>
<part name="JP8" library="jumper" deviceset="JP2E" device=""/>
<part name="JP9" library="jumper" deviceset="JP2E" device=""/>
<part name="JP10" library="jumper" deviceset="JP2E" device=""/>
</parts>
<sheets>
<sheet>
<description>Analog Connectors</description>
<plain>
</plain>
<instances>
<instance part="JP1" gate="1" x="-12.7" y="2.54" rot="R90"/>
<instance part="JP2" gate="1" x="10.16" y="17.78"/>
<instance part="JP3" gate="1" x="-15.24" y="-35.56" rot="R90"/>
<instance part="JP4" gate="1" x="7.62" y="-20.32"/>
<instance part="JP5" gate="1" x="-17.78" y="-78.74" rot="R90"/>
<instance part="JP6" gate="1" x="5.08" y="-63.5"/>
<instance part="JP7" gate="1" x="-17.78" y="-124.46" rot="R90"/>
<instance part="JP8" gate="1" x="5.08" y="-109.22"/>
<instance part="JP9" gate="1" x="-17.78" y="-170.18" rot="R90"/>
<instance part="JP10" gate="1" x="5.08" y="-154.94"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="JP1" gate="1" pin="3"/>
<wire x1="-10.16" y1="5.08" x2="10.16" y2="5.08" width="0.1524" layer="91"/>
<pinref part="JP2" gate="1" pin="2"/>
<wire x1="10.16" y1="5.08" x2="10.16" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ANALOG_2" class="0">
<segment>
<pinref part="JP3" gate="1" pin="2"/>
<wire x1="-12.7" y1="-35.56" x2="7.62" y2="-35.56" width="0.1524" layer="91"/>
<label x="22.86" y="-35.56" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="MCU_ANALOG_GND" class="0">
<segment>
<pinref part="JP1" gate="1" pin="1"/>
<wire x1="-10.16" y1="0" x2="-2.54" y2="0" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-5.08" x2="7.62" y2="-5.08" width="0.1524" layer="91"/>
<label x="33.02" y="-5.08" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="JP3" gate="1" pin="1"/>
<wire x1="-12.7" y1="-38.1" x2="-5.08" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-38.1" x2="-5.08" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-43.18" x2="5.08" y2="-43.18" width="0.1524" layer="91"/>
<label x="30.48" y="-43.18" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="JP5" gate="1" pin="1"/>
<wire x1="-15.24" y1="-81.28" x2="-7.62" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-81.28" x2="-7.62" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-86.36" x2="2.54" y2="-86.36" width="0.1524" layer="91"/>
<label x="27.94" y="-86.36" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="JP7" gate="1" pin="1"/>
<wire x1="-15.24" y1="-127" x2="-7.62" y2="-127" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-127" x2="-7.62" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-132.08" x2="2.54" y2="-132.08" width="0.1524" layer="91"/>
<label x="27.94" y="-132.08" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="JP9" gate="1" pin="1"/>
<wire x1="-15.24" y1="-172.72" x2="-7.62" y2="-172.72" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-172.72" x2="-7.62" y2="-177.8" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-177.8" x2="2.54" y2="-177.8" width="0.1524" layer="91"/>
<label x="27.94" y="-177.8" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="5V_SUPERVISED" class="0">
<segment>
<pinref part="JP2" gate="1" pin="1"/>
<wire x1="7.62" y1="15.24" x2="7.62" y2="12.7" width="0.1524" layer="91"/>
<wire x1="7.62" y1="12.7" x2="0" y2="12.7" width="0.1524" layer="91"/>
<wire x1="0" y1="12.7" x2="0" y2="25.4" width="0.1524" layer="91"/>
<wire x1="0" y1="25.4" x2="2.54" y2="25.4" width="0.1524" layer="91"/>
<label x="25.4" y="25.4" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="JP4" gate="1" pin="1"/>
<wire x1="5.08" y1="-22.86" x2="5.08" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-25.4" x2="-2.54" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-25.4" x2="-2.54" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-12.7" x2="0" y2="-12.7" width="0.1524" layer="91"/>
<label x="22.86" y="-12.7" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="JP6" gate="1" pin="1"/>
<wire x1="2.54" y1="-66.04" x2="2.54" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-68.58" x2="-5.08" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-68.58" x2="-5.08" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-55.88" x2="-2.54" y2="-55.88" width="0.1524" layer="91"/>
<label x="20.32" y="-55.88" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="JP8" gate="1" pin="1"/>
<wire x1="2.54" y1="-111.76" x2="2.54" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-114.3" x2="-5.08" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-114.3" x2="-5.08" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-101.6" x2="-2.54" y2="-101.6" width="0.1524" layer="91"/>
<label x="20.32" y="-101.6" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="JP10" gate="1" pin="1"/>
<wire x1="2.54" y1="-157.48" x2="2.54" y2="-160.02" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-160.02" x2="-5.08" y2="-160.02" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-160.02" x2="-5.08" y2="-147.32" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-147.32" x2="-2.54" y2="-147.32" width="0.1524" layer="91"/>
<label x="20.32" y="-147.32" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="3.3V_SUPERVISED" class="0">
<segment>
<pinref part="JP2" gate="1" pin="3"/>
<wire x1="12.7" y1="15.24" x2="12.7" y2="12.7" width="0.1524" layer="91"/>
<wire x1="12.7" y1="12.7" x2="27.94" y2="12.7" width="0.1524" layer="91"/>
<wire x1="27.94" y1="12.7" x2="27.94" y2="25.4" width="0.1524" layer="91"/>
<wire x1="27.94" y1="25.4" x2="33.02" y2="25.4" width="0.1524" layer="91"/>
<label x="58.42" y="25.4" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="JP4" gate="1" pin="3"/>
<wire x1="10.16" y1="-22.86" x2="10.16" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="10.16" y1="-25.4" x2="25.4" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-25.4" x2="25.4" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-12.7" x2="30.48" y2="-12.7" width="0.1524" layer="91"/>
<label x="55.88" y="-12.7" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="JP6" gate="1" pin="3"/>
<wire x1="7.62" y1="-66.04" x2="7.62" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-68.58" x2="22.86" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-68.58" x2="22.86" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-55.88" x2="27.94" y2="-55.88" width="0.1524" layer="91"/>
<label x="53.34" y="-55.88" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="JP8" gate="1" pin="3"/>
<wire x1="7.62" y1="-111.76" x2="7.62" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-114.3" x2="22.86" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-114.3" x2="22.86" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-101.6" x2="27.94" y2="-101.6" width="0.1524" layer="91"/>
<label x="53.34" y="-101.6" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="JP10" gate="1" pin="3"/>
<wire x1="7.62" y1="-157.48" x2="7.62" y2="-160.02" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-160.02" x2="22.86" y2="-160.02" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-160.02" x2="22.86" y2="-147.32" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-147.32" x2="27.94" y2="-147.32" width="0.1524" layer="91"/>
<label x="53.34" y="-147.32" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="JP3" gate="1" pin="3"/>
<wire x1="-12.7" y1="-33.02" x2="7.62" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="JP4" gate="1" pin="2"/>
<wire x1="7.62" y1="-33.02" x2="7.62" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="JP5" gate="1" pin="3"/>
<wire x1="-15.24" y1="-76.2" x2="5.08" y2="-76.2" width="0.1524" layer="91"/>
<pinref part="JP6" gate="1" pin="2"/>
<wire x1="5.08" y1="-76.2" x2="5.08" y2="-66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="JP7" gate="1" pin="3"/>
<wire x1="-15.24" y1="-121.92" x2="5.08" y2="-121.92" width="0.1524" layer="91"/>
<pinref part="JP8" gate="1" pin="2"/>
<wire x1="5.08" y1="-121.92" x2="5.08" y2="-111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ANALOG_1" class="0">
<segment>
<pinref part="JP1" gate="1" pin="2"/>
<wire x1="-10.16" y1="2.54" x2="10.16" y2="2.54" width="0.1524" layer="91"/>
<label x="25.4" y="2.54" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="ANALOG_3" class="0">
<segment>
<pinref part="JP5" gate="1" pin="2"/>
<wire x1="-15.24" y1="-78.74" x2="5.08" y2="-78.74" width="0.1524" layer="91"/>
<label x="20.32" y="-78.74" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="ANALOG_4" class="0">
<segment>
<pinref part="JP7" gate="1" pin="2"/>
<wire x1="-15.24" y1="-124.46" x2="5.08" y2="-124.46" width="0.1524" layer="91"/>
<label x="20.32" y="-124.46" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="JP9" gate="1" pin="3"/>
<wire x1="-15.24" y1="-167.64" x2="5.08" y2="-167.64" width="0.1524" layer="91"/>
<pinref part="JP10" gate="1" pin="2"/>
<wire x1="5.08" y1="-167.64" x2="5.08" y2="-157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MCU_STEERING_POT" class="0">
<segment>
<pinref part="JP9" gate="1" pin="2"/>
<wire x1="-15.24" y1="-170.18" x2="5.08" y2="-170.18" width="0.1524" layer="91"/>
<label x="33.02" y="-170.18" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
