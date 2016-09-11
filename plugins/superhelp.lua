do

function run(msg, matches)
  return [[
راهنمای دستورات سوپرگروه تله ویگیلانت :
🔑🔑🔑🔑🔑🔑🔑🔑🔑🔑🔑
!info
نمایش اطلاعات کلی در مورد SuperGroup

!admins
ليست مديران سوپرگروه

!owner
صاحب گروه

!modlist
ليست مديران

!bots
لیست رباتها در سوپرگروه

!who
لیست تمام کاربران در سوپرگروه

!block
اخراج یک فرد از سوپرگروه
*Adds user to blocked list*

!ban
ممنوعیت کاربری از سوپرگروه

!unban
رفع ممنوعیت کاربری از سوپرگروه

!id
دریافت آیدی سوپرگروه و یا آیدی فردی
*For userID's: !id @username or reply !id*

!id from
آیدی فردی که از او پیام فوروارد شده

!kickme
مرا اخراج کن
*Must be unblocked by owner or use join by pm to return*

!setowner
تنظیم صاحب گروه

!promote [نام کاربری|آیدی]
ترفیع فردی با نام کاربری و آیدی

!demote [نام کاربری|آیدی]
تنزل فردی

!setname
تنظیم  نام چت

!setphoto
تنظیم عکس چت

!setrules
تنظیم قوانین چت

!setabout
تنظیم درباره ی گروه

!save [value] <text>
تنظیم متن موردنظر به عنوان اطلاعات اضافی

!get [value]
دریافت اطلاعات اضافی

!newlink
ساخت یا تعویض لینک گروه

!link
دریافت لینک گروه

!rules
دریافت قوانین چت

!lock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
قفل موارد بالا
*rtl: Delete msg if Right To Left Char. is in name*
*strict: enable strict settings enforcement (violating user will be kicked)*

!unlock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
باز کردن قفل موارد بالا
*rtl: Delete msg if Right To Left Char. is in name*
*strict: disable strict settings enforcement (violating user will not be kicked)*

!mute [all|audio|gifs|photo|video|service]
مات یا سایلنت کردن موارد بالا
*A "muted" message type is auto-deleted if posted

!unmute [all|audio|gifs|photo|video|service]
آنمات کردن موارد بالا
*A "unmuted" message type is not auto-deleted if posted

!setflood [value]
تنظیم حساسیت فلود

!settings
دریافت تنظیمات

!muteslist
لیست چیز های مات شده

!muteuser [username]
مات کردن فردی در چت
*If a muted user posts a message, the message is deleted automaically
*only owners can mute | mods and owners can unmute

!mutelist
لیست افراد مات شده در چت

!banlist
دریافت لیست بن شده ها

!clean [rules|about|modlist|mutelist]
پاک کردن موارد بالا

!del
پاک کردن پیامی با ریپلای

!public [yes|no]
تنظیم قابل مشاهده بودن پیام ها

!res [نام کاربری]
دریافت نام و آیدی نام کاربری موردنظر

!log
دریافت لاگ گروه
*Search for kick reasons using [#RTL|#spam|#lockmember]
🔑🔑🔑🔑🔑🔑🔑🔑🔑🔑🔑
**شما مي توانيد از "#" , "!" , يا "/" براي شروع دستورات استفاده كنيد.
*فقط مدير و يا صاحب مي تواند افراد را به سوپرگروه دعوت كند و يا ادد كند.
(استفاده از لينك دعوت)
* فقط مديران و مالک می تواند از بلاک، ممنوعیت، رفع ممنوعیت، newlink(لينك جديد)، لینک، setphoto، setname، قفل، باز کردن قفل، setrules، setabout و تنظیمات دستورات استفاده كنند.
** فقط مالک می تواند از  اطلاعات يوزر ، setowner، ترویج(ترفيع)، تنزل رتبه، و ورود (تنظيم) دستورات استفاده كند.

🔰@TeleVigilant_Super🔰@TeleVigilant_Team
FOLLOW US...
TeleVigilant TEAM😘

]]
end

return {
  description = "",
  usage = "",
  patterns = {
     "^[/!#][Hh]elp$",
     "^[/!#][Ss]uper[Hh]elp$",
     "^راهنمای سوپرگروه$"

  },
  run = run
}

end
--by @Mr_AL_i
