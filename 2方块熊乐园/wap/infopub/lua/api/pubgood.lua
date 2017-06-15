local mysql = require("infopub_mysql")
local session = require("infopub_session")

local _M = {
    _VERSION = '0.01',
}

--[[
输入:
	{
		"token":"", 			//用户登录凭证，如果是匿名发布则留空""
		"cid":"",				//产品分类ID
		"issell":"",			//是否是出售，"1"为出售，"0"为需求
		"goodstatus":"",		//产品新旧,"0","1","2","3","4","5"...
		"price":"",				//价格
		"title":"title",		//标题
		"details":"details",	//产品详情
		"addr_l1":"",			//一级地址 ID
		"addr_l2":"",			//二级地址 ID
		"addr_l3":"",			//三级地址 ID
		"addr_l4":"",			//详细地址
		"contactname":"name",	//联系人姓名
		"phone":"phone",		//联系人手机
		"imgs":""				//产品图片ID，图片ID通过图片上传接口获得
	}
--]]

local function gsqlstr(dt, uid)
	local sql = "insert into info_gg_publist(`uid`,`details`,`phone`,`cid`,`issell`,`pubtime`,`goodstatus`, `contactname`,`imgs`,`price`,`title`,`addr_l1`,`addr_l2`,`addr_l3`,`addr_l4`) VALUES("
    sql = sql..uid..","
    sql = sql..ngx.quote_sql_str(dt.details)..","
    sql = sql..ngx.quote_sql_str(dt.phone)..","
    sql = sql..tonumber(dt.cid)..","
    sql = sql..tonumber(dt.issell)..","
    sql = sql.."now()"..","
    sql = sql..tonumber(dt.goodstatus)..","
    sql = sql..ngx.quote_sql_str(dt.contactname)..","
    sql = sql..ngx.quote_sql_str(dt.imgs)..","
    sql = sql..ngx.quote_sql_str(dt.price)..","
    sql = sql..ngx.quote_sql_str(dt.title)..","
    sql = sql..tonumber(dt.addr_l1)..","
    sql = sql..tonumber(dt.addr_l2)..","
    sql = sql..tonumber(dt.addr_l3)..","
    sql = sql..ngx.quote_sql_str(dt.addr_l4)..")"
    
    ngx.log(ngx.INFO, sql)
    return sql
end

function _M.main()
	ngx.req.read_body()
    local data = ngx.req.get_body_data()
    if not data then
    	out.error('no body')
    end
    
    local dt = cjson.decode(data)
    if not dt then
    	out.error('data error')
    end
    
    if dt.token or (dt.token and #dt.token==0) then
    	--匿名发布
    	local sql = gsqlstr(dt, 0)	    
		local res, err = mysql.query(sql)
		if res then
			out.done("success")
		end
    end
    
    local session_info = session.gettable(dt.token)
    if not session_info then
	out.error("TOKEN_INVAID",out.ERR_TOKEN_INVAID, "/login")
    end
    
    if #dt.cid<1 then
    	dt.cid = 1
    end
    local sql = gsqlstr(dt, session_info.id)
	local res, err = mysql.query(sql)
	if res then
		out.done("success")
	end
	
	out.error("failed")
end

return _M
