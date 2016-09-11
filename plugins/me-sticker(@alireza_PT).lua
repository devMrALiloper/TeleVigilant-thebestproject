--[[ 
در صورت کپی از محتوا منبع را ذکر کنید
@alireza_PT
@CliApi
@Create_antispam_bot 
--]]
do

local function alirezapt(msg ,matches)
        if is_sudo(msg) then
local url = "لینک مستقیم عکس اپلود شده برای سودو"
local file = download_to_file(url,'alirezapt.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        
        elseif is_owner(msg) then
        local url = "لینک مستقیم عکس اپلود شده برای مالم گروه"
local file = download_to_file(url,'alirezapt.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        
        elseif is_momod(msg) then
        local url = "لینک مستقیم عکس اپلود شده برای مدیر گروه"
local file = download_to_file(url,'alirezapt.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        
        elseif not is_momod(msg) then
        local url = "لینک مستقیم عکس اپلود شده برای اعضاء"
local file = download_to_file(url,'alirezapt.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        
        end
end

return { 
    patterns = { 
        "^[#!/](me)$"
    },
    run = alirezapt,
    
}

end
--[[ 
در صورت کپی از محتوا منبع را ذکر کنید
@alireza_PT
@CliApi
@Create_antispam_bot 
--]]