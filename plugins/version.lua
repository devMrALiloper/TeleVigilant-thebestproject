do

function run(msg, matches)
  return [[
سلام
]]
end

return {
  description = "",
  usage = "",
  patterns = {
     "^[/!#][Vv]ersion$",
    "^version$",
    "^ورژن$"
  },
  run = run
}

end
