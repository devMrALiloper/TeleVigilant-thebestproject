local function is_channel_disabled( receiver )
	if not _config.disabled_channels then
		return false
	end
	if _config.disabled_channels[receiver] == nil then
		return false
	end
  return _config.disabled_channels[receiver]
end

local function enable_channel(receiver)
	if not _config.disabled_channels then
		_config.disabled_channels = {}
	end
	if _config.disabled_channels[receiver] == nil then
		return
	end
	_config.disabled_channels[receiver] = false
	save_config()
	return "✅روبات شما روشن است😐"
end

local function disable_channel( receiver )
	if not _config.disabled_channels then
		_config.disabled_channels = {}
	end
	_config.disabled_channels[receiver] = true
	save_config()
	return "💤ربات شما خاموش است😴"
end

local function pre_process(msg)
	local receiver = get_receiver(msg)
	if is_momod(msg) then
	  if msg.text == "/bot on" then
	    enable_channel(receiver)
	  end
	end
  if is_channel_disabled(receiver) then
  	msg.text = ""
  end
	return msg
end

local function run(msg, matches)
	local receiver = get_receiver(msg)
	if matches[1] == 'on' then
		return enable_channel(receiver)
	end
	if matches[1] == 'off' then
		return disable_channel(receiver)
	end
end

return {
	description = "Robot Switch", 
	usagehtm = '<tr><td align="center">/bot off</td><td align="right">خاموش کردن ربات در گروه به طوری که به هیچ دستوری پاسخ نخواهد داد</td></tr>'
	..'<tr><td align="center">/bot on</td><td align="right">فعال سازی مجدد ربات در گروه</td></tr>',
	usage = {
	moderator = {
		"/bot on|off : خاموش-روشن کردن ربات",
	},
	},
	patterns = {
		"^/bot? (on)",
		"^/bot? (off)" }, 
	run = run,
	--privileged = true,
	moderated = true,
	pre_process = pre_process
}
