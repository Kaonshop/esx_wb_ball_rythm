ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--操你媽 不要拿去賣 操你媽 不要拿去賣--
ESX.RegisterUsableItem('o_ball', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local chance = math.random(100)

	print("esx_wb_Gachaball 本檔案由Rythm#1451製作 請勿抄襲轉賣分享")

	if xPlayer.getInventoryItem('o_ball_card').count < 1 then
		TriggerClientEvent('esx:showNotification', source, '~b~正在嘗試打開扭蛋')
		Citizen.Wait(3000)
		TriggerClientEvent('esx:showNotification', source, '~r~怎麼打不開...~o~看來需要一些尖銳的物品')
	else 
		TriggerClientEvent('esx:showNotification', source, '~b~正在嘗試打開扭蛋')
		Citizen.Wait(3000)
		TriggerClientEvent('esx:showNotification', source, '~g~成功打開扭蛋')
		Citizen.Wait(3000)
		xPlayer.removeInventoryItem('o_ball', 1)
		TriggerClientEvent('esx:showAdvancedNotification', source, '扭蛋', '~o~澳門扭蛋出口股份有限公司', '~p~究竟會抽到什麼呢', 'CHAR_LIFEINVADER', 3)
		Citizen.Wait(5000)
		if chance > 60 then 
			xPlayer.addInventoryItem('dia_box', 2)
			TriggerClientEvent('esx:showNotification', source, '~p~恭喜你中了二獎: ~b~鑽石~g~兩顆')
		elseif chance > 80 then 
			xPlayer.addInventoryItem('food', 1)
			TriggerClientEvent('esx:showNotification', source, '~g~恭喜你中了頭獎: ~b~食物券~g~一張')
		elseif chance > 85 then 
			xPlayer.addMoney(1000)
			TriggerClientEvent('esx:showNotification', source, '~g~恭喜你中了現金獎: ~b~現金~g~$1000')
		else  
			xPlayer.addInventoryItem('cupcake', 1)
			TriggerClientEvent('esx:showNotification', source, '~r~TMD運氣真差...只有~b~一個小蛋糕')
		end
	end
end)

ESX.RegisterUsableItem('b_ball', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local chance = math.random(100)

	print("esx_wb_Gachaball 本檔案由Rythm#1451製作 請勿抄襲轉賣分享")

	if xPlayer.getInventoryItem('b_ball_card').count < 1 then
		TriggerClientEvent('esx:showNotification', source, '~b~正在嘗試打開扭蛋')
		Citizen.Wait(3000)
		TriggerClientEvent('esx:showNotification', source, '~r~怎麼打不開...~o~看來需要一些尖銳的物品')
	else 
		TriggerClientEvent('esx:showNotification', source, '~b~正在嘗試打開扭蛋')
		Citizen.Wait(3000)
		TriggerClientEvent('esx:showNotification', source, '~g~成功打開扭蛋')
		Citizen.Wait(3000)
		xPlayer.removeInventoryItem('b_ball', 1)
		TriggerClientEvent('esx:showAdvancedNotification', source, '扭蛋', '~o~澳門扭蛋出口股份有限公司', '~p~究竟會抽到什麼呢', 'CHAR_LIFEINVADER', 3)
		Citizen.Wait(5000)
		if chance > 60 then 
			xPlayer.addInventoryItem('clip', 5)
			TriggerClientEvent('esx:showNotification', source, '~p~恭喜你中了二獎: ~b~子彈箱~g~5個')
		elseif chance > 80 then 
			xPlayer.addWeapon("weapon_vintagepistol", 750)
			TriggerClientEvent('esx:showNotification', source, '~g~恭喜你中了頭獎: ~b~老式手槍~g~一把')
		elseif chance > 85 then 
			xPlayer.addMoney(5000)
			TriggerClientEvent('esx:showNotification', source, '~g~恭喜你中了現金獎: ~b~現金~g~$5000')
		else  
			xPlayer.addInventoryItem('fries', 5)
			TriggerClientEvent('esx:showNotification', source, '~g~你獲得了~b~5個薯條')
		end
	end
end)

-----------------------------------------------------------------------------------------------
-----------------------Rythm自己的作品 請勿轉載或轉售 否則可能會負上法律責任-----------------------
-----------------------------------------------------------------------------------------------
-------------Please do not reprint or resell Rythm work, otherwise you may be liable-----------
-----------------------------------------------------------------------------------------------
