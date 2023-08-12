local OLD_PRINT = print

print = function(content)
	OLD_PRINT("[</>] " ..GetCurrentResourceName().. " >> " ..content)
end