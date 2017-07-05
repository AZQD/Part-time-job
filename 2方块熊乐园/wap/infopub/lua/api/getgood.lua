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
			if not res[1].cimg or #res[1].cimg < 1 then
				local pc = string.find(res[1].imgs, ',')
				if pc then
					res[1].cimg = string.sub(res[1].imgs, 0, pc-1)
				end
			end
			out.done(cjson.encode(res[1]))
		end
	end
	out.error('failed')
end

return _M