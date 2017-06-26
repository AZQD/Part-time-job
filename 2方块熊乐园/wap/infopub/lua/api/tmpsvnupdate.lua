local g = require("infopub_config")

local svnupdate = g.base_dir.."../WEB/update.sh"
os.execute("svnupdate")

ngx.say("OK")