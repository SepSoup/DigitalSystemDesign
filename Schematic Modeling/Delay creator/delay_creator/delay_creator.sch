<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(7:0)" />
        <signal name="XLXN_3" />
        <signal name="c" />
        <signal name="clr" />
        <signal name="XLXN_7(7:0)" />
        <signal name="XLXN_8(7:0)" />
        <signal name="XLXN_9" />
        <signal name="o" />
        <signal name="XLXN_13" />
        <port polarity="Input" name="c" />
        <port polarity="Input" name="clr" />
        <port polarity="Output" name="o" />
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
        <blockdef name="comp8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
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
            <blockpin signalname="c" name="C" />
            <blockpin signalname="XLXN_3" name="CE" />
            <blockpin signalname="clr" name="CLR" />
            <blockpin signalname="XLXN_1(7:0)" name="D(7:0)" />
            <blockpin signalname="XLXN_9" name="L" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_7(7:0)" name="Q(7:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="constant" name="XLXI_2">
            <attr value="00000000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_1(7:0)" name="O" />
        </block>
        <block symbolname="pullup" name="XLXI_3">
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="comp8" name="XLXI_4">
            <blockpin signalname="XLXN_7(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_8(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_9" name="EQ" />
        </block>
        <block symbolname="constant" name="XLXI_5">
            <attr value="0000000F" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_8(7:0)" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_6">
            <blockpin signalname="XLXN_9" name="C" />
            <blockpin signalname="XLXN_13" name="D" />
            <blockpin signalname="o" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="o" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="608" y="1440" name="XLXI_1" orien="R0" />
        <instance x="320" y="1024" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(7:0)">
            <wire x2="608" y1="1056" y2="1056" x1="464" />
        </branch>
        <instance x="112" y="1216" name="XLXI_3" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="176" y1="1216" y2="1248" x1="176" />
            <wire x2="608" y1="1248" y2="1248" x1="176" />
        </branch>
        <branch name="c">
            <wire x2="608" y1="1312" y2="1312" x1="272" />
        </branch>
        <branch name="clr">
            <wire x2="608" y1="1408" y2="1408" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="1312" name="c" orien="R180" />
        <iomarker fontsize="28" x="272" y="1408" name="clr" orien="R180" />
        <instance x="1472" y="1376" name="XLXI_4" orien="R0" />
        <branch name="XLXN_7(7:0)">
            <wire x2="1472" y1="1056" y2="1056" x1="992" />
        </branch>
        <instance x="1216" y="1216" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_8(7:0)">
            <wire x2="1472" y1="1248" y2="1248" x1="1360" />
        </branch>
        <instance x="2128" y="1280" name="XLXI_6" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="1952" y1="800" y2="800" x1="272" />
            <wire x2="1952" y1="800" y2="1152" x1="1952" />
            <wire x2="2128" y1="1152" y2="1152" x1="1952" />
            <wire x2="272" y1="800" y2="816" x1="272" />
            <wire x2="272" y1="816" y2="1184" x1="272" />
            <wire x2="608" y1="1184" y2="1184" x1="272" />
            <wire x2="1952" y1="1152" y2="1152" x1="1856" />
        </branch>
        <instance x="2432" y="832" name="XLXI_7" orien="M0" />
        <branch name="o">
            <wire x2="2608" y1="800" y2="800" x1="2432" />
            <wire x2="2608" y1="800" y2="1024" x1="2608" />
            <wire x2="2736" y1="1024" y2="1024" x1="2608" />
            <wire x2="2608" y1="1024" y2="1024" x1="2512" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2208" y1="800" y2="800" x1="2048" />
            <wire x2="2048" y1="800" y2="1024" x1="2048" />
            <wire x2="2128" y1="1024" y2="1024" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2736" y="1024" name="o" orien="R0" />
    </sheet>
</drawing>