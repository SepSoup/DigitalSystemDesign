<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="clk" />
        <signal name="clr" />
        <signal name="O(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="clr" />
        <port polarity="Output" name="O(7:0)" />
        <blockdef name="cb8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
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
        <block symbolname="cb8ce" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_1" name="CE" />
            <blockpin signalname="clr" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="O(7:0)" name="Q(7:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="pullup" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1552" y="1552" name="XLXI_1" orien="R0" />
        <instance x="1200" y="1296" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1264" y1="1296" y2="1360" x1="1264" />
            <wire x2="1552" y1="1360" y2="1360" x1="1264" />
        </branch>
        <branch name="clk">
            <wire x2="1552" y1="1424" y2="1424" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1424" name="clk" orien="R180" />
        <branch name="clr">
            <wire x2="1552" y1="1520" y2="1520" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1520" name="clr" orien="R180" />
        <branch name="O(7:0)">
            <wire x2="2336" y1="1296" y2="1296" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="2336" y="1296" name="O(7:0)" orien="R0" />
    </sheet>
</drawing>