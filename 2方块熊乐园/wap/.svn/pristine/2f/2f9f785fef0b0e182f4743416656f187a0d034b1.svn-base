local g = require("infopub_config")
local mysql = require("infopub_mysql")
local session = require("infopub_session")
local out = require "infopub_output"

local _M = {
    _VERSION = '0.01',
}

function _M.main()
	local goodid = ngx.var.arg_id
	if not goodid then
		out.error('id is null')
	end
	
	goodid = tonumber(goodid)
	local sql = "select * from info_gg_publist where id="..goodid
	local res, err = mysql.query(sql)
	if res then
		if table.maxn(res) > 0 then
			out.done(cjson.encode(res))
		end
	end
	out.error('failed')
end

return _M