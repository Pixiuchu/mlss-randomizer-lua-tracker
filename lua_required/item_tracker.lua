refreshItemFlags()

local numberTable = {
	[0] = "./location_names/Number0 - Copy.png",
	[1] = "./location_names/Number1 - Copy.png",
	[2] = "./location_names/Number2 - Copy.png",
	[3] = "./location_names/Number3 - Copy.png",
	[4] = "./location_names/Number4 - Copy.png",
	[5] = "./location_names/Number5 - Copy.png",
	[6] = "./location_names/Number6 - Copy.png",
	[7] = "./location_names/Number7 - Copy.png",
	[8] = "./location_names/Number8 - Copy.png",
	[9] = "./location_names/Number9 - Copy.png",
	[10] = "./location_names/NumberSlash - Copy.png",
}

function drawItem(ItemAddress, XPos, YPos, ImageON, ImageOFF)
	local itemType = ramTable[ItemAddress][1]
	-- Special check for Hammers
	if (ItemAddress == "iHammers1") or (ItemAddress == "iHammers2") or (ItemAddress == "iHammers3") then
		local ReadHammers = itemFlag("iHammers1") + itemFlag("iHammers2") + itemFlag("iHammers3")
		if ReadHammers == 0 then
			drawImage = forms.drawImage(picture_box, "./disabled_items/Hammers.png", 10+((XPos-1)*55), 10+((YPos-1)*55))
		elseif ReadHammers == 1 then
			drawImage = forms.drawImage(picture_box, "./items/Hammers.png", 10+((XPos-1)*55), 10+((YPos-1)*55))
		elseif ReadHammers == 2 then
			drawImage = forms.drawImage(picture_box, "./items/Hammers2.png", 10+((XPos-1)*55), 10+((YPos-1)*55))
		elseif ReadHammers == 3 then
			drawImage = forms.drawImage(picture_box, "./items/Hammers3.png", 10+((XPos-1)*55), 10+((YPos-1)*55))
		end
	
	-- Special check for Beanstar Pieces + Real Beanstar special behaviour
	elseif (ItemAddress == "iBeanstarPiece1") or (ItemAddress == "iBeanstarPiece2") or (ItemAddress == "iBeanstarPiece3") or (ItemAddress == "iBeanstarPiece4") then
		if itemFlag("BeanstarFlag1") == 1 or itemFlag("iRealBeanstar") == 1 then
			drawImage = forms.drawImage(picture_box, "./items/RealBeanstar.png", 10+((6.25-1)*55), 10+((1.25-1)*55))
		elseif itemFlag(ItemAddress) == 0 then
			drawImage = forms.drawImage(picture_box, ImageOFF, 10+((XPos-1)*55), 10+((YPos-1)*55))
		else
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		end
	
	-- Special check for Chuckola Fruits
	elseif (ItemAddress == "iRedChuckolaFruit") or (ItemAddress == "iPurpleChuckolaFruit") or (ItemAddress == "iWhiteChuckolaFruit") then
		if itemFlag("ChuckolaFruitFlag") == 1 then
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		elseif itemFlag(ItemAddress) == 0 then
			drawImage = forms.drawImage(picture_box, ImageOFF, 10+((XPos-1)*55), 10+((YPos-1)*55))
		else
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		end
	
	-- Special check for Peach's Extra Dress
	elseif ItemAddress == "iPeachsExtraDress" then
		if itemFlag("JokesEndFawfulFlag") == 1 then
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		elseif itemFlag(ItemAddress) == 0 then
			drawImage = forms.drawImage(picture_box, ImageOFF, 10+((XPos-1)*55), 10+((YPos-1)*55))
		else
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		end
	
	-- Special check for Neon Eggs
	elseif (ItemAddress == "iNeonEggBlue") or (ItemAddress == "iNeonEggRed") or (ItemAddress == "iNeonEggGreen") or (ItemAddress == "iNeonEggYellow") or (ItemAddress == "iNeonEggPurple") or (ItemAddress == "iNeonEggOrange") or (ItemAddress == "iNeonEggAzure") then
		if itemFlag("NeonEggsGivenFlag") == 1 then
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		elseif itemFlag(ItemAddress) == 0 then
			drawImage = forms.drawImage(picture_box, ImageOFF, 10+((XPos-1)*55), 10+((YPos-1)*55))
		else
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		end
	
	-- Special check for Fire Palace
	elseif ItemAddress == "iFirebrand" then
		if itemFlag("iFirebrand") == 1 then
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		elseif itemFlag("iFirebrandRAM") == 1 then
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		else
			drawImage = forms.drawImage(picture_box, ImageOFF, 10+((XPos-1)*55), 10+((YPos-1)*55))
		end
		
	-- Special check for Thunder Palace
	elseif ItemAddress == "iThunderhand" then
		if itemFlag("iThunderhand") == 1 then
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		elseif itemFlag("iThunderhandRAM") == 1 then
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		else
			drawImage = forms.drawImage(picture_box, ImageOFF, 10+((XPos-1)*55), 10+((YPos-1)*55))
		end
	
	-- Special check for Red Pearl Bean
	elseif ItemAddress == "iRedPearlBean" then
		if itemFlag("iRedPearlBean") == 1 then
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		elseif itemFlag("iRedPearlBeanRAM") == 1 then
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		else
			drawImage = forms.drawImage(picture_box, ImageOFF, 10+((XPos-1)*55), 10+((YPos-1)*55))
		end
		
	-- Special check for Green Pearl Bean
	elseif ItemAddress == "iGreenPearlBean" then
		if itemFlag("iGreenPearlBean") == 1 then
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		elseif itemFlag("iGreenPearlBeanRAM") == 1 then
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		else
			drawImage = forms.drawImage(picture_box, ImageOFF, 10+((XPos-1)*55), 10+((YPos-1)*55))
		end
	
	-- Special check for Beanstar Emblems
	elseif ItemAddress == "currentEmblems" then
		local has = readRam("currentEmblems")
		local need = readRam("requiredEmblems")
		local function drawNeeded()
			local needEmblem1 = math.floor(need/100 % 10)
			local needEmblem2 = math.floor(need/10 % 10)
			local needEmblem3 = math.floor(need/1 % 10)
			forms.drawImage(picture_box, numberTable[10], 42+10+((XPos*55)-80), 50+((YPos-1)*55))
			
			if need >= 100 then
				forms.drawImage(picture_box, numberTable[needEmblem1], 56+10+((XPos*55)-80), 50+((YPos-1)*55))
				forms.drawImage(picture_box, numberTable[needEmblem2], 70+10+((XPos*55)-80), 50+((YPos-1)*55))
				forms.drawImage(picture_box, numberTable[needEmblem3], 84+10+((XPos*55)-80), 50+((YPos-1)*55))
			elseif need >= 10 then
				forms.drawImage(picture_box, numberTable[needEmblem2], 56+10+((XPos*55)-80), 50+((YPos-1)*55))
				forms.drawImage(picture_box, numberTable[needEmblem3], 70+10+((XPos*55)-80), 50+((YPos-1)*55))
			elseif need >= 0 then
				forms.drawImage(picture_box, numberTable[needEmblem3], 56+10+((XPos*55)-80), 50+((YPos-1)*55))
			end
		end
		local function drawHas()
			local hasEmblem1 = math.floor(has/100 % 10)
			local hasEmblem2 = math.floor(has/10 % 10)
			local hasEmblem3 = math.floor(has/1 % 10)
			
			if has >= 100 then
				forms.drawImage(picture_box, numberTable[hasEmblem1], 10+((XPos*55)-80), 50+((YPos-1)*55))
				forms.drawImage(picture_box, numberTable[hasEmblem2], 14+10+((XPos*55)-80), 50+((YPos-1)*55))
				forms.drawImage(picture_box, numberTable[hasEmblem3], 28+10+((XPos*55)-80), 50+((YPos-1)*55))
			elseif has >= 10 then
				forms.drawImage(picture_box, numberTable[hasEmblem2], 14+10+((XPos*55)-80), 50+((YPos-1)*55))
				forms.drawImage(picture_box, numberTable[hasEmblem3], 28+10+((XPos*55)-80), 50+((YPos-1)*55))
			elseif has >= 0 then
				forms.drawImage(picture_box, numberTable[hasEmblem3], 28+10+((XPos*55)-80), 50+((YPos-1)*55))
			end
		end
			
		if has == 0xFF then has = 0x0 end
		if has < need then
			drawImage = forms.drawImage(picture_box, ImageOFF, 10+((XPos-1)*55), 10+((YPos-1)*55))
			drawHas()
			drawNeeded()
		else
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
			drawHas()
			drawNeeded()			
		end
	
	
	-- Generic item check
	elseif itemType == 1 then
		if itemFlag(ItemAddress) == 0 then
			drawImage = forms.drawImage(picture_box, ImageOFF, 10+((XPos-1)*55), 10+((YPos-1)*55))
		else
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		end
	else
		if itemFlag(ItemAddress) == 0 then
			drawImage = forms.drawImage(picture_box, ImageOFF, 10+((XPos-1)*55), 10+((YPos-1)*55))
		else
			drawImage = forms.drawImage(picture_box, ImageON, 10+((XPos-1)*55), 10+((YPos-1)*55))
		end
	end
	
	return drawImage
end

function refreshItems()
	PeasleysRose = drawItem("iPeasleysRose", 2, 1, "./items/PeasleysRose.png", "./disabled_items/PeasleysRose.png")
	BeanbeanBrooch = drawItem("iBeanbeanBrooch", 3, 1, "./items/BeanbeanBrooch.png", "./disabled_items/BeanbeanBrooch.png")
	RedGoblet = drawItem("iRedGoblet", 1, 2, "./items/RedGoblet.png", "./disabled_items/RedGoblet.png")
	GreenGoblet = drawItem("iGreenGoblet", 1, 3, "./items/GreenGoblet.png", "./disabled_items/GreenGoblet.png")
	RedChuckolaFruit = drawItem("iRedChuckolaFruit", 4, 1, "./items/ChuckolaFruitRed.png", "./disabled_items/ChuckolaFruitRed.png")
	WhiteChuckolaFruit = drawItem("iWhiteChuckolaFruit",4, 2, "./items/ChuckolaFruitWhite.png", "./disabled_items/ChuckolaFruitWhite.png")
	PurpleChuckolaFruit = drawItem("iPurpleChuckolaFruit", 4, 3, "./items/ChuckolaFruitPurple.png", "./disabled_items/ChuckolaFruitPurple.png")
	MembershipCard = drawItem("iMembershipCard", 5, 3, "./items/MembershipCard.png", "./disabled_items/MembershipCard.png")
	WinkleCard = drawItem("iWinkleCard", 6, 3, "./items/WinkleCard.png", "./disabled_items/WinkleCard.png")
	PeachsExtraDress = drawItem("iPeachsExtraDress", 5, 2, "./items/PeachsExtraDress.png", "./disabled_items/PeachsExtraDress.png")
	FakeBeanstar = drawItem("iFakeBeanstar", 5, 1, "./items/FakeBeanstar.png", "./disabled_items/FakeBeanstar.png")
	RedPearlBean = drawItem("iRedPearlBean", 3, 2, "./items/RedPearlBean.png", "./disabled_items/RedPearlBean.png")
	GreenPearlBean = drawItem("iGreenPearlBean", 3, 3, "./items/GreenPearlBean.png", "./disabled_items/GreenPearlBean.png")
	BeanFruit1 = drawItem("iBeanFruit1", 1, 4, "./items/BeanFruit.png", "./disabled_items/BeanFruit.png")
	BeanFruit2 = drawItem("iBeanFruit2", 2, 4, "./items/BeanFruit.png", "./disabled_items/BeanFruit.png")
	BeanFruit3 = drawItem("iBeanFruit3", 3, 4, "./items/BeanFruit.png", "./disabled_items/BeanFruit.png")
	BeanFruit4 = drawItem("iBeanFruit4", 4, 4, "./items/BeanFruit.png", "./disabled_items/BeanFruit.png")
	BeanFruit5 = drawItem("iBeanFruit5", 5, 4, "./items/BeanFruit.png", "./disabled_items/BeanFruit.png")
	BeanFruit6 = drawItem("iBeanFruit6", 6, 4, "./items/BeanFruit.png", "./disabled_items/BeanFruit.png")
	BeanFruit7 = drawItem("iBeanFruit7", 7, 4, "./items/BeanFruit.png", "./disabled_items/BeanFruit.png")
	NeonEggBlue = drawItem("iNeonEggBlue", 3, 5, "./items/NeonEggBlue.png", "./disabled_items/NeonEggBlue.png")
	NeonEggRed = drawItem("iNeonEggRed", 5, 5, "./items/NeonEggRed.png", "./disabled_items/NeonEggRed.png")
	NeonEggGreen = drawItem("iNeonEggGreen", 1, 5, "./items/NeonEggGreen.png", "./disabled_items/NeonEggGreen.png")
	NeonEggYellow = drawItem("iNeonEggYellow", 7, 5, "./items/NeonEggYellow.png", "./disabled_items/NeonEggYellow.png")
	NeonEggPurple = drawItem("iNeonEggPurple", 4, 5, "./items/NeonEggPurple.png", "./disabled_items/NeonEggPurple.png")
	NeonEggOrange = drawItem("iNeonEggOrange", 6, 5, "./items/NeonEggOrange.png", "./disabled_items/NeonEggOrange.png")
	NeonEggAzure = drawItem("iNeonEggAzure", 2, 5, "./items/NeonEggAzure.png", "./disabled_items/NeonEggAzure.png")
	BeanstarPiece1 = drawItem("iBeanstarPiece1", 6, 1, "./items/BeanstarPiece1.png", "./disabled_items/BeanstarPiece1.png")
	BeanstarPiece2 = drawItem("iBeanstarPiece2", 7, 1, "./items/BeanstarPiece2.png", "./disabled_items/BeanstarPiece2.png")
	BeanstarPiece3 = drawItem("iBeanstarPiece3", 7, 2, "./items/BeanstarPiece3.png", "./disabled_items/BeanstarPiece3.png")
	BeanstarPiece4 = drawItem("iBeanstarPiece4", 6, 2, "./items/BeanstarPiece4.png", "./disabled_items/BeanstarPiece4.png")
	Spangle = drawItem("iSpangle", 7, 3, "./items/Spangle.png", "./disabled_items/Spangle.png")
	Hammers = drawItem("iHammers1", 1, 1, nil, nil)
	Firebrand = drawItem("iFirebrand", 2, 2, "./items/FirebrandFlame.png", "./disabled_items/FirebrandFlame.png")
	Thunderhand = drawItem("iThunderhand", 2, 3, "./items/ThunderhandSpark.png", "./disabled_items/ThunderhandSpark.png")
	GreedWallet = drawItem("iGreedWallet", 1, 6, "./items/GreedWallet.png", "./disabled_items/GreedWallet.png")
	BonusRing = drawItem("iBonusRing", 2, 6, "./items/BonusRing.png", "./disabled_items/BonusRing.png")
	ExciteSpring = drawItem("iExciteSpring", 3, 6, "./items/ExciteSpring.png", "./disabled_items/ExciteSpring.png")
	GreatForce = drawItem("iGreatForce", 4, 6, "./items/GreatForce.png", "./disabled_items/GreatForce.png")
	PowerGrip = drawItem("iPowerGrip", 5, 6, "./items/PowerGrip.png", "./disabled_items/PowerGrip.png")
	CobaltNecktie = drawItem("iCobaltNecktie", 6, 6, "./items/CobaltNecktie.png", "./disabled_items/CobaltNecktie.png")
	GameBoyHorrorSP = drawItem("iGameBoyHorrorSP", 7, 6, "./items/GameBoyHorrorSP.png", "./disabled_items/GameBoyHorrorSP.png")
	if readRam("requiredEmblems") > 0 then
		BeanstarEmblems = drawItem("currentEmblems", 4.05, 7.3, "./items/BeanstarEmblems.png", "./disabled_items/BeanstarEmblems.png") 
	end
	
	
	forms.clearImageCache(picture_box)
	--"SecretScroll1 "= drawItem(i--)
	--"SecretScroll2 "= drawItem(i--)
	-- Mush Badge, Secret Scrolls, 
end