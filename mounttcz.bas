dim a as string
dim b as string
randomize timer
a="x"+trim(str(int(rnd*32000)))
color 15,5
shell("mkdir garbage 2> /dev/null")
shell("rm *.xz 2> /dev/null")
shell("rm *.gz 2> /dev/null")
shell("rm debian-binary 2> /dev/null")
b="mksquashfs pkg "+command(1)+".tcz "
shell(b)
a="x"+trim(str(int(rnd*32000)))
shell("mv pkg "+a+ " 2> /dev/null")
shell("mv "+a +" garbage/ 2> /dev/null")

