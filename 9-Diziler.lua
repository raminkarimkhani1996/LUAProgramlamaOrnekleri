dizi={"AHMET","MEHMET","RAMIN"}

for i=-2,3,1
do
	print(dizi[i],"\n")
end

dizi[-3]=8
--[Dizilerde indis değeri olarak negatif sayılarda kullanılabilirx--]
print(dizi[-3])

dizi["ali"]=6

print(dizi["ali"])
