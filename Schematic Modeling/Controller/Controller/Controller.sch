<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_8" />
        <signal name="z1" />
        <signal name="x" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="z2" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="clk" />
        <signal name="clr" />
        <signal name="XLXN_32" />
        <port polarity="Output" name="z1" />
        <port polarity="Input" name="x" />
        <port polarity="Output" name="z2" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="clr" />
        <blockdef name="fjkc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="256" x="64" y="-384" height="320" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="x" name="I1" />
            <blockpin signalname="z2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="x" name="I1" />
            <blockpin signalname="z1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="x" name="I" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="fjkc" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="clr" name="CLR" />
            <blockpin signalname="z2" name="J" />
            <blockpin signalname="z1" name="K" />
            <blockpin signalname="XLXN_21" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="clr" name="CLR" />
            <blockpin signalname="XLXN_25" name="J" />
            <blockpin signalname="XLXN_26" name="K" />
            <blockpin signalname="XLXN_18" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_22" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="XLXN_18" name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_13">
            <blockpin signalname="XLXN_21" name="I" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1760" y="2176" name="XLXI_2" orien="M0" />
        <instance x="1760" y="1680" name="XLXI_1" orien="M0" />
        <instance x="1472" y="480" name="XLXI_6" orien="R0" />
        <instance x="496" y="352" name="XLXI_7" orien="R90" />
        <branch name="z1">
            <wire x2="1968" y1="384" y2="384" x1="1728" />
            <wire x2="2672" y1="384" y2="384" x1="1968" />
            <wire x2="1968" y1="384" y2="1920" x1="1968" />
            <wire x2="1968" y1="1920" y2="1920" x1="1760" />
        </branch>
        <instance x="1472" y="672" name="XLXI_5" orien="R0" />
        <branch name="x">
            <wire x2="528" y1="352" y2="352" x1="192" />
            <wire x2="1248" y1="352" y2="352" x1="528" />
            <wire x2="1472" y1="352" y2="352" x1="1248" />
            <wire x2="1248" y1="352" y2="544" x1="1248" />
            <wire x2="1472" y1="544" y2="544" x1="1248" />
        </branch>
        <instance x="1488" y="1152" name="XLXI_3" orien="R0" />
        <instance x="1488" y="976" name="XLXI_4" orien="R0" />
        <instance x="912" y="1456" name="XLXI_12" orien="M0" />
        <branch name="XLXN_18">
            <wire x2="1280" y1="1424" y2="1424" x1="912" />
            <wire x2="1296" y1="1424" y2="1424" x1="1280" />
            <wire x2="1376" y1="1424" y2="1424" x1="1296" />
            <wire x2="1472" y1="416" y2="416" x1="1296" />
            <wire x2="1296" y1="416" y2="1424" x1="1296" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="640" y1="608" y2="1424" x1="640" />
            <wire x2="688" y1="1424" y2="1424" x1="640" />
            <wire x2="1472" y1="608" y2="608" x1="640" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1248" y1="1920" y2="1920" x1="992" />
            <wire x2="1376" y1="1920" y2="1920" x1="1248" />
            <wire x2="1488" y1="1088" y2="1088" x1="1248" />
            <wire x2="1248" y1="1088" y2="1920" x1="1248" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="528" y1="576" y2="592" x1="528" />
            <wire x2="528" y1="592" y2="848" x1="528" />
            <wire x2="1168" y1="848" y2="848" x1="528" />
            <wire x2="1488" y1="848" y2="848" x1="1168" />
            <wire x2="1168" y1="848" y2="1024" x1="1168" />
            <wire x2="1488" y1="1024" y2="1024" x1="1168" />
        </branch>
        <branch name="z2">
            <wire x2="1888" y1="576" y2="576" x1="1728" />
            <wire x2="2672" y1="576" y2="576" x1="1888" />
            <wire x2="1888" y1="576" y2="1856" x1="1888" />
            <wire x2="1888" y1="1856" y2="1856" x1="1760" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1776" y1="1056" y2="1056" x1="1744" />
            <wire x2="1776" y1="1056" y2="1360" x1="1776" />
            <wire x2="1776" y1="1360" y2="1360" x1="1760" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1792" y1="880" y2="880" x1="1744" />
            <wire x2="1792" y1="880" y2="1424" x1="1792" />
            <wire x2="1792" y1="1424" y2="1424" x1="1760" />
        </branch>
        <branch name="clk">
            <wire x2="1872" y1="1552" y2="1552" x1="1760" />
            <wire x2="1872" y1="1552" y2="2048" x1="1872" />
            <wire x2="2240" y1="2048" y2="2048" x1="1872" />
            <wire x2="1872" y1="2048" y2="2048" x1="1760" />
        </branch>
        <branch name="clr">
            <wire x2="1952" y1="1648" y2="1648" x1="1760" />
            <wire x2="1952" y1="1648" y2="2144" x1="1952" />
            <wire x2="2240" y1="2144" y2="2144" x1="1952" />
            <wire x2="1776" y1="2144" y2="2144" x1="1760" />
            <wire x2="1952" y1="2144" y2="2144" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="192" y="352" name="x" orien="R180" />
        <iomarker fontsize="28" x="2240" y="2048" name="clk" orien="R0" />
        <iomarker fontsize="28" x="2672" y="384" name="z1" orien="R0" />
        <iomarker fontsize="28" x="2672" y="576" name="z2" orien="R0" />
        <instance x="992" y="1952" name="XLXI_13" orien="M0" />
        <branch name="XLXN_22">
            <wire x2="1488" y1="912" y2="912" x1="672" />
            <wire x2="672" y1="912" y2="1920" x1="672" />
            <wire x2="768" y1="1920" y2="1920" x1="672" />
        </branch>
        <iomarker fontsize="28" x="2240" y="2144" name="clr" orien="R0" />
    </sheet>
</drawing>