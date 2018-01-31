--[ATM Uygulaması--]

local bakiye=5000
cekilecekMiktar=0
banknot={{1,100},{5,100},{10,100},{20,100},{50,100},{100,100},{200,100}}
yazdir=function ()
		print("Banknot\tMiktar")
		print("-------\t------")
		for i=1,7,1
		do
			print(banknot[i][1],banknot[i][2])
		end	

	end
ana=function()
		print("1-Yönetici")
		print("2-Müşteri")
		io.write("Seçiminizi yapınız(1|2):")
		secim=io.read()
		if secim=="1"
		then
			print("1-Miktar Sorgulama")
			print("2-Banknot Ekleme")
			print("Seçiminizi yapınız(1|2):")
			secimYonetici=io.read()
			if secimYonetici=="1"
			then
				yazdir()
				don()
			end		

			if secimYonetici=="2"
				then
				for i=1,7,1
				do
			
					io.write(banknot[i][1]," TL miktarı:")
					local m=io.read()
					banknot[i][2]=banknot[i][2]+m
			
				end	
				yazdir()
				don()
			end
		end
		if secim=="2"
		then
			print("1-Bakiye Sorgulama\n2-Para Çekme\n3-Para Yatırma")
			io.write("Seçiminizi Yapınız(1|2|3):")
			local secimMusteri=io.read()
			if secimMusteri=="1"
			then
				print("Bakiye:",bakiye," TL")
				don()
			end
		if secimMusteri=="2"
		then
			io.write("Çekmek istediğiniz miktarı yazınız:")
			cekilecekMiktar=io.read()
			cekilecekMiktar=tonumber(cekilecekMiktar)
			if cekilecekMiktar<bakiye
			then
				bakiye=bakiye-cekilecekMiktar
		
			
				for i=7,1,-1
				do
					if tonumber(banknot[i][2])>0
					then
						adet=math.floor(cekilecekMiktar/banknot[i][1])
						banknot[i][2]=banknot[i][2]-adet
						cekilecekMiktar=cekilecekMiktar-tonumber(adet*banknot[i][1])
						if cekilecekMiktar==0
						then
							break
						end
					end
				end
			
				print("Bakiye:",bakiye," TL")
				don()
			
			else
				print("Bakiye yetersiz")	
				don()
			end
		end
		if secimMusteri=="3"
		then	
			yatacakMiktar=0
			for i=1,7,1
	                do

        	                io.write("Yatırılacak ",banknot[i][1]," TL miktarı:")
                	        local b=io.read()
				b=tonumber(b)
	                        banknot[i][2]=banknot[i][2]+b
			yatacakMiktar=yatacakMiktar+(banknot[i][1]*b)	
        	        end
			bakiye=bakiye+yatacakMiktar
	
			print("Bakiye=",bakiye," TL")		
        		don()
		end        
end
		
	end
bitis=function()
		print("Bizi tercih ettiğiniz için teşekkür ederiz")
	end
don=function ()
		print("Yapılacak işlemi seçiniz:")
		print("1-Ana Menü")
		print("2-Çıkış")
		io.write("Seçiminiz(1|2):")
		local s=io.read()
		if s=="1"
		then
			return ana()
		end
		if s=="2"
		then
			return bitis()
		end
			
	end
yazdir()
ana()


