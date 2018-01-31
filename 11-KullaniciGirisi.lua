toplam=0
sayilar={}
for i=0,4,1
do
	print(i+1,". sayıyı giriniz:")
	sayilar[i]=io.read()
	toplam=toplam+sayilar[i]
	print(toplam)
	--[ io.read() fonksiyonu dışarıdan veri almak için kullanılır --]
end

