local function run(msg)
	local data = load_data(_config.moderation.data)
	if is_momod(msg) then
		--no return
	elseif data[tostring(msg.to.id)]['settings']['lock_english'] == 'yes' then
		if msg.to.type == 'channel' and not is_momod(msg) then
			if not msg.media then
				delete_msg(msg.id,ok_cb,false)
			end
		end
	end
end

return {
	patterns = {
	"[Aa](.*)",
        "[Bb](.*)",
   	"[Cc](.*)",
  	"[Dd](.*)",
        "[Ee](.*)",
  	"[Ff](.*)",
    	"[Gg](.*)",
  	"[Hh](.*)",
    	"[Ii](.*)",
    	"[Jj](.*)",
    	"[Kk](.*)",
    	"[Ll](.*)",
    	"[Mm](.*)",
    	"[Nn](.*)",
    	"[Oo](.*)",
    	"[Pp](.*)",
    	"[Qq](.*)",
    	"[Rr](.*)",
    	"[Ss](.*)",
    	"[Tt](.*)",
    	"[Uu](.*)",
    	"[Vv](.*)",
    	"[Ww](.*)",
    	"[Xx](.*)",
    	"[Yy](.*)",
    	"[Zz](.*)"
	},
 	run = run
}

--@Mr_AL_i
