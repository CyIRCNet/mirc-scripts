;-----------Anope Services v.1.0 by Shillos--------
;This script was built to match Anope 2.0.10+ for CyIRC Network and it's extras
;Freely copy or edit any part of this script as you feel fit for your network.
;This script is available @ https://cyirc.org
;If you wish to contact me please visit #cyprus @ irc.cyirc.org:+6697
;Thank you for downloading this script and hope it is useful to you!

Menu Nicklist,channel {
  $iif($server != $null,Anope Services)
  .- = • • IRC.CYIRC.ORG • • = - :.server -m irc.cyirc.org:+6697 -j #cyprus
  .-
  .Advertise:.say Anope Services v.1.0 by Shillos can be downloaded from http://cyirc.org
  .Visit Us:.say Visit us today at #cyprus on the CyIRC Network!
  .-
  ;##########BotServ######################################
  .BotServ
  ..-
  ..Help:.msg BotServ HELP
  ..-
  ..Act:.msg BotServ ACT $$?="#Channel" $$?="Action"
  ..-
  ..Assign:.msg BotServ ASSIGN $$?="#YourChannel" $$?="Chosen Bot Name"
  ..Unassign:.msg BotServ UNASSIGN $$?="#YourChannel"
  ..-
  ..Badwords
  ...List:.msg BotServ BADWORDS $$?="#YourChannel" LIST
  ...Add:.msg BotServ BADWORDS $$?="#YourChannel" ADD $$?="Word" $$?="Single / Start / End"
  ...Delete:.msg BotServ BADWORDS $$?="#YourChannel" DEL $$?="Word / Entry Number / List"
  ...Clear:.msg BotServ BADWORDS $$?="#YourChannel" CLEAR
  ..Bot
  ...Add:.msg BotServ BOT ADD $$?="New BotNick" $$?="Bot User" $$?="Bot Host" $$?="Bot Real Name"
  ...Change:.msg BotServ BOT CHANGE $$?="Old BotNick" $$?="New BotNick" $$?="Bot User" $$?="Bot Host" $$?="Bot Real Name"
  ...Delete:.msg BotServ BOT DEL $$?="BotNick"
  ..-  
  ..BotList:.msg BotServ BOTLIST
  ..-
  ..Info:.msg BotServ INFO $$?="#Channel or BotNick"
  ..-
  ..Kick
  ...-
  ...Amsg
  ....On:.msg BotServ KICK AMSG $$?="#YourChannel" ON $$?="Set Number of Kicks Before Ban"
  ....Off:.msg BotServ KICK AMSG $$?="#YourChannel" OFF
  ...Badwords
  ....On:.msg BotServ KICK BADWORDS $$?="#YourChannel" ON $$?="Set Number of Kicks Before Ban"
  ....Off:.msg BotServ KICK BADWORDS $$?="#YourChannel" OFF
  ...Bolds
  ....On:.msg BotServ KICK BOLDS $$?="#YourChannel" ON $$?="Set Number of Kicks Before Ban"
  ....Off:.msg BotServ KICK BOLDS $$?="#YourChannel" OFF
  ...Caps
  ....On:.msg BotServ KICK CAPS $$?="#YourChannel" ON $$?="Set Number of Kicks Before Ban" $$?="Minimum amount of CAPS" $$?="Percentage of message as CAPS"
  ....Off:.msg BotServ KICK CAPS $$?="#YourChannel" OFF
  ...Colors
  ....On:.msg BotServ KICK COLORS $$?="#YourChannel" ON $$?="Set Number of Kicks Before Ban"
  ....Off:.msg BotServ KICK COLORS $$?="#YourChannel" OFF
  ...Flood
  ....On:.msg BotServ KICK FLOOD $$?="#YourChannel" ON $$?="Set Number of Kicks Before Ban" $$?="Number of Lines" $$?="Seconds"
  ....Off:.msg BotServ KICK FLOOD $$?="#YourChannel" OFF
  ...Italics
  ....On:.msg BotServ KICK ITALICS $$?="#YourChannel" ON $$?="Set Number of Kicks Before Ban"
  ....Off:.msg BotServ KICK ITALICS $$?="#YourChannel" OFF
  ...Repeat
  ....On:.msg BotServ KICK REPEAT $$?="#YourChannel" ON $$?="Set Number of Kicks Before Ban" $$?="Number of Repeats"
  ....Off:.msg BotServ KICK REPEAT $$?="#YourChannel" OFF
  ...Reverses
  ....On:.msg BotServ KICK REVERSES $$?="#YourChannel" ON $$?="Set Number of Kicks Before Ban"
  ....Off:.msg BotServ KICK REVERSES $$?="#YourChannel" OFF
  ...Underlines
  ....On:.msg BotServ KICK UNDERLINES $$?="#YourChannel" ON $$?="Set Number of Kicks Before Ban"
  ....Off:.msg BotServ KICK UNDERLINES $$?="#YourChannel" OFF
  ..Say:.msg BotServ SAY $$?="#Channel" $$?="Text to Say"
  ..-
  ..Set
  ...-
  ...BanExpire
  ....On:.msg BotServ SET BANEXPIRE $$?="#YourChannel" ON
  ....Off:.msg BotServ SET BANEXPIRE $$?="#YourChannel" OFF
  ...Don't Kick Ops
  ....On:.msg BotServ SET DONTKICKOPS $$?="#YourChannel" ON
  ....Off:.msg BotServ SET DONTKICKOPS $$?="#YourChannel" OFF
  ...Don't Kick Voices
  ....On:.msg BotServ SET DONTKICKVOICES $$?="#YourChannel" ON
  ....Off:.msg BotServ SET DONTKICKVOICES $$?="#YourChannel" OFF
  ...-
  ...Fantasy
  ....On:.msg BotServ SET FANTASY $$?="#YourChannel" ON
  ....Off:.msg BotServ SET FANTASY $$?="#YourChannel" OFF
  ...Greet
  ....On:.msg BotServ SET GREET $$?="#YourChannel" ON
  ....Off:.msg BotServ SET GREET $$?="#YourChannel" OFF
  ...No Bot
  ....On:.msg BotServ SET NOBOT $$?="#YourChannel" ON
  ....Off:.msg BotServ SET NOBOT $$?="#YourChannel" OFF
  ...Private
  ....On:.msg BotServ SET PRIVATE $$?="#YourChannel" ON
  ....Off:.msg BotServ SET PRIVATE $$?="#YourChannel" OFF
  ...-
  ..-
  ;##########ChanServ#####################################
  .ChanServ
  ..-
  ..Help:.msg ChanServ HELP
  ..-
  ..Register:.msg ChanServ REGISTER $$?="#Channel" $$?="Channel Description"
  ..-
  ..Set
  ...Founder:.msg ChanServ SET FOUNDER $$?="#Channel" $$?="Nickname"
  ...Successor:.msg ChanServ SET SUCCESSOR $$?="#Channel" $$?="Nickname"
  ...Description:.msg ChanServ SET DESCRIPTION $$?="#Channel" $$?="Channel Description"
  ...URL:.msg ChanServ SET URL $$?="#Channel" $$?="URL"
  ...Email Address:.msg ChanServ SET EMAIL $$?="#Channel" $$?="Email Address"
  ...Entry Message:.msg ChanServ SET ENTRYMSG $$?="#Channel" $$?="Entry Message"
  ...Auto OP
  ....On:.msg ChanServ SET AUTOOP $$?="#Channel" ON
  ....Off:.msg ChanServ SET AUTOOP $$?="#Channel" OFF
  ...Ban Type
  ....*!user@host:.msg ChanServ SET BANTYPE $$?="#Channel" 0
  ....*!*user@host:.msg ChanServ SET BANTYPE $$?="#Channel" 1
  ....*!*@host:.msg ChanServ SET BANTYPE $$?="#Channel" 2
  ....*!*user@*.domain:.msg ChanServ SET BANTYPE $$?="#Channel" 3
  ...Join Flood
  ....On:.msg ChanServ SET JOINFLOOD $$?="#Channel" ON
  ....Off:.msg ChanServ SET JOINFLOOD $$?="#Channel" OFF
  ...Keep Modes
  ....On:.msg ChanServ SET KEEPMODES $$?="#Channel" ON
  ....Off:.msg ChanServ SET KEEPMODES $$?="#Channel" OFF
  ...Keep Topic
  ....On:.msg ChanServ SET KEEPTOPIC $$?="#Channel" ON
  ....Off:.msg ChanServ SET KEEPTOPIC $$?="#Channel" OFF
  ...No Expire
  ....On:.msg ChanServ SET NOEXPIRE $$?="#Channel" ON
  ....Off:.msg ChanServ SET NOEXPIRE $$?="#Channel" OFF
  ...Peace
  ....On:.msg ChanServ SET PEACE $$?="#Channel" ON
  ....Off:.msg ChanServ SET PEACE $$?="#Channel" OFF
  ...Persist
  ....On:.msg ChanServ SET PERSIST $$?="#Channel" ON
  ....Off:.msg ChanServ SET PERSIST $$?="#Channel" OFF
  ...Private
  ....On:.msg ChanServ SET PRIVATE $$?="#Channel" ON
  ....Off:.msg ChanServ SET PRIVATE $$?="#Channel" OFF
  ...Restricted
  ....On:.msg ChanServ SET RESTRICTED $$?="#Channel" ON
  ....Off:.msg ChanServ SET RESTRICTED $$?="#Channel" ON
  ...Secure
  ....On:.msg ChanServ SET SECURE $$?="#Channel" ON
  ....Off:.msg ChanServ SET SECURE $$?="#Channel" OFF
  ...Secure OPs
  ....On:.msg ChanServ SET SECUREOPS $$?="#Channel" ON
  ....Off:.msg ChanServ SET SECUREOPS $$?="#Channel" OFF
  ...Secure Founder
  ....On:.msg ChanServ SET SECUREFOUNDER $$?="#Channel" ON
  ....Off:.msg ChanServ SET SECUREFOUNDER $$?="#Channel" OFF
  ...Sign Kick
  ....On:.msg ChanServ SET SIGNKICK $$?="#Channel" ON
  ....Off:.msg ChanServ SET SIGNKICK $$?="#Channel" OFF
  ....Level:.msg ChanServ SET SIGNKICK $$?="#Channel" LEVEL
  ...Topic History
  ....On:.msg ChanServ SET TOPICHISTORY $$?="#Channel" ON
  ....Off:.msg ChanServ SET TOPICHISTORY $$?="#Channel" OFF
  ...XOP
  ....On:.msg ChanServ SET $$?="#Channel" XOP ON
  ....Off:.msg ChanServ SET $$?="#Channel" XOP OFF
  ...NoExpire
  ....On:.msg ChanServ SET $$?="#Channel" NOEXPIRE ON
  ....Off:.msg ChanServ SET $$?="#Channel" NOEXPIRE OFF
  ..-
  ..XOP
  ...AOP
  ....List:.msg ChanServ AOP $$?="#Channel" LIST
  ....Add:.msg ChanServ AOP $$?="#Channel" ADD $$?="Nickname"
  ....Delete:.msg ChanServ AOP $$?="#Channel" DEL $$?="Nickname / Entry Number / List"
  ....Clear:.msg ChanServ AOP $$?="#Channel" CLEAR
  ...HOP
  ....List:.msg ChanServ HOP $$?="#Channel" LIST
  ....Add:.msg ChanServ HOP $$?="#Channel" ADD $$?="Nickname"
  ....Delete:.msg ChanServ HOP $$?="#Channel" DEL $$?="Nickname / Entry Number / List"
  ....Clear:.msg ChanServ HOP $$?="#Channel" CLEAR
  ...QOP
  ....List:.msg ChanServ QOP $$?="#Channel" LIST
  ....Add:.msg ChanServ QOP $$?="#Channel" ADD $$?="Nickname"
  ....Delete:.msg ChanServ AOP $$?="#Channel" DEL $$?="Nickname / Entry Number / List"
  ....Clear:.msg ChanServ AOP $$?="#Channel" CLEAR
  ...SOP
  ....List:.msg ChanServ SOP $$?="#Channel" LIST
  ....Add:.msg ChanServ SOP $$?="#Channel" ADD $$?="Nickname"
  ....Delete:.msg ChanServ SOP $$?="#Channel" DEL $$?="Nickname / Entry Number / List"
  ....Clear:.msg ChanServ SOP $$?="#Channel" CLEAR
  ...VOP
  ....List:.msg ChanServ VOP $$?="#Channel" LIST
  ....Add:.msg ChanServ VOP $$?="#Channel" ADD $$?="Nickname"
  ....Delete:.msg ChanServ VOP $$?="#Channel" DEL $$?="Nickname / Entry Number / List"
  ....Clear:.msg ChanServ VOP $$?="#Channel" CLEAR
  ...-
  ..Access
  ...List:.msg ChanServ ACCESS $$?="#Channel" LIST
  ...Add:.msg ChanServ ACCESS $$?="#Channel" ADD $$?="Nickname"
  ...Delete:.msg ChanServ ACCESS $$?="#Channel" DEL $$?="Nickname / Entry Number / List"
  ...Clear:.msg ChanServ ACCESS $$?="#Channel" CLEAR
  ..Levels
  ...List:.msg ChanServ LEVELS $$?="#Channel" LIST
  ...Set
  ....AutoDeop:.msg ChanServ LEVELS $$?="#Channel" SET AUTODEOP
  ....AutoHalfop:.msg ChanServ LEVELS $$?="#Channel" SET AUTOHALFOP
  ....AutoOp:.msg ChanServ LEVELS $$?="#Channel" SET AUTOOP
  ....AutoProtect:.msg ChanServ LEVELS $$?="#Channel" SET AUTOPROTECT
  ....AutoVoice:.msg ChanServ LEVELS $$?="#Channel" SET AUTOVOICE
  ....NoJoin:.msg ChanServ LEVELS $$?="#Channel" SET NOJOIN
  ....SignKick:.msg ChanServ LEVELS $$?="#Channel" SET SIGNKICK
  ....Acc-List:.msg ChanServ LEVELS $$?="#Channel" SET ACC-LIST
  ....Acc-Change:.msg ChanServ LEVELS $$?="#Channel" SET ACC-CHANGE
  ....AKick:.msg ChanServ LEVELS $$?="#Channel" SET AKICK
  ....Set:.msg ChanServ LEVELS $$?="#Channel" SET SET
  ....Ban:.msg ChanServ LEVELS $$?="#Channel" SET BAN
  ....BanMe:.msg ChanServ LEVELS $$?="#Channel" SET BANME
  ....Clear:.msg ChanServ LEVELS $$?="#Channel" SET CLEAR
  ....GetKey:.msg ChanServ LEVELS $$?="#Channel" SET GETKEY
  ....Halfop:.msg ChanServ LEVELS $$?="#Channel" SET HALFOP
  ....HalfopMe:.msg ChanServ LEVELS $$?="#Channel" SET HALFOPME
  ....Info:.msg ChanServ LEVELS $$?="#Channel" SET INFO
  ....Kick:.msg ChanServ LEVELS $$?="#Channel" SET KICK
  ....KickMe:.msg ChanServ LEVELS $$?="#Channel" SET KICKME
  ....Invite:.msg ChanServ LEVELS $$?="#Channel" SET INVITE
  ....OpDeop:.msg ChanServ LEVELS $$?="#Channel" SET OPDEOP
  ....OpDeopMe:.msg ChanServ LEVELS $$?="#Channel" SET OPDEOPME
  ....Protect:.msg ChanServ LEVELS $$?="#Channel" SET PROTECT
  ....ProtectMe:.msg ChanServ LEVELS $$?="#Channel" SET PROTECTME
  ....Topic:.msg ChanServ LEVELS $$?="#Channel" SET TOPIC
  ....UnBan:.msg ChanServ LEVELS $$?="#Channel" SET UNBAN
  ....Voice:.msg ChanServ LEVELS $$?="#Channel" SET VOICE
  ....VoiceMe:.msg ChanServ LEVELS $$?="#Channel" SET VOICEME
  ....Memo:.msg ChanServ LEVELS $$?="#Channel" SET MEMO
  ....Assign:.msg ChanServ LEVELS $$?="#Channel" SET ASSIGN
  ....Badwords:.msg ChanServ LEVELS $$?="#Channel" SET BADWORDS
  ....Fantasia:.msg ChanServ LEVELS $$?="#Channel" SET FANTASIA
  ....Greet:.msg ChanServ LEVELS $$?="#Channel" SET GREET
  ....NoKick:.msg ChanServ LEVELS $$?="#Channel" SET NOKICK
  ....Say:.msg ChanServ LEVELS $$?="#Channel" SET SAY
  ...Disbale
  ....AutoDeop:.msg ChanServ LEVELS $$?="#Channel" DISABLE AUTODEOP
  ....AutoHalfop:.msg ChanServ LEVELS $$?="#Channel" DISABLE AUTOHALFOP
  ....AutoOp:.msg ChanServ LEVELS $$?="#Channel" DISABLE AUTOOP
  ....AutoProtect:.msg ChanServ LEVELS $$?="#Channel" DISABLE AUTOPROTECT
  ....AutoVoice:.msg ChanServ LEVELS $$?="#Channel" DISABLE AUTOVOICE
  ....NoJoin:.msg ChanServ LEVELS $$?="#Channel" DISABLE NOJOIN
  ....SignKick:.msg ChanServ LEVELS $$?="#Channel" DISABLE SIGNKICK
  ....Acc-List:.msg ChanServ LEVELS $$?="#Channel" DISABLE ACC-LIST
  ....Acc-Change:.msg ChanServ LEVELS $$?="#Channel" DISABLE ACC-CHANGE
  ....AKick:.msg ChanServ LEVELS $$?="#Channel" DISABLE AKICK
  ....Set:.msg ChanServ LEVELS $$?="#Channel" DISABLE SET
  ....Ban:.msg ChanServ LEVELS $$?="#Channel" DISABLE BAN
  ....BanMe:.msg ChanServ LEVELS $$?="#Channel" DISABLE BANME
  ....Clear:.msg ChanServ LEVELS $$?="#Channel" DISABLE CLEAR
  ....GetKey:.msg ChanServ LEVELS $$?="#Channel" DISABLE GETKEY
  ....Halfop:.msg ChanServ LEVELS $$?="#Channel" DISABLE HALFOP
  ....HalfopMe:.msg ChanServ LEVELS $$?="#Channel" DISABLE HALFOPME
  ....Info:.msg ChanServ LEVELS $$?="#Channel" DISABLE INFO
  ....Kick:.msg ChanServ LEVELS $$?="#Channel" DISABLE KICK
  ....KickMe:.msg ChanServ LEVELS $$?="#Channel" DISABLE KICKME
  ....Invite:.msg ChanServ LEVELS $$?="#Channel" DISABLE INVITE
  ....OpDeop:.msg ChanServ LEVELS $$?="#Channel" DISABLE OPDEOP
  ....OpDeopMe:.msg ChanServ LEVELS $$?="#Channel" DISABLE OPDEOPME
  ....Protect:.msg ChanServ LEVELS $$?="#Channel" DISABLE PROTECT
  ....ProtectMe:.msg ChanServ LEVELS $$?="#Channel" DISABLE PROTECTME
  ....Topic:.msg ChanServ LEVELS $$?="#Channel" DISABLE TOPIC
  ....UnBan:.msg ChanServ LEVELS $$?="#Channel" DISABLE UNBAN
  ....Voice:.msg ChanServ LEVELS $$?="#Channel" DISABLE VOICE
  ....VoiceMe:.msg ChanServ LEVELS $$?="#Channel" DISABLE VOICEME
  ....Memo:.msg ChanServ LEVELS $$?="#Channel" DISABLE MEMO
  ....Assign:.msg ChanServ LEVELS $$?="#Channel" DISABLE ASSIGN
  ....Badwords:.msg ChanServ LEVELS $$?="#Channel" DISABLE BADWORDS
  ....Fantasia:.msg ChanServ LEVELS $$?="#Channel" DISABLE FANTASIA
  ....Greet:.msg ChanServ LEVELS $$?="#Channel" DISABLE GREET
  ....NoKick:.msg ChanServ LEVELS $$?="#Channel" DISABLE NOKICK
  ....Say:.msg ChanServ LEVELS $$?="#Channel" DISABLE SAY
  ...Reset:.msg ChanServ LEVELS $$?="#Channel" RESET
  ..Flags
  ...List:.msg ChanServ FLAGS $$?="#Channel" LIST $$?="Use * or flag"
  ...Modify:.msg ChanServ FLAGS $$?="#Channel" MODIFY $$?="Mask & Changes use +* or -*"
  ...Clear:.msg ChanServ FLAGS $$?="#Channel" CLEAR 
  ..Mode
  ...Lock
  ....List:.msg ChanServ MODE $$?="#Channel" LOCK LIST $$?="What? Use *"
  ....Add:.msg ChanServ MODE $$?="#Channel" LOCK ADD $$?="Add the mode(s) e.g. +nt"
  ....Delete:.msg ChanServ MODE $$?="#Channel" LOCK DEL $$?="Delete the mode(s) e.g. -nt"
  ....Set:.msg ChanServ MODE $$?="#Channel" LOCK SET $$?="Modes to set"
  ...Set:.msg ChanServ MODE $$?="#Channel" SET $$?="Modes to set"
  ...Clear:.msg ChanServ MODE $$?="#Channel" CLEAR $$?="Modes to clear"
  ..-
  ..OP Control
  ...-
  ...Owner:.msg ChanServ OWNER $$?="#Channel"
  ...Deowner:.msg ChanServ DEOWNER $$?="#Channel"
  ...-
  ...Protect:.msg ChanServ PROTECT $$?="#Channel" $$?="Nickname"
  ...Deprotect:.msg ChanServ PROTECT $$?="#Channel" $$?="Nickname"
  ...-
  ...Op:.msg ChanServ OP $$?="#Channel" $$?="Nickname"
  ...Deop:.msg ChanServ DEOP $$?="#Channel" $$?="Nickname"
  ...-
  ...Halfop:.msg ChanServ HALFOP $$?="#Channel" $$?="Nickname"
  ...Dehalfop:.msg ChanServ DEHALFOP $$?="#Channel" $$?="Nickname"
  ...-
  ...Voice:.msg ChanServ VOICE $$?="#Channel" $$?="Nickname"
  ...Devoice:.msg ChanServ DEVOICE $$?="#Channel" $$?="Nickname"
  ...-
  ...Kick:.msg ChanServ KICK $$?="#Channel" $$?="Nickname" $$?="Reason"
  ...Akick
  ....List:.msg ChanServ AKICK $$?="#Channel" LIST
  ....Add:.msg ChanServ AKICK $$?="#Channel" $$?="Mask" $$?="Reason"
  ....Delete:.msg ChanServ AKICK $$?="#Channel" DEL $$?="Mask"
  ....View:.msg ChanServ AKICK $$?="#Channel" VIEW
  ....Enforce:.msg ChanServ AKICK $$?="#Channel" ENFORCE
  ....Clear:.msg ChanServ AKICK $$?="#Channel" CLEAR
  ...-
  ...Ban:.msg ChanServ BAN $$?="#Channel" $$?="Nickname" $$?="Reason"
  ...Unban:.msg ChanServ UNBAN $$?="#Channel"
  ...-
  ..Invite:.msg ChanServ INVITE $$?="#Channel"
  ..List:.msg ChanServ LIST $$?="Pattern (you may put a space after and write FORBIDDEN, SUSPENDED OR NOEXPIRE)"
  ..-
  ..Topic:.msg ChanServ TOPIC $$?="#Channel" $$?="Topic"
  ..Topic History
  ...List:.msg ChanServ TOPICHISTORY $$?="#Channel" LIST
  ...Clear:.msg ChanServ TOPICHISTORY $$?="#Channel" CLEAR
  ...Set:.msg ChanServ TOPICHISTORY $$?="#Channel" SET $$?="Entry Number"
  ..-
  ..Misc
  ...Enforce:.msg ChanServ ENFORCE $$?="#Channel" $$?="Use any in Chan SET: e.g. SECUREOPS, RESTRICTED, REGONLY, SSLONLY, BANS, LIMIT"
  ...Clone:.msg ChanServ CLONE $$?="From #Channel" $$?="Target #Channel" $$?="ACCESS, AKICK, BADWORDS, LEVELS or any Chan SET or all use *"
  ...Getkey:.msg ChanServ GETKEY $$?="#Channel"
  ...Up:.msg ChanServ UP $$?="#Channel or Nickname"
  ...Down:.msg ChanServ DOWN $$?="#Channel or Nickname"
  ...Sync:.msg ChanServ SYNC $$?="#Channel"
  ..-
  ..Teleport:.msg ChanServ TELEPORT $$?="Nickname (Bans & Parts the User)" $$?="Send To #Channel"
  ..Redirect:.msg ChanServ REDIRECT $$?="Nickname (Without Ban just Parts the User)" $$?="Send To #Channel"
  ..-
  ..Suspend:.msg ChanServ SUSPEND $$?="#Channel" $$?="Reason"
  ..Unsuspend:.msg ChanServ UNSUSPEND $$?="#Channel"
  ..-
  ..Info:.msg ChanServ INFO $$?="#Channel"
  ..Status:.msg ChanServ STATUS $$?="#Channel" $$?="Nickname"
  ..-
  ..Log
  ...Channel:.msg ChanServ LOG $$?="#Channel"
  ...Message:.msg ChanServ LOG $$?="#Channel" $$?="Command Message, Notice or Memo" $$?="Status of users &@% or +"
  ...-
  ..-
  ..Drop:.msg ChanServ DROP $$?="#Channel" $$?="#Channel (Again)"
  ..-
  ;##########GameServ#####################################
  .GameServ
  ..-
  ..Help:.msg GameServ HELP
  ..-
  ..8Ball:.msg GameServ 8BALL $$?="#Channel"
  ..NameGen:.msg GameServ NAMEGEN $$?="#Channel" $$?="Number of Names"
  ..Roulette:.msg GameServ ROULETTE $$?="#Channel"
  ..SexDice:.msg GameServ SEXDICE $$?="#Channel" 
  ..-
  ;##########HostServ#####################################
  .HostServ
  ..-
  ..Help:.msg HostServ HELP
  ..-
  ..On:.msg HostServ ON
  ..Off:.msg HostServ OFF
  ..Group:.msg HostServ GROUP
  ..-
  ..List:.msg HostServ LIST
  ..-
  ..Set:.msg HostServ SET $$?="Nickname" $$?="Host"
  ..Set All:.msg HostServ SETALL $$?="Nickname" $$?="Host"
  ..-
  ..Offer
  ...List:.msg HostServ OFFER LIST
  ...Add:.msg HostServ OFFER ADD $$?="+expiry" $$?="vHost" $$?="reason"
  ...Delete:.msg HostServ OFFER DEL $$?="vHost mask | entry-num | list"
  ...View:.msg HostServ OFFER VIEW $$?="vHost mask | entry-num | list"
  ...Clear:.msg HostServ OFFER CLEAR
  ..Offer List
  ...List:.msg HostServ OFFERLIST
  ...Take:.msg HostServ OFFERLIST TAKE $$?="vHost | entry-num"
  ..-
  ..Delete:.msg HostServ DEL $$?="Nickname"
  ..Delete All:.msg HostServ DELALL $$?="Nickname"
  ..-
  ..Request:.msg HostServ REQUEST $$?="Host"
  ..Activate:.msg HostServ ACTIVATE $$?="Nickname"
  ..Reject:.msg HostServ REJECT $$?="Nickname"
  ..Waiting:.msg HostServ WAITING
  ..-
  ;##########MemoServ#####################################
  .MemoServ
  ..-
  ..Help:.msg MemoServ HELP
  ..-
  ..Send:.msg MemoServ SEND $$?="Nickname or #Channel" $$?="Memo Text"
  ..Send to All:.msg MemoServ SENDALL $$?="Memo Text"
  ..Send to Staff:.msg MemoServ STAFF $$?="Memo Text"
  ..Cancel:.msg MemoServ CANCEL $$?="Nickname or #Channel"
  ..-
  ..List
  ...All:.msg MemoServ LIST
  ...New:.msg MemoServ LIST NEW
  ...Channel:.msg MemoServ LIST $$?="#Channel"
  ...Channel New:.msg MemoServ LIST $$?="#Channel" NEW
  ..Check:.msg MemoServ CHECK $$?="Nickname"
  ..-
  ..Read
  ...Memo:.msg MemoServ READ $$?="Memo Number"
  ...All:.msg MemoServ READ ALL
  ...Last:.msg MemoServ READ LAST
  ...New:.msg MemoServ READ NEW
  ...Channel:.msg MemoServ READ $$?="#Channel" $$?="Memo Number"
  ...Channel All:.msg MemoServ READ $$?="#Channel" ALL
  ...Channel Last:.msg MemoServ READ $$?="#Channel" LAST
  ...Channel New:.msg MemoServ READ $$?="#Channel" NEW
  ..-
  ..Delete
  ...Memo:.msg MemoServ DEL $$?="Memo Number"
  ...Last:.msg MemoServ DEL LAST
  ...All:.msg MemoServ DEL ALL
  ...Channel:.msg MemoServ DEL $$?="#Channel" $$?="Memo Number"
  ...Channel Last:.msg MemoServ DEL $$?="#Channel" LAST
  ...Channel All:.msg MemoServ DEL $$?="#Channel" ALL
  ..-
  ..Set
  ...Notify
  ....On:.msg MemoServ SET NOTIFY ON
  ....Logon:.msg MemoServ SET NOTIFY LOGON
  ....New:.msg MemoServ SET NOTIFY NEW
  ....Mail:.msg MemoServ SET NOTIFY MAIL
  ....No Mail:.msg MemoServ SET NOTIFY NOMAIL
  ....Off:.msg MemoServ SET NOTIFY OFF
  ...Limit
  ....You
  .....On:.msg MemoServ SET LIMIT $$?="Limit"
  .....On Hard:.msg MemoServ SET LIMIT $$?="Limit" HARD
  .....Off:.msg MemoServ SET LIMIT NONE
  ....Nickname
  .....On:.msg MemoServ SET LIMIT $$?="Nickname" $$?="Limit"
  .....On Hard:.msg MemoServ SET LIMIT $$?="Nickname" $$?="Limit" HARD
  .....Off:.msg MemoServ SET LIMIT $$?="Nickname" NONE
  ....Channel
  .....On:.msg MemoServ SET LIMIT $$?="#Channel" $$?="Limit"
  .....On Hard:.msg MemoServ SET LIMIT $$?="#Channel" $$?="Limit" HARD
  .....Off:.msg MemoServ SET LIMIT $$?="#Channel" NONE
  ..-
  ..Ignore
  ...Channel
  ....List:.msg MemoServ IGNORE $$?="#Channel" LIST
  ....Add:.msg MemoServ IGNORE $$?="#Channel" ADD $$?="Nickname or Host"
  ....Delete:.msg MemoServ IGNORE $$?="#Channel" DEL $$?="Nickname or Host"
  ...Nickname
  ....List:.msg MemoServ IGNORE LIST
  ....Add:.msg MemoServ IGNORE ADD $$?="Nickname or Host"
  ....Delete:.msg MemoServ IGNORE DEL $$?="Nickname or Host"
  ..-
  ..Info
  ...Nick:.msg MemoServ INFO $$?="Nickname"
  ...Channel:.msg MemoServ INFO $$?="#Channel"
  ..-
  ;##########NickServ#####################################
  .NickServ
  ..Help:.msg NickServ HELP
  ..-
  ..Register:.msg NickServ REGISTER $$?="Password" $$?="Email Address"
  ..Identify:.msg NickServ IDENTIFY $$?="Password"
  ..-
  ..Group:.msg NickServ GROUP $$?="Target Nickname" $$?="Password"
  ..Group List:.msg NickServ GLIST
  ..-
  ..Access
  ...List:.msg NickServ ACCESS LIST
  ...Add:.msg NickServ ACCESS ADD $$?="Mask"
  ...Delete:.msg NickServ ACCESS DEL $$?="Mask"
  ..-
  ..Set
  ...-
  ...Display:.msg NickServ SET DISPLAY $$?="Grouped Nickname"
  ...Password:.msg NickServ SET PASSWORD $$?="New Password"
  ...Language
  ....-
  ....English:.msg NickServ SET LANGUAGE 1
  ....Franחais (French):.msg NickServ SET LANGUAGE 2
  ....Deutsch (German):.msg NickServ SET LANGUAGE 3
  ....Italiano (Italian):.msg NickServ SET LANGUAGE 4
  ....Portuguךs (Portuguese):.msg NickServ SET LANGUAGE 5
  ....Espaסol (Spanish):.msg NickServ SET LANGUAGE 6
  ....Trkחe (Turkish):.msg NickServ SET LANGUAGE 7
  ....Catala (Catalan):.msg NickServ SET LANGUAGE 8
  ....ֵככחםיך (Greek):.msg NickServ SET LANGUAGE 9
  ....Nederlands (Dutch):.msg NickServ SET LANGUAGE 10
  ....׀ףססךטי (Russian):.msg NickServ SET LANGUAGE 11
  ....Magyar (Hungarian):.msg NickServ SET LANGUAGE 12
  ....Polski (Polish):.msg NickServ SET LANGUAGE 13
  ....-
  ...URL:.msg NickServ SET URL $$?="URL Address"
  ...Email:.msg NickServ SET EMAIL $$?="Email Address"
  ...ICQ:.msg NickServ SET ICQ $$?="ICQ Number"
  ...Greet:.msg NickServ SET GREET $$?="Greet Message"
  ...Kill
  ....-
  ....On:.msg NickServ SET KILL ON
  ....Quick:.msg NickServ SET KILL QUICK
  ....Immed:.msg NickServ SET KILL IMMED
  ....Off:.msg NickServ SET KILL OFF
  ....-
  ...Secure
  ....-
  ....On:.msg NickServ SET SECURE ON
  ....Off:.msg NickServ SET SECURE OFF
  ....-
  ...Private
  ....-
  ....On:.msg NickServ SET PRIVATE ON
  ....Off:.msg NickServ SET PRIVATE OFF
  ....-
  ...Hide
  ....-
  ....Email
  .....-
  .....On:.msg NickServ SET HIDE EMAIL ON
  .....Off:.msg NickServ SET HIDE EMAIL OFF
  .....-
  ....Status
  .....-
  .....On:.msg NickServ SET HIDE STATUS ON
  .....Off:.msg NickServ SET HIDE STATUS OFF
  .....-
  ....Usermask
  .....-
  .....On:.msg NickServ SET HIDE USERMASK ON
  .....Off:.msg NickServ SET HIDE USERMASK OFF
  .....-
  ....Quit
  .....-
  .....On:.msg NickServ SET HIDE QUIT ON
  .....Off:.msg NickServ SET HIDE QUIT OFF
  .....-
  ....-
  ...Message Type
  ....-
  ....Message:.msg NickServ SET MSG ON
  ....Notice:.msg NickServ SET MSG OFF
  ....-
  ...Auto Op
  ....-
  ....On:.msg NickServ SET AUTOOP ON
  ....Off:.msg NickServ SET AUTOOP OFF
  ....-
  ...-
  ..Saset
  ...-
  ...Display:.msg NickServ SASET $$?="Nickname" DISPLAY $$?="Grouped Nickname"
  ...Password:.msg NickServ SASET $$?="Nickname" PASSWORD $$?="New Password"
  ...URL:.msg NickServ SASET $$?="Nickname" URL $$?="URL Address"
  ...Email:.msg NickServ SASET $$?="Nickname" EMAIL $$?="Email Address"
  ...ICQ:.msg NickServ SASET $$?="Nickname" ICQ $$?="ICQ Number"
  ...Greet:.msg NickServ SASET $$?="Nickname" GREET $$?="Greet Message"
  ...Kill
  ....-
  ....On:.msg NickServ SASET $$?="Nickname" KILL ON
  ....Quick:.msg NickServ SASET $$?="Nickname" KILL QUICK
  ....Immed:.msg NickServ SASET $$?="Nickname" KILL IMMED
  ....Off:.msg NickServ SASET $$?="Nickname" KILL OFF
  ....-
  ...Secure
  ....-
  ....On:.msg NickServ SASET $$?="Nickname" SECURE ON
  ....Off:.msg NickServ SASET $$?="Nickname" SECURE OFF
  ....-
  ...Private
  ....-
  ....On:.msg NickServ SASET $$?="Nickname" PRIVATE ON
  ....Off:.msg NickServ SASET $$?="Nickname" PRIVATE OFF
  ....-
  ...Hide
  ....-
  ....Email
  .....-
  .....On:.msg NickServ SASET $$?="Nickname" HIDE EMAIL ON
  .....Off:.msg NickServ SET HIDE EMAIL OFF
  .....-
  ....Status
  .....-
  .....On:.msg NickServ SASET $$?="Nickname" HIDE STATUS ON
  .....Off:.msg NickServ SASET $$?="Nickname" HIDE STATUS OFF
  .....-
  ....Usermask
  .....-
  .....On:.msg NickServ SASET $$?="Nickname" HIDE USERMASK ON
  .....Off:.msg NickServ SASET $$?="Nickname" HIDE USERMASK OFF
  .....-
  ....Quit
  .....-
  .....On:.msg NickServ SASET $$?="Nickname" HIDE QUIT ON
  .....Off:.msg NickServ SASET $$?="Nickname" HIDE QUIT OFF
  .....-
  ....-
  ...Message Type
  ....-
  ....Message:.msg NickServ SASET $$?="Nickname" MSG ON
  ....Notice:.msg NickServ SASET $$?="Nickname" MSG OFF
  ....-
  ...NoExpire
  ....-
  ....On:.msg NickServ SASET $$?="Nickname" NOEXPIRE ON
  ....Off:.msg NickServ SASET $$?="Nickname" NOEXPIRE OFF
  ....-
  ...Auto Op
  ....-
  ....On:.msg NickServ SASET $$?="Nickname" AUTOOP ON
  ....Off:.msg NickServ SASET $$?="Nickname" AUTOOP OFF
  ....-
  ...-
  ..-
  ..Ghost:.msg NickServ GHOST $$?="Nickname" $$?="Password"
  ..Recover:.msg NickServ RECOVER $$?="Nickname" $$?="Password"
  ..Release:.msg NickServ RELEASE $$?="Nickname" $$?="Password"
  ..-
  ..SendPass:.msg NickServ SENDPASS $$?="Nickname"
  ..GetPass:.msg NickServ GETPASS $$?="Nickname"
  ..GetEmail:.msg NickServ GETEMAIL $$?="Email Address"
  ..-
  ..Forbid:.msg NickServ FORBID $$?="Nickname" $$?="Reason"
  ..Suspend:.msg NickServ SUSPEND $$?="Nickname" $$?="Reason"
  ..UnSuspend:.msg NickServ UNSUSPEND $$?="Nickname"
  ..-
  ..Info
  ...-
  ...Info:.msg NickServ INFO $$?="Nickname"
  ...All Info:.msg NickServ INFO $$?="Nickname" ALL
  ...-
  ..Alist
  ...-
  ...All:.msg NickServ ALIST $$?="Nickname"
  ...Founder:.msg NickServ ALIST $$?="Nickname" 9999
  ...Level 10:.msg NickServ ALIST $$?="Nickname" 10
  ...Level 5:.msg NickServ ALIST $$?="Nickname" 5
  ...Level 4:.msg NickServ ALIST $$?="Nickname" 4
  ...Level 3:.msg NickServ ALIST $$?="Nickname" 3
  ...-
  ..List
  ...-
  ...All:.msg NickServ LIST *
  ...Mask:.msg NickServ LIST $$?="Pattern"
  ...Forbidden:.msg NickServ LIST * FORBIDDEN
  ...NoExpire:.msg NickServ LIST * NOEXPIRE
  ...Unconfirmed:.msg NickServ LIST * UNCONFIRMED
  ...-
  ..Status:.msg NickServ STATUS $$?="Nickname"
  ..Update:.msg NickServ UPDATE
  ..-
  ..OperInfo
  ...-
  ...Add:.msg NickServ OINFO ADD $$?="Nickname" $$?="Info"
  ...Delete:.msg NickServ OINFO DEL $$?="Nickname"
  ...-
  ..-
  ..Logout
  ...-
  ...You:.msg NickServ LOGOUT
  ...Nickname:.msg NickServ LOGOUT $$?="Nickname"
  ...Nickname Revalidate:.msg NickServ LOGOUT $$?="Nickname" REVALIDATE
  ..-
  ..Drop
  ...You:.msg NickServ DROP
  ...Nickname:.msg NickServ DROP $$?="Nickname"
  ..-
  ;##########OperServ#####################################
  .OperServ
  ..-
  ..Help:.msg OperServ HELP
  ..-
  ..Stats
  ...Users:.msg OperServ STATS
  ...Akill:.msg OperServ STATS AKILL
  ...All:.msg OperServ STATS ALL
  ...Reset:.msg OperServ STATS RESET
  ...Memory:.msg OperServ STATS MEMORY
  ...Uplink:.msg OperServ STATS UPLINK
  ..-
  ..Staff:.msg OperServ STAFF
  ..Oper
  ...Add:.msg OperServ OPER ADD $$?="Nickname"
  ...Delete:.msg OperServ OPER DEL $$?="Nickname/Entry-Num/List"
  ...List:.msg OperServ OPER LIST
  ...Clear:.msg OperServ OPER CLEAR
  ..Admin
  ...Add:.msg OperServ ADMIN ADD $$?="Nickname"
  ...Delete:.msg OperServ ADMIN DEL $$?="Nickname/Entry-Num/List"
  ...List:.msg OperServ ADMIN LIST
  ...Clear:.msg OperServ ADMIN CLEAR
  ..-
  ..Global:.msg OperServ GLOBAL $$?="Message"
  ..Logon News
  ...Add:.msg OperServ LOGONNEWS ADD $$?="Message"
  ...Delete:.msg OperServ LOGONNEWS DEL $$?="Entry-Num/ALL"
  ...List:.msg OperServ LOGONNEWS LIST
  ..Random New
  ...Add:.msg OperServ RANDOMNEWS $$?="Message"
  ...Delete:.msg OperServ RANDOMNEWS DEL $$?="Entry-Num/ALL"
  ...List:.msg OperServ RANDOMNEWS LIST
  ..Oper News
  ...Add:.msg OperServ OPERNEWS $$?="Message"
  ...Delete:.msg OperServ OPERNEWS DEL $$?="Entry-Num/ALL"
  ...List:.msg OperServ OPERNEWS LIST
  ..-
  ..Channel Control
  ...Kick:.msg OperServ KICK $$?="#Channel" $$?="User" $$?="Reason"
  ...Mode:.msg OperServ MODE $$?="#Channel" $$?="Modes" (e.g. +ntO-lm)"
  ...Clear Modes
  ....Binary & Bans:.msg OperServ CLEARMODES $$?="#Channel"
  ....All (OPs & Voices):.msg OperServ CLEARMODES $$?="#Channel" ALL
  ..Network Control
  ...Akill
  ....Add
  .....With Expiry:.msg OperServ AKILL ADD $$?="+Expiry" $$?="Mask (User@Host)" $$?="Reason"
  .....With Default Expiry:.msg OperServ AKILL ADD $$?="Mask (User@Host)" $$?="Reason"
  .....With No Expiry:.msg OperServ AKILL ADD +0 $$?="Mask (User@Host)" $$?="Reason"
  ....Delete:.msg OperServ AKILL DEL $$?="Mask (User@Host)/Entry-Num/List"
  ....List
  .....All:.msg OperServ AKILL LIST
  .....Mask/List:.msg OperServ AKILL LIST $$?="Mask (User@Host)/List"
  ....View
  .....All:.msg OperServ AKILL VIEW
  .....Mask/List:.msg OperServ AKILL VIEW $$?="Mask (User@Host)/List"
  ....Clear:.msg OperServ AKILL CLEAR
  ...Chan Akill
  ....With Expiry:.msg OperServ CHANKILL $$?="+Expiry (days)" $$?="#Channel" $$?="Reason"
  ....With Default Expiry:.msg OperServ CHANKILL $$?="#Channel" $$?="Reason"
  ....With No Expiry:.msg OperServ CHANKILL +0 $$?="#Channel" $$?="Reason"
  ...-
  ...SGline
  ....Add
  .....With Expiry:.msg OperServ SGLINE ADD $$?="+Expiry" $$?="Realname Mask" : $$?="Reason"
  .....With Default Expiry:.msg OperServ SGLINE $$?="Realname Mask" : $$?="Reason"
  .....With No Expiry:.msg OperServ SGLINE +0 $$?="Realname Mask" : $$?="Reason"
  ....Delete:.msg OperServ SGLINE DEL $$?="Realname/Entry-Num/List"
  ....List
  .....All:.msg OperServ SGLINE LIST
  .....Mask/List:.msg OperServ SGLINE LIST $$?="Mask (Realname)/List"
  ....View
  .....All:.msg OperServ SGLINE VIEW
  .....Mask/List:.msg OperServ SGLINE VIEW $$?="Mask (Realname)/List"
  ....Clear:.msg OperServ SGLINE CLEAR
  ...SQline
  ....Add
  .....With Expiry:.msg OperServ SQLINE ADD $$?="+Expiry" $$?="Nickname/#Channel" $$?="Reason"
  .....With Default Expiry:.msg OperServ SQLINE $$?="Nickname/#Channel" $$?="Reason"
  .....With No Expiry:.msg OperServ SQLINE +0 $$?="Nickname/#Channel" $$?="Reason"
  ....Delete:.msg OperServ SQLINE DEL $$?="Nickname/#Channel/Entry-Num/List"
  ....List
  .....All:.msg OperServ SQLINE LIST
  .....Mask/List:.msg OperServ SQLINE LIST $$?="Mask (Nickname/Channel)/List"
  ....View
  .....All:.msg OperServ SQLINE VIEW
  .....Mask/List:.msg OperServ SQLINE VIEW $$?="Mask (Nickname/Channel)/List"
  ....Clear:.msg OperServ SQLINE CLEAR
  ...SZline
  ....Add
  .....With Expiry:.msg OperServ SZLINE ADD $$?="+Expiry" $$?="IP Address" $$?="Reason"
  .....With Default Expiry:.msg OperServ SZLINE $$?="IP Address" $$?="Reason"
  .....With No Expiry:.msg OperServ SZLINE +0 $$?="IP Address" $$?="Reason"
  ....Delete:.msg OperServ SZLINE DEL $$?="IP Address/Entry-Num/List"
  ....List
  .....All:.msg OperServ SZLINE LIST
  .....Mask/List:.msg OperServ SZLINE LIST $$?="Mask (IP Address)/List"
  ....View
  .....All:.msg OperServ SZLINE VIEW
  .....Mask/List:.msg OperServ SZLINE VIEW $$?="Mask (IP Address)/List"
  ....Clear:.msg OperServ SZLINE CLEAR
  ..-
  ..Channel List
  ...List All:.msg OperServ CHANLIST
  ...List Secret:.msg OperServ CHANLIST $$?="Channel Pattern/Nickname" SECRET
  ...List Specified:.msg OperServ CHANLIST $$?="Channel Pattern/Nickname"
  ..User List
  ...List All:.msg OperServ USERLIST
  ...List Invisible:.msg OperServ USERLIST $$?="Nickname Pattern/#Channel" INVISIBLE
  ...List Specified:.msg OperServ USERLIST $$?="Nickname Pattern/#Channel"
  ..Sessions
  ...List:.msg OperServ SESSION LIST $$?="Threshold (must be greater than 1)"
  ...View:.msg OperServ SESSION VIEW $$?="Host (no wildcards)"
  ..-
  ..Exception
  ...Add
  ....With Expiry:.msg OperServ EXCEPTION ADD $$?="+Expiry" $$?="Host mask (box.host.dom)" $$?="Limit" $$?="Reason"
  ....With Default Expiry:.msg OperServ EXCEPTION ADD $$?="Host mask (box.host.dom)" $$?="Limit" $$?="Reason"
  ....With No Expiry:.msg OperServ EXCEPTION ADD +0 $$?="Host mask (box.host.dom)" $$?="Limit" $$?="Reason"
  ...Delete:.msg OperServ EXCEPTION DEL $$?="Host mask/List"
  ...Move:.msg OperServ EXCEPTION MOVE $$?="Number" $$?="New position"
  ...List
  ....All:.msg OperServ EXCEPTION LIST
  ....Mask/List:.msg OperServ EXCEPTION LIST $$?="Host mask/List"
  ..Ignore
  ...Add
  ....Temporarily:.msg OperServ IGNORE ADD $$?="Time (seconds)" $$?="Nickname"
  ....Permanently:.msg OperServ IGNORE ADD 0 $$?="Nickname"
  ...Delete:.msg OperServ IGNORE DEL $$?="Nickname"
  ...List:.msg OperServ IGNORE LIST
  ...Clear:.msg OperServ IGNORE CLEAR
  ..-
  ..Noop
  ...Set:.msg OperServ NOOP SET $$?="Server"
  ...Revoke:.msg OperServ NOOP REVOKE $$?="Server"
  ..Jupe:.msg OperServ JUPE $$?="Server" $$?="Reason"
  ..-
  ..Defcon:.msg OperServ DEFCON $$?="WARNING: If you do not know what this is set to 5! [1|2|3|4|5]"
  ..-
  ..Set
  ...Read-only
  ....On:.msg OperServ SET READONLY ON
  ....Off:.msg OperServ SET READONLY OFF
  ...Channel Logging
  ....On:.msg OperServ SET LOGCHAN ON
  ....Off:.msg OperServ SET LOGCHAN OFF
  ...Debug
  ....On:.msg OperServ SET DEBUG ON
  ....On Level:.msg OperServ SET DEBUG $$?="Level"
  ....Off:.msg OperServ SET DEBUG OFF
  ...NoExpire
  ....On:.msg OperServ SET NOEXPIRE ON
  ....Off:.msg OperServ SET NOEXPIRE OFF
  ...SuperAdmin
  ....On:.msg OperServ SET SUPERADMIN ON
  ....Off:.msg OperServ SET SUPERADMIN OFF
  ...Ignore
  ....On:.msg OperServ SET IGNORE OFF
  ....Off:.msg OperServ SET IGNORE OFF
  ...List:.msg OperServ SET LIST
  ..Modules
  ...List:.msg OperServ MODLIST
  ...Info:.msg OperServ MODINFO $$?="File name"
  ...Load:.msg OperServ MODLOAD $$?="File name"
  ...Unload:.msg OperServ MODUNLOAD $$?="File name"
  ..-
  ..SuperAdmin
  ...Force nickchange:.msg OperServ SVSNICK $$?="Current Nickname" $$?="New Nickname"
  ...Give Operflags:.msg OperServ OLINE $$?="Nickname" $$?="Oper flags (e.g. +hkb-ZLG)"
  ...Change user's modes:.msg OperServ UMODE $$?="Nickname" $$?="User modes (e.g. +pi-dRG)
  ..-
  ..Update:.msg OperServ UPDATE
  ..-
  ..Reload:.msg OperServ RELOAD
  ..-
  ..Restart:.msg OperServ RESTART
  ..-
  ..Quit - No Save:.msg OperServ QUIT
  ..-
  ..Shutdown - Save:.msg OperServ SHUTDOWN
  ..-
}
