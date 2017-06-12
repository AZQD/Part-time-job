local _M = {
    _VERSION = '0.01',
}

function _M.error(err)
	local s = {}
	s['status'] = 500
	s['msg'] = err
	ngx.say(cjson.encode(s))
	ngx.exit(200)
end

function _M.done(data)
	local s = {}
	s['status'] = 200
	s['msg'] = ''
	s['data'] = data
	ngx.say(cjson.encode(s))
	ngx.exit(200)
end

return _M
