public const strs = "http://repo.tinycorelinux.net/13.x/armv6/tcz/"
dim shared list(0 to 2048) as string
dim shared index as integer

public sub adds(s as string)
	dim i as integer
	dim ii as integer
	for i=0 to index - 1
		if s=list(i) then
			ii=1
		end if
	next
	if ii=0 and trim(s)<>"" then
		list(index)=trim(s)
		index=index+1
	end if 
end sub 

dim i as integer
dim a as string
color 15,5
adds command(1)+".tcz"
while i <> index
	shell (!"curl \"" + strs + list(i) + !".dep\">out.txt")
	open "out.txt" for input as 1
	while not(eof(1))
		line input #1,a
		a=trim(a)
		if a<> "" then adds a
	wend
	close 1
	i=i+1
wend 

print "-----------------------"
open command(1)+".sh" for output as 1
for i=0 to index
	print #1,!"wget \"" + strs + list(i) + !"\" "
	

next 
close 1
