
a = 1000001
outfile = open("RSA_2048_Last_Number.txt","w")
write(outfile,string(a) * " | " * "last number checked")
close(outfile)


readfile = open("RSA_2048_Last_Number.txt") do f
	readall(f, String)
end
println(readfile)