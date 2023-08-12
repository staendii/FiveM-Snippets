ESX = nil

CreateThread(function ()
	if exports["es_extended"]:getSharedObject() then
		ESX = exports["es_extended"]:getSharedObject()
		if ESX ~= nil then
			CreateThread(function ()
				Wait(2000)
				print("[ESX] Optimized for ESX Legacy")
			end)
		else
			TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
			if ESX ~= nil then
				CreateThread(function ()
					Wait(2000)
					print("[ESX] Optimized for ESX V1")
				end)
			else
				CreateThread(function ()
					Wait(2000)
					print("[ESX] Failed to fetch Framework")
				end)
			end
		end
	else
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		if ESX ~= nil then
			CreateThread(function ()
				Wait(2000)
				print("[ESX] Optimized for ESX V1")
			end)
			else
				CreateThread(function ()
				Wait(2000)
				print("[ESX] Failed to fetch Framework")
			end)
		end
	end
end)