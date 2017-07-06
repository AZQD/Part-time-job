local g = require("infopub_config")
local mysql = require("infopub_mysql")
local session = require("infopub_session")
local out = require "infopub_output"

local _M = {
    _VERSION = '0.01',
}

function _M.main()
	local ret_t = {}
	local others = {}
	local inum = 1
	local sql = "select * from info_gg_category where main=1"
	local res, err = mysql.query(sql)
	if res then
		if table.maxn(res) > 0 then
			for k, v in pairs(res) do
				sql = "select * from info_gg_category where pid="..v.id
				local lres, lerr = mysql.query(sql)
				if lres then
					local lt = {}
					if v.name ~= 'Others' then
						lt['name'] = v.name
						lt['cid'] = v.id
						lt['id'] = v.id
						lt['imgsrc'] = v.imgsrc
						for k1, v1 in ipairs(lres) do
							v1['cid'] = v1.id
						end
						lt['sub'] = lres

						ret_t[inum] = lt
						inum = inum+1
					else
						others['name'] = v.name
						others['cid'] = v.id
						others['id'] = v.id
						others['imgsrc'] = v.imgsrc
						for k1, v1 in ipairs(lres) do
							v1['cid'] = v1.id
						end
						others['sub'] = lres
					end
				end
			end
			
			ret_t[inum] = others
			out.done(cjson.encode(ret_t))
		end
	end
	out.error('failed')
end

return _M