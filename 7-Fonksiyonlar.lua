a=function(a,b)
	c=a+b
	print(c)
end

a(20,30)
a(6,12)

topla=function(...)
	
	sonuc=0
	arg={...}
	for i,v in ipairs(arg) 
	do
		sonuc=sonuc+v	
	end
	print(sonuc)
	
end

topla(3,5,6,7,8)
