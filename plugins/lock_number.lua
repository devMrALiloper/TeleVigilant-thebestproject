local function run(msg)

    local data = load_data(_config.moderation.data)

     if data[tostring(msg.to.id)]['settings']['lock_number'] == '‚úÖ' then


if msg.to.type == 'channel' and not is_momod(msg) then
	delete_msg(msg.id,ok_cb,false)

        return 
      end
   end
end

return {patterns = {
    "1",
    "2",
    "3",
    "4òò",
    "5è",
    "6",
    "7",
    "8",
    "9",
    "0"
}, run = run}

--By DRAGON