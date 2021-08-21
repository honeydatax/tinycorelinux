dim a as string
color 15,5
a="ldd " + command(1) + " | grep -i found"
shell(a)
