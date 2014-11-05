#!/bin/bash
# ART WELL ENTERPRISE (HK) LTD.
# Vladislav Muravyev <me@gubnota.ru>
#two parameters
if [ "$#" -eq 2 ]
then
# Brackets.app dirs
d1=$1
d2=$2
# font dir
f=${d2}"/Contents/www/styles/fonts/Roboto"
# style file
s1=${d1}"/Contents/www/styles/brackets.min.css"
# font dir dest
fd=${d1}"/Contents/www/styles/fonts"
# old font dir 1
fd1=${d1}"/Contents/www/styles/fonts/SourceCodePro"
# old font dir 2
fd2=${d1}"/Contents/www/styles/fonts/SourceSansPro"
# from src
fs1="src:url('fonts/SourceSansPro/SourceSansPro-"
fs2="src:url('fonts/SourceCodePro/SourceCodePro-"
# to src
ft="src:url('fonts/Roboto/Roboto-"
#echo \"${s}.backup\"
sed -i.backup "s%${fs1}Regular.ttf');%${ft}Regular.ttf');%g" "${s1}"
sed -i.backup "s%${fs1}Light.ttf');%${ft}Light.ttf');%g" "${s1}"
sed -i.backup "s%${fs1}It.ttf');%${ft}Italic.ttf');%g" "${s1}"
sed -i.backup "s%${fs1}Semibold.ttf');%${ft}Medium.ttf');%g" "${s1}"
sed -i.backup "s%${fs2}Regular.ttf');%${ft}Regular.ttf');%g" "${s1}"
sed -i.backup "s%${fs2}Medium.ttf');%${ft}Medium.ttf');%g" "${s1}"
#sed -i.backup "s%SourceSansPro%Roboto%g" "${s1}"
#sed -i.backup "s%SourceCodePro%Roboto%g" "${s1}"
rm -rf "${s1}.backup"
rm -rf "${fd1}"
rm -rf "${fd2}"
cp -R "${f}" "${fd}"
tput bold; tput setaf 7;
echo "Done!"
else
tput bold; tput setaf 7;
echo "Need new Brackets.app instance dir path as first parameter "
echo "and old instance Brackets.app contained "
echo "\"Contents/www/styles/fonts/Roboto/\" "
echo "fonts dir path as the second:";
echo "$0 NEW_INSTANCE_Brackets.app OLD_INSTANCE_Brackets.app";
echo "If haven't made change defaults fonts yet, please download from:";
echo "\"http://www.dafont.com/roboto.font\" and put \"Roboto\" "
echo "folder in \"Brackets.app/Contents/www/styles/fonts/\" created subfolder "
echo "to point as an OLD_INSTANCE_Brackets.app folder"
fi
# sed -i.backup "s%src:url('fonts/SourceSansPro/SourceSansPro-Regular.ttf');%src:url('fonts/Roboto/Roboto-Regular.ttf');%g" 1.md
# sed -i.backup "s%src:url('fonts/SourceSansPro/SourceSansPro-Light.ttf');%src:url('fonts/Roboto/Roboto-Light.ttf');%g" 1.md
# sed -i.backup "s%src:url('fonts/SourceSansPro/SourceSansPro-It.ttf');%src:url('fonts/Roboto/Roboto-Italic.ttf');%g" 1.md
# sed -i.backup "s%src:url('fonts/SourceSansPro/SourceSansPro-Semibold.ttf');%src:url('fonts/Roboto/Roboto-Medium.ttf');%g" 1.md
# sed -i.backup "s%src:url('fonts/SourceCodePro/SourceCodePro-Regular.ttf');%src:url('fonts/Roboto/Roboto-Regular.ttf');%g" 1.md
# sed -i.backup "s%src:url('fonts/SourceCodePro/SourceCodePro-Medium.ttf');%src:url('fonts/Roboto/Roboto-Medium.ttf');%g" 1.md
# sed -i.backup "s%SourceSansPro%Roboto%g" 1.md
# sed -i.backup "s%SourceCodePro%Roboto%g" 1.md
# src:url('fonts/SourceSansPro/SourceSansPro-Regular.ttf');
# src:url('fonts/SourceSansPro/SourceSansPro-Light.ttf');
# src:url('fonts/SourceSansPro/SourceSansPro-Semibold.ttf');
# src:url('fonts/SourceSansPro/SourceSansPro-It.ttf');
# 'SourceSansPro'
# src:url('fonts/SourceCodePro/SourceCodePro-Medium.ttf');
# src:url('fonts/SourceCodePro/SourceCodePro-Regular.ttf');
# font-family:SourceCodePro;
# 'SourceCodePro-Medium'