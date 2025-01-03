<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(7:0)" />
        <signal name="XLXN_3(7:0)" />
        <signal name="XLXN_4" />
        <signal name="clk" />
        <signal name="clr" />
        <signal name="XLXN_8(7:0)" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="C" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="clr" />
        <port polarity="Output" name="C" />
        <blockdef name="cb8cle">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-448" height="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <rect width="64" x="0" y="-396" height="24" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="64" x="320" y="-396" height="24" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
        </blockdef>
        <blockdef name="comp8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="pullup">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
            <line x2="64" y1="-56" y2="-48" x1="48" />
            <line x2="48" y1="-72" y2="-56" x1="80" />
            <line x2="80" y1="-88" y2="-72" x1="48" />
            <line x2="48" y1="-104" y2="-88" x1="80" />
            <line x2="80" y1="-108" y2="-104" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="96" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
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
        <block symbolname="cb8cle" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_4" name="CE" />
            <blockpin signalname="clr" name="CLR" />
            <blockpin signalname="XLXN_8(7:0)" name="D(7:0)" />
            <blockpin signalname="XLXN_10" name="L" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_1(7:0)" name="Q(7:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="comp8" name="XLXI_2">
            <blockpin signalname="XLXN_1(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_3(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_10" name="EQ" />
        </block>
        <block symbolname="constant" name="XLXI_4">
            <attr value="0000000F" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_3(7:0)" name="O" />
        </block>
        <block symbolname="pullup" name="XLXI_5">
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_6">
            <attr value="00000000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_8(7:0)" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_7">
            <blockpin signalname="XLXN_10" name="C" />
            <blockpin signalname="XLXN_11" name="D" />
            <blockpin signalname="C" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="656" y="1712" name="XLXI_1" orien="R0" />
        <instance x="1728" y="1648" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1(7:0)">
            <wire x2="1728" y1="1328" y2="1328" x1="1040" />
        </branch>
        <instance x="1440" y="1488" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_3(7:0)">
            <wire x2="1728" y1="1520" y2="1520" x1="1584" />
        </branch>
        <instance x="176" y="1424" name="XLXI_5" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="240" y1="1424" y2="1520" x1="240" />
            <wire x2="656" y1="1520" y2="1520" x1="240" />
        </branch>
        <branch name="clk">
            <wire x2="656" y1="1584" y2="1584" x1="624" />
        </branch>
        <iomarker fontsize="28" x="624" y="1584" name="clk" orien="R180" />
        <branch name="clr">
            <wire x2="656" y1="1680" y2="1680" x1="624" />
        </branch>
        <iomarker fontsize="28" x="624" y="1680" name="clr" orien="R180" />
        <instance x="176" y="1168" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_8(7:0)">
            <wire x2="480" y1="1200" y2="1200" x1="320" />
            <wire x2="480" y1="1200" y2="1328" x1="480" />
            <wire x2="656" y1="1328" y2="1328" x1="480" />
        </branch>
        <instance x="2544" y="1552" name="XLXI_7" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="592" y1="1200" y2="1456" x1="592" />
            <wire x2="656" y1="1456" y2="1456" x1="592" />
            <wire x2="2224" y1="1200" y2="1200" x1="592" />
            <wire x2="2224" y1="1200" y2="1424" x1="2224" />
            <wire x2="2544" y1="1424" y2="1424" x1="2224" />
            <wire x2="2224" y1="1424" y2="1424" x1="2112" />
        </branch>
        <instance x="2816" y="1072" name="XLXI_8" orien="M0" />
        <branch name="XLXN_11">
            <wire x2="2528" y1="1040" y2="1296" x1="2528" />
            <wire x2="2544" y1="1296" y2="1296" x1="2528" />
            <wire x2="2592" y1="1040" y2="1040" x1="2528" />
        </branch>
        <branch name="C">
            <wire x2="2944" y1="1040" y2="1040" x1="2816" />
            <wire x2="2944" y1="1040" y2="1296" x1="2944" />
            <wire x2="3056" y1="1296" y2="1296" x1="2944" />
            <wire x2="2944" y1="1296" y2="1296" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="3056" y="1296" name="C" orien="R0" />
    </sheet>
</drawing>