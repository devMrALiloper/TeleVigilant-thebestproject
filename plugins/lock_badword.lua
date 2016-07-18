local function run(msg)

    local data = load_data(_config.moderation.data)

     if data[tostring(msg.to.id)]['settings']['lock_badword'] == '✅' then


if msg.to.type == 'channel' and not is_momod(msg) then
	delete_msg(msg.id,ok_cb,false)

        return 
      end
   end
end

return {patterns = {
    "کیر",
    "کص",
    "کسکش",
    "جنده",
    "کون",
    "جق",
    "شق",
    "سگ",
    "فاک",
    "گایید",
    "میگا",
    "شومبول️",
    "دودول",
    "چاقال",
    "خایه",
    "اسگل",
    "امبل",
    "کسخل",
    "مادر خراب",
    "مادر قهوه",
    "مادرخراب",
    "مادرقهوه",
    "خارکسه",
    "خوارکسه",
    "گاگول",
    "آمیزش",
    "سکس",
    "[Ff][Uu][Cc][Kk]",
    "[Ss][Ee][Xx]",
    "[Kk][Oo][Ss]",
    "ممه",
    "خفه",
    "[Ss][Hh][Uu][Tt]",
    "سیکتیر"
}, run = run}

--By @Mr_AL_i
