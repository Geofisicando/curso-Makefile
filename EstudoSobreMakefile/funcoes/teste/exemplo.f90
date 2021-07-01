program somador
implicit none

integer:: i=1, soma=0, val=0
character (len=32):: arg

do
	call get_command_argument(i,arg)
	if(len_trim(arg)==0) exit
	read(arg,'(i10)') val
	soma = val+soma
	i = i+1
end do

write(*,*) soma

end program
