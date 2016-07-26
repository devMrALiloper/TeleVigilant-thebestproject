local function save_value(msg, name, value)
  if (not name or not value) then
    return "مقدار وارد شده صحيح نيست"
  end  
  local hash = nil
  if msg.to.type == 'chat' then
    hash = 'chat:'..msg.to.id..':variables'
  end
  if msg.to.type == 'user' then
    hash = 'user:'..msg.from.id..':variables'
  end
  if hash then
    redis:hset(hash, name, value)
    return "ذخيره شد "..name
  end
end

local function get_variables_hash(msg)
  if msg.to.type == 'chat' then
    return 'chat:'..msg.to.id..':variables'
  end
  if msg.to.type == 'user' then
    return 'user:'..msg.from.id..':variables'
  end
end 

local function list_variables(msg)
  local hash = get_variables_hash(msg)  
  if hash then
    local names = redis:hkeys(hash)
	local text = 'ليست دستورات:\n______________________________\n'
    for i=1, #names do
      text = text..'> '..names[i]..'\n'
    end
    return text
  end
end

local function get_value(msg, var_name)
  local hash = get_variables_hash(msg)
  if hash then
    local value = redis:hget(hash, var_name)
    if value then
      return value
    end
  end
end

local function run(msg, matches)
  local data = load_data(_config.moderation.data)
  if matches[1] == "!" then
    return get_value(msg, matches[2])
  elseif matches[1] == "etlist" then
    return list_variables(msg)
  elseif matches[1] == "et" then
    if data[tostring(msg.to.id)] then
      local settings = data[tostring(msg.to.id)]['settings']
      if not is_momod(msg) then
        return "شما مدير نيستيد"
	  else
	    local name = string.sub(matches[2], 1, 50)
        local value = string.sub(matches[3], 1, 1000)
        local text = save_value(msg, name, value)
        return text
      end
    end
  end
end

return {
  description = "Set and Get Variables", 
  usagehtm = '<tr><td align="center">set متن نام</td><td align="right">با این ابزار شما قادر خواهید شد که متنی را با نامی خاص ذخیره کنید و در صورت لزوم آن متن را فرا بخوانید</td></tr>'
  ..'<tr><td align="center">!نام</td><td align="right">با استفاده از یک علامت تعجب قبل از نام متنهایی که ذخیره کردید میتوانید آن متن را فرا بخوانید</td></tr>'
  ..'<tr><td align="center">getlist</td><td align="right">لیست متونی که به وصیله ی دستور ست ذخیره شده اند</td></tr>',
  usage = {
  	user = {
		"!(name) : فراخاني دستور",
		"getlist : ليست دستورات ثبت شده",
	},
	moderator = {
		"set (name) (txt) : ثبت دستور",
	},
	},
  patterns = {
    "^[Ss](et) ([^%s]+) (.+)$",
    "^(!)(.+)$",
    "^[Gg](etlist)$",
  },
  run = run
}