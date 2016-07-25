function reload_plugins( )
  plugins = {}
  load_plugins()
end
   function run(msg, matches)
    if tonumber (msg.from.id) == OUR ID then--expample 123456789
       if matches[1]:lower() == "setsudo" then
          table.insert(_config.sudo_users, tonumber(matches[2]))
      print(matches[2]..' با موفقیت به لیست افراد سودو اضافه شد.')
     save_config()
     reload_plugins(true)
      return matches[2]..' با موفقیت به لیست افراد سودو اضافه شد.'
   elseif matches[1]:lower() == "remsudo" then
      table.remove(_config.sudo_users, tonumber(matches[2]))
      print(matches[2]..' با موفقیت از لیست افراد سودو پاک شد.')
     save_config()
     reload_plugins(true)
      return matches[2]..' با موفقیت از لیست افراد سودو پاک شد.'
      end
   end
end
return {
patterns = {
"^[!/#]([Ss]etsudo) (%d+)$",
"^[!/#]([Rr]emsudo) (%d+)$"
},
run = run
}
--By REZA
--Edited by @Mr_AL_i
