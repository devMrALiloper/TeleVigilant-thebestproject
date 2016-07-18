do function run(msg, matches)

   if matches[1]:lower() == 'me' and is_sudo(msg) then
      return "You are SUDO"
      end
      if matches[1]:lower() == 'me' and is_admin(msg) then
      return "You are Admin"
      end
      if matches[1]:lower() == 'me' and is_owner(msg) then
      return "You are Group leader"
      end
      if matches[1]:lower() == 'me' and is_momod(msg) then
      return "You are Group Moderator"
      end
      if matches[1]:lower() == 'me' then
      return "You are Group Member"
    end
      if matches[1]:lower() == 'من' and is_sudo(msg) then
      return "شما سازنده ربات هستيد"
      end
      if matches[1]:lower() == 'من' and is_admin(msg) then
      return "شما ادمين ربات هستيد"
      end
      if matches[1]:lower() == 'من' and is_owner(msg) then
      return "شما مدير اصلي گروه هستيد"
      end
      if matches[1]:lower() == 'من' and is_momod(msg) then
      return "شما کمک مدير هستيد"
      end
      if matches[1]:lower() == 'من' then
      return "شما عضو ساده هستيد"
    end
end
  return {
  description = "Your Postation In Group",
  usage = "Wai",
  patterns = {
  "^([Mm][Ee])$",
  "^(من)$"
    },
  run = run
}
end