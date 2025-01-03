<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_5(7:0)" />
        <signal name="O(7:0)" />
        <signal name="XLXN_10(7:0)" />
        <signal name="XLXN_11(7:0)" />
        <signal name="CLK" />
        <signal name="CLR" />
        <port polarity="Output" name="O(7:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="CLR" />
        <blockdef name="fd8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="add8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
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
        <blockdef name="pulldown">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-160" y2="-128" x1="64" />
            <line x2="60" y1="0" y2="0" x1="68" />
            <line x2="52" y1="-16" y2="-16" x1="76" />
            <line x2="40" y1="-32" y2="-32" x1="88" />
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="fd8ce" name="XLXI_1">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_2" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_10(7:0)" name="D(7:0)" />
            <blockpin signalname="O(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="add8" name="XLXI_3">
            <blockpin signalname="XLXN_5(7:0)" name="A(7:0)" />
            <blockpin signalname="O(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_1" name="CI" />
            <blockpin name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="XLXN_10(7:0)" name="S(7:0)" />
        </block>
        <block symbolname="pullup" name="XLXI_4">
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="pulldown" name="XLXI_5">
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_6">
            <attr value="00000004" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_5(7:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1552" y="2176" name="XLXI_1" orien="R0" />
        <instance x="768" y="1856" name="XLXI_4" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="832" y1="1856" y2="1984" x1="832" />
            <wire x2="1552" y1="1984" y2="1984" x1="832" />
        </branch>
        <branch name="XLXN_5(7:0)">
            <wire x2="2176" y1="1328" y2="1328" x1="1408" />
        </branch>
        <instance x="1264" y="1296" name="XLXI_6" orien="R0">
        </instance>
        <instance x="2176" y="1648" name="XLXI_3" orien="R0" />
        <branch name="O(7:0)">
            <wire x2="2048" y1="1920" y2="1920" x1="1936" />
            <wire x2="2816" y1="1920" y2="1920" x1="2048" />
            <wire x2="2048" y1="1456" y2="1920" x1="2048" />
            <wire x2="2176" y1="1456" y2="1456" x1="2048" />
        </branch>
        <instance x="1936" y="1280" name="XLXI_5" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="2000" y1="1104" y2="1120" x1="2000" />
            <wire x2="2160" y1="1104" y2="1104" x1="2000" />
            <wire x2="2160" y1="1104" y2="1200" x1="2160" />
            <wire x2="2176" y1="1200" y2="1200" x1="2160" />
        </branch>
        <branch name="XLXN_10(7:0)">
            <wire x2="2784" y1="768" y2="768" x1="1088" />
            <wire x2="2784" y1="768" y2="784" x1="2784" />
            <wire x2="2784" y1="784" y2="1392" x1="2784" />
            <wire x2="1088" y1="768" y2="1920" x1="1088" />
            <wire x2="1552" y1="1920" y2="1920" x1="1088" />
            <wire x2="2784" y1="1392" y2="1392" x1="2624" />
        </branch>
        <branch name="CLK">
            <wire x2="1552" y1="2048" y2="2048" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1392" y="2048" name="CLK" orien="R180" />
        <branch name="CLR">
            <wire x2="1552" y1="2144" y2="2144" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1520" y="2144" name="CLR" orien="R180" />
        <iomarker fontsize="28" x="2816" y="1920" name="O(7:0)" orien="R0" />
    </sheet>
</drawing>