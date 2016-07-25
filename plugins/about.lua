local function run(msg, matches)
if matches[1] == 'about' and matches[2] and is_admin1(msg) then
local data = load_data(_config.moderation.data)
      local group_link = data[tostring(matches[2])]['settings']['set_link']
       if not group_link then
      return 'Group ('..matches[2]..') Not Found!'
       end
        local group_owner = data[tostring(matches[2])]['set_owner']
       if not group_owner then 
         return 
       end
   local group_type = data[tostring(matches[2])]['group_type']
   if not group_type then
  return 
end
       local lock_link = data[tostring(matches[2])]['settings']['lock_link'] 
   if not lock_link then
  return 
end
   local lock_fwd = data[tostring(matches[2])]['settings']['lock_fwd'] 
   if not lock_fwd then
  return 
end
    local lock_arabic = data[tostring(matches[2])]['settings']['lock_arabic'] 
   if not lock_arabic then
  return 
end
local lock_rtl = data[tostring(matches[2])]['settings']['lock_rtl'] 
   if not lock_rtl then
  return 
end
local lock_tgservice = data[tostring(matches[2])]['settings']['lock_tgservice'] 
   if not lock_tgservice then
  return 
end
local lock_porn = data[tostring(matches[2])]['settings']['lock_porn'] 
   if not lock_porn then
  return 
end
local lock_reply = data[tostring(matches[2])]['settings']['lock_reply'] 
   if not lock_reply then
  return 
end
local lock_sticker = data[tostring(matches[2])]['settings']['lock_sticker'] 
   if not lock_sticker then
  return 
end
local lock_contacts = data[tostring(matches[2])]['settings']['lock_contacts'] 
   if not lock_contacts then
  return 
end
local lock_member = data[tostring(matches[2])]['settings']['lock_member'] 
   if not lock_member then
  return 
end
local lock_tag = data[tostring(matches[2])]['settings']['lock_tag'] 
   if not lock_tag then
  return 
end
local lock_username = data[tostring(matches[2])]['settings']['lock_username'] 
   if not lock_username then
  return 
end
local lock_flood = data[tostring(matches[2])]['settings']['flood'] 
   if not lock_flood then
  return 
end
local NUM_MSG_MAX = data[tostring(matches[2])]['settings']['flood_msg_max'] 
   if not NUM_MSG_MAX then
  return 
end
local lock_spam = data[tostring(matches[2])]['settings']['lock_spam'] 
   if not lock_spam then
  return 
end
local adminslist = ''
for k,v in pairs(data[tostring(matches[2])]['moderators']) do
  adminslist = adminslist .. '> @'.. v ..' ('..k..')\n'
end
      local text = "Group Id: "..matches[2].."\nGroup Name: "..msg.to.title.."\nGroup Owner: "..group_owner.."\nGroup Type: "..group_type.."\nGroup Link: "..group_link.."\nGroup Moderators:\n "..adminslist.."\nGroup Settings:\n================\nLock links: "..lock_link.."\nLock fwd: "..lock_fwd.."\nLock Arabic: "..lock_arabic.."\nLock rtl: "..lock_rtl.."\nLock tgservice: "..lock_tgservice.."\nLock Porn: "..lock_porn.."\nLock Reply: "..lock_reply.."\nLock Sticker: "..lock_sticker.."\nLock contact: "..lock_contacts.."\nLock Member: "..lock_member.."\nLock tag: "..lock_tag.."\nLock UserName: "..lock_username.."\nLock Flood: "..lock_flood.."\nFlood sensitivity: "..NUM_MSG_MAX.."\nLock Spam: "..lock_spam
return text
end
end

return {
patterns = {
'^[#!/]([Aa]bout) (.*)$',
},

run = run,
}
--By @Pukeram
--By @MaxTeamNews