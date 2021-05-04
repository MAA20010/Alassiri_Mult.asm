// Mohammed Alassiri
// I validated the hack program with the script and the output file = cmp file. 
// I also tested it manually to make sure it works fine.

@2
M=0 // starts r2 as 0, because it adds value of r1 to it r0 times.

@0
D=M
@END // go to end if value = 0 
D;JEQ // JLe was broken, JEQ was the only option that worked, it would sometimes give a value below 0???

@1
D=M 
@END // go to end if value = 0 
D;JEQ 

(Mult) // its simply a while loop.

	@1
	D=M 

	@2
	M=D+M // Adds r1 value to the value of r2 ( will run r0 times)
	@END 
	M < 

	@0
	M=M-1 // reduces the value of r0 by 1 each time it runs the function.
	D=M 
	@Mult // jump to the start of the loop IF r0 is bigger than 0.
	D;JGT
	

(END)
	@END
	0;JMP







