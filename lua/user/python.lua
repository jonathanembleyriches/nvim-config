
local handle = io.popen("which python")
local result = handle:read("*a")

handle:close()

result = tostring(result)
result = result:gsub("%s", "")
--_out = os.getenv("PYTHON_PATH")
--_out = result
--local file,err = io.open("log.txt","w")


--if file then
--  file:write(result)
--  file:close()
--else 
--  print("err")
--end


return {--path="/home/jon/anaconda3/envs/py38/bin/python3.8"
path = result
}
