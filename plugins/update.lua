function run(msg, matches)
if not is_sudo(msg) then
return 
end
text = io.popen("git pull "):read('*all')
  return "updating..."
end
return {
  patterns = {
    '^[#/!]update$'
  },
  run = run,
  moderated = true
}
