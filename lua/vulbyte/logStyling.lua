--Default		                \033[39m		\033[49m	
--Black		                    \033[30m		\033[40m	
--Dark red		                \033[31m		\033[41m	
--Dark green		            \033[32m		\033[42m	
--Dark yellow (Orange-ish)		\033[33m		\033[43m	
--Dark blue		                \033[34m		\033[44m	
--Dark magenta		            \033[35m		\033[45m	
--Dark cyan		                \033[36m		\033[46m	
--Light gray		            \033[37m		\033[47m	
--Dark gray		                \033[90m		\033[100m	
--Red		                    \033[91m		\033[101m	
--Green		                    \033[92m		\033[101m	
--Orange		                \033[93m		\033[103m	
--Blue		                    \033[94m		\033[104m	
--Magenta		                \033[95m		\033[105m	
--Cyan		                    \033[96m		\033[106m	
--White		                    \033[97m		\033[107m
print("LOADING: ./nvim/lua/vulbyte/logStyling.lua")


function logLoading(instr)
	print('LOADING: ', instr)
--      print("\027[93m" , "LOADED: " , '\27[0m\n' , instr) --dark yellow
end

function logLoaded(instr)
    --print(string.format("27[%dm%s27[0m", 33, 'LOADING: ', instr))
    --lua -e 'print(string.format("27[%dm%s27[0m", 31, "hello"))'
	print('LOADED: ', instr)
end

function Error(instr)
    --print('\027[31m' , "ERROR: " , '\27[0m\n' , instr) --red
	print('ERROR: ', instr)
end


print("LOADED: ./nvim/lua/vulbyte/logStyling.lua")


