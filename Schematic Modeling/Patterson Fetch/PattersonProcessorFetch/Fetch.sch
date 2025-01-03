<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ad(3:0)" />
        <signal name="Instruction(31:0)" />
        <signal name="clear" />
        <signal name="clk" />
        <signal name="XLXN_58" />
        <signal name="ad(0)" />
        <signal name="ad(1)" />
        <signal name="ad(2)" />
        <signal name="ad(3)" />
        <signal name="XLXN_90" />
        <port polarity="Output" name="ad(3:0)" />
        <port polarity="Output" name="Instruction(31:0)" />
        <port polarity="Input" name="clear" />
        <port polarity="Input" name="clk" />
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
        <blockdef name="cb4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
        </blockdef>
        <blockdef name="IM">
            <timestamp>2024-12-7T12:52:24</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <block symbolname="IM" name="XLXI_56">
            <blockpin signalname="ad(3:0)" name="addra(3:0)" />
            <blockpin signalname="clk" name="clka" />
            <blockpin signalname="Instruction(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="cb4ce" name="XLXI_55">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_58" name="CE" />
            <blockpin signalname="clear" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="ad(0)" name="Q0" />
            <blockpin signalname="ad(1)" name="Q1" />
            <blockpin signalname="ad(2)" name="Q2" />
            <blockpin signalname="ad(3)" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="pullup" name="XLXI_51">
            <blockpin signalname="XLXN_58" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1616" y="848" name="XLXI_56" orien="R0">
        </instance>
        <branch name="ad(3:0)">
            <wire x2="1616" y1="928" y2="928" x1="1168" />
        </branch>
        <branch name="Instruction(31:0)">
            <wire x2="2624" y1="928" y2="928" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="1168" y="928" name="ad(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2624" y="928" name="Instruction(31:0)" orien="R0" />
        <instance x="640" y="800" name="XLXI_55" orien="R0" />
        <instance x="240" y="560" name="XLXI_51" orien="R0" />
        <branch name="clear">
            <wire x2="448" y1="768" y2="768" x1="432" />
            <wire x2="464" y1="768" y2="768" x1="448" />
            <wire x2="640" y1="768" y2="768" x1="464" />
        </branch>
        <branch name="clk">
            <wire x2="272" y1="672" y2="672" x1="192" />
            <wire x2="624" y1="672" y2="672" x1="272" />
            <wire x2="640" y1="672" y2="672" x1="624" />
            <wire x2="272" y1="672" y2="1120" x1="272" />
            <wire x2="1616" y1="1120" y2="1120" x1="272" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="304" y1="560" y2="576" x1="304" />
            <wire x2="304" y1="576" y2="608" x1="304" />
            <wire x2="464" y1="608" y2="608" x1="304" />
            <wire x2="640" y1="608" y2="608" x1="464" />
        </branch>
        <branch name="ad(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="352" type="branch" />
            <wire x2="1056" y1="352" y2="352" x1="1024" />
            <wire x2="1136" y1="352" y2="352" x1="1056" />
            <wire x2="1152" y1="352" y2="352" x1="1136" />
        </branch>
        <branch name="ad(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="416" type="branch" />
            <wire x2="1056" y1="416" y2="416" x1="1024" />
            <wire x2="1120" y1="416" y2="416" x1="1056" />
            <wire x2="1152" y1="416" y2="416" x1="1120" />
        </branch>
        <branch name="ad(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="480" type="branch" />
            <wire x2="1040" y1="480" y2="480" x1="1024" />
            <wire x2="1056" y1="480" y2="480" x1="1040" />
            <wire x2="1152" y1="480" y2="480" x1="1056" />
        </branch>
        <branch name="ad(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="544" type="branch" />
            <wire x2="1040" y1="544" y2="544" x1="1024" />
            <wire x2="1056" y1="544" y2="544" x1="1040" />
            <wire x2="1072" y1="544" y2="544" x1="1056" />
            <wire x2="1152" y1="544" y2="544" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="432" y="768" name="clear" orien="R180" />
        <iomarker fontsize="28" x="192" y="672" name="clk" orien="R180" />
    </sheet>
</drawing>