--[Klavyeden girilen bir sayının faktortiyeli--]

local sayi
local fkt=1
print("Faktoriyeli alınacak sayı:")
sayi=io.read()
sayi=tonumber(sayi)
for i=1,sayi,1
do
	fkt=fkt*i
end
print(sayi,"!=",fkt)
