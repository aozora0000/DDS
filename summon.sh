#!/bin/bash -l
source "libs/functions.sh"
source "libs/variable.sh"

cwindow
cat ./scene/004.txt
waittime 2000
exit 1;

# 199X
cwindow
linebreak 2
cat ./scene/001.txt
sleep 4

# スクリプトレンダリングスタート
cwindow
linebreak 1

wPrintln $SCRIPT_WAIT "RESET:"

for txt in "SEI" "CLC" "XCE" "CLD" " " "X16" "M8";do
    linebreak;tab;
    wPrintln $SCRIPT_WAIT $txt
done


# 差し込みシーン1
cwindow
source ./scene/002.txt
waittime 2000

# 復帰
cwindow
cat ./buffer/001.txt

tab;
wPrintln $SCRIPT_WAIT "LDX";
tab;
wPrintln $SCRIPT_WAIT "#1FFFH"
linebreak;tab;
wPrintln $SCRIPT_WAIT "TXS";
linebreak;tab;

wPrintln $SCRIPT_WAIT "STZ";  tab; wPrintln $SCRIPT_WAIT "NMTIME"; linebreak;tab;
wPrintln $SCRIPT_WAIT "LDA";  tab; wPrintln $SCRIPT_WAIT "#BLANKING"; linebreak;tab;
wPrintln $SCRIPT_WAIT "STA";  tab; wPrintln $SCRIPT_WAIT "INIDSP"; linebreak;tab;
wPrintln $SCRIPT_WAIT "BJSR"; tab; wPrintln $SCRIPT_WAIT "AT";

# 差し込みシーン２
cwindow
source ./scene/003.txt
waittime 2000

# 復帰
cwindow
cat ./buffer/002.txt
/bin/echo -n "	BJSR	AT";
wPrintln $SCRIPT_WAIT "LUS"; linebreak;tab;

for txt in "'EL" "ELOHIM" "ELOHO" "ELOHIM" "SEBADTH'"; do
    wPrintln $SCRIPT_WAIT $txt;
    space;
done;
linebreak;tab;

for txt in "'ELION" "EIECH" "ADIER" "EI"; do
    wPrintln $SCRIPT_WAIT $txt;
    space;
done

# 差し込みシーン３
cwindow
cat ./scene/004.txt
waittime 2000

# 復帰
cwindow
cat ./buffer/003.txt
/bin/echo -n "	'ELION EIECH ADIER EI";
for txt in "ECH" "ADONAI'"; do
    wPrintln $SCRIPT_WAIT $txt;
    space;
done

exit 1;


for txt in "'JAH" "SADAI" "TETRAGRAMMATON" "SADAI'"; do
    wPrintln $SCRIPT_WAIT $txt;
    space;
done
linebreak; tab;

for txt in "'AGIOS" "O" "THEOS" "ISCHIROS" "ATHANATOS'"; do
    wPrintln $SCRIPT_WAIT $txt;
    space;
done
linebreak; tab;

for txt in "'AGLA" "AMEN'"; do
    wPrintln $SCRIPT_WAIT $txt;
    space;
done
linebreak 22 100;

cwindow
cat ./buffer/099.txt;
linebreak;tab;
wPrintln 300 "shin.";

sleep 1

cwindow
cat ./buffer/099.txt;
linebreak;tab;
/bin/echo -n "新・"

sleep 1

cwindow
cat ./buffer/099.txt;
linebreak;tab;
/bin/echo -n "神・"

sleep 1

cwindow
cat ./buffer/099.txt;
linebreak;tab;
/bin/echo -n "真・"

sleep 1

for txt in "DIGITAL" "DEVIL" "STORY"; do
    wPrintln 300 $txt;
    space;
done

sleep 2

cwindow
cat ./buffer/099.txt;
linebreak;tab;
/bin/echo -n "真・女神転生"

sleep 3
linebreak 15;
linebreak 25 200;

sleep 2
animation $SCRIPT_WAIT $RED "./logo/*"
linebreak 4;
/bin/echo -n "                                                     PRESS ANY BUTTON"
linebreak 3;
source ./scene/999.txt
