local function run(msg)

    local data = load_data(_config.moderation.data)

     if data[tostring(msg.to.id)]['settings']['lock_number'] == '✅' then


if msg.to.type == 'channel' and not is_momod(msg) then
	delete_msg(msg.id,ok_cb,false)

        return 
      end
   end
end

return {patterns = {
    "[0123456789](.*)",
    "[0123456789]",
    "[٠١٢٣٤٥٦٧٨٩](.*)",
    "[٠١٢٣٤٥٦٧٨٩]"
}, run = run}

--By @Mr_AL_i
