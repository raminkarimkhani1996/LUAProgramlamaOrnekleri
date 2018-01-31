local hsp={}

function hsp.topla(...)
	
	sonuc=0
	arg={...}
	for i,v in ipairs(arg) 
	do
		sonuc=sonuc+v	
	end
	print(sonuc)
	
end


function hsp.fark(a,b)
	sonuc=a-b
        print(sonuc)

end
function hsp.carp(a,...)
	sonuc=a
	arg={...}
	for i,v in ipairs(arg)
	do
		sonuc=sonuc*v
	end
        print(sonuc)

end
function hsp.bol(a,b)
	sonuc=a/b
        print(sonuc)

end

hsp.topla(7,10,27,66,55)
hsp.carp(6,5,5,5)
--[Modül kavramı diğer programlama dillerindeki class kavramıyla eşleşir.--]
