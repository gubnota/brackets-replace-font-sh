# brackets-replace-font-sh

Replace Brackets.app font to cyrillic-supported one or any other

# Usage
Run program in Terminal.app or any other Console text mode emulator:

```./brackets-replace-font.sh {NEW_INSTANCE_Brackets.app} {OLD_INSTANCE_Brackets.app}```

For first run OLD_INSTANCE_Brackets.app point within this folder subfolder named Brackets.app 

Just copy it with Cmd+C and paste it in Terminal.app or any as the second argument.

The first argument would be /Applications/Brackets.app by default (in Mac OS X system).

You should check your paths to the program for Linux systems and change it by yourself.

# Prerequisites
Mac OS X or GNU/Linux system installed. Brackets.app downloaded or installed.

Rights to change files when you run script, if it's fail, please run ```"**sudo su**"``` first.

# Who need this
If you need to optimize Brackets.app for not-only-latin fonts, you can use this script to replace font by default for another.

# Кому это надо (для русских)
## Кириллические шрифты в Brackets.app

Изначально это нужно для тех **русских**/украинских/**белорусских**/других **кириллических** пользователей программы кому не нравится отображение кириллических символов в Brackets.app по умолчанию как очень тонкое и нечитабельное. Можно при каждом обновлении заменять нужные шрифты в файле стилей руками, но это очень надоедает, поэтому был создан скрипт чтобы хоть как-то облегчить эту участь.

## Как поставить

Достаточно запустить в терминале скрипт **brackets-replace-font.sh** с аргументами в виде /Application/Brackets.app (та папка с програмой, которая ещё не обновлена) и второй аргумент - папка, содержащая ту же структуру что и в программе, но с нужными шрифтами (прилагается в самом пакете).

Шрифты можно скачать отсюда: [http://www.dafont.com/roboto.font](http://www.dafont.com/roboto.font)
 
#　Brackets.appアプリ日本語
これスクリプトはとりかるをデフォルトフォント手伝い。どうぞ!