ESX = nil

CreateThread(function ()
	if exports["es_extended"]:getSharedObject() then
		ESX = exports["es_extended"]:getSharedObject()
		if ESX ~= nil then
			CreateThread(function ()
				Wait(2000)
				print("[ESX] Optimized for ESX Legacy")
				Wait(100)
				TerminateThisThread()
			end)
		else
			while ESX == nil do
				TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
				Wait(0)
			end
			if ESX ~= nil then
			  CreateThread(function ()
				  Wait(2000)
				  print("[ESX] Optimized for ESX V1")
				  Wait(100)
				  TerminateThisThread()
			  end)
			else
				CreateThread(function ()
					Wait(2000)
					print("[ESX] Failed to fetch Framework")
					Wait(100)
					TerminateThisThread()
				end)
			end
		end
	else
		while ESX == nil do
			TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
			Wait(0)
		end
		if ESX ~= nil then
			CreateThread(function ()
				Wait(2000)
				print("[ESX] Optimized for ESX V1")
				Wait(100)
				TerminateThisThread()
			end)
		else
			CreateThread(function ()
				Wait(2000)
				print("[ESX] Failed to fetch Framework")
				Wait(100)
				TerminateThisThread()
			end)
		end
	end
end)