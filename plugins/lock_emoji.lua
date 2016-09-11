local function run(msg)

    local data = load_data(_config.moderation.data)

     if data[tostring(msg.to.id)]['settings']['lock_emoji'] == '✅' then


if msg.to.type == 'channel' and not is_momod(msg) then
	delete_msg(msg.id,ok_cb,false)

        return 
      end
   end
end

return {patterns = {
    "😀",
    "😆",
    "😂",
    "😘",
    "❤️",
    "😍",
    "😊",
    "💋",
    "😭",
    "😄",
    "😔",
    "☺️",
    "👍🏻",
    "😁",
    "😒",
    "😳",
    "😜",
    "🙈",
    "😉",
    "😃",
    "😢",
    "😚",
    "😅",
    "😞",
    "😏",
    "😡",
    "😱",
    "😝",
    "🙊",
    "😌",
    "😋",
    "👌🏻",
    "😐",
    "😕"
}, run = run}

--By @alireza_PT , channel : @create_antispam_bot
--@Mr_AL_i
