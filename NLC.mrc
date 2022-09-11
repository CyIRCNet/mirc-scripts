; ******************************************************************************
; DC Nicklist Colors v2.0.1 by MaSOuD.
; Read the 'Readme.txt' for instruction and contacts.
; ******************************************************************************
; [Aliases]
alias -l DCDir return $+($shortfn($scriptdir),$iif($1-,$1-))
alias -l DCR return $readini($DCDir(NLC.ini),$1,$iif($2,$2))
alias -l DCW { .writeini -n $DCDir(NLC.ini) $1- }
alias -l DCRe { .remini $DCDir(NLC.ini) $1- }
alias DC.NLC.About { .echo -aq $input(DC Nicklist Colors v2.0.1 by MaSOuD. $+ $crlf $+ $crlf $+ Read the 'Readme.txt' for instruction and contacts. $+ $crlf $+ $crlf $+ Enjoy! : $+ $chr(41),oi8vg,About Nicklist Colors) }
alias DC.NLC { DC.NLC.Init }
alias DC.NLC.Unload {
  if ($dialog(DC.NLC)) { dialog -x DC.NLC }
  .unload -rs $qt($script)
}

alias -l DC.NLC.Init {
  if ($1 == First) {
    clear -a
    .echo $color(info) $timestamp *6*10* DC Nicklist Colors by MaSOuD is successfully loaded!
    .echo $color(info) $timestamp *6*10* Attempting to configure Nicklist Colors for first run, please wait...
  }
  if ($dialog(DC.NLC)) { dialog -c DC.NLC }
  if (!$isdir($DCDir(Colors\))) { .mkdir $qt($longfn($DCDir(Colors\))) }
  window -c @DC.Color
  var %c = 0
  window -pfhn +d @DC.Color -1 -1 16 16
  while (%c < 16) {
    clear @DC.Color
    drawrect -f @DC.Color %c 2 0 0 16 16
    drawsave @DC.Color $+($DCDir(Colors\),$iif($len(%c) > 1,%c,0 $+ %c),.bmp)
    inc %c
  }
  window -c @DC.Color
  if ($1 == First) { NLC.Save -df }
  else { dialog -m DC.NLC DC.NLC }
}

alias -l NLC.Preview {
  if ($dialog(DC.NLC)) {
    window -c @NLC.Preview
    window -bdpok0aC +bf @NLC.Preview -1 -1 502 402
    .titlebar @NLC.Preview - [DC Nicklist Colors Preview...]
    drawrect -f @NLC.Preview 0 500 0 0 400 400
    drawrect -f @NLC.Preview 15 100 400 0 400 400
    drawline @NLC.Preview 14 3 0 0 500 0
    drawline @NLC.Preview 14 3 0 0 0 500
    drawline @NLC.Preview 14 3 498 0 498 498
    drawline @NLC.Preview 14 3 0 398 500 398
    drawline @NLC.Preview 14 4 400 0 400 398
    var %dids = 37,39,41,43,45,47,49,51,53,55
    var %y = $+($chr(126),Owner) $+($chr(38),Protect) $+($chr(64),Op) $+($chr(37),Hop) $+($chr(43),Voice) Notify Ignore Idle Regular Myself
    var %did,%perfix,%text,%x = 1,%pos = 2
    while (%x < 11) {
      %did = $gettok(%dids,%x,44)
      if ($did(DC.NLC,62).sel == 1) || ($did(DC.NLC,62).sel == 3) { set %text $+(,,$did(DC.NLC,%did),$gettok(%y,%x,32),) }
      else { set %text $+(,,$color(nicklist),$gettok(%y,%x,32),) }
      drawtext -pb @NLC.Preview 1 15 Arial 13 405 %pos %text
      inc %x
      %pos = $calc(%pos + 19)
    }
    %x = 1
    var %pos = 174,%msgs = I own the channel!,I'm a Protect/Sop!,I'm an Op!,They just gave me a Half op :(,I'm an active user and they gave me Voice!,You have me in your Notify list.,Why did you Ignore me?,I'm away from keyboard.,I'm just a Regular user in here.,It's me!
    while (%x < 11) {
      %did = $gettok(%dids,%x,44)
      var %col = $iif($len($color(normal)) > 1,$color(normal),0 $+ $color(normal))
      if ($did(DC.NLC,62).sel == 1) || ($did(DC.NLC,62).sel == 2) { set %text $+(,,%col,$chr(40),$asctime(HH:nn),$chr(41),$chr(32),$chr(40),,$did(DC.NLC,%did),$gettok(%y,%x,32),,%col,$chr(41),$chr(32),$gettok(%msgs,%x,44),) }
      else { set %text $+(,,%col,$chr(40),$asctime(HH:nn),$chr(41),$chr(32),$chr(40),,%col,$gettok(%y,%x,32),,%col,$chr(41),$chr(32),$gettok(%msgs,%x,44),) }
      drawtext -pb @NLC.Preview 1 0 Arial 13 4 %pos %text
      inc %x
      %pos = $calc(%pos + 19)
    }
  }
}

alias -l NLC.Update {
  if ($istok(-d -c,$1,32)) {
    var %t = $iif($1 == -d,$true,$false)
    .cnick $iif($DCR(Settings,Status) == 1,ON,OFF)
    var %x = 20
    while (%x) { .cnick -r * | dec %x }
    var %m = $+(-m,$DCR(Settings,Method))
    .cnick -r $+($chr(36),me)
    .cnick %m $+($chr(36),me) $iif(%t,5,$iif($DCR(Custom,Me) != $null,$v1,5))
    .cnick $+(%m,y) * $iif(%t,3,$iif($DCR(Custom,Notify) != $null,$v1,3))
    .cnick $+(%m,i) * $iif(%t,4,$iif($DCR(Custom,Ignore) != $null,$v1,4))
    .cnick %m * $iif(%t,6,$iif($DCR(Custom,Owner) != $null,$v1,6)) ~
    .cnick %m * $iif(%t,13,$iif($DCR(Custom,Protect) != $null,$v1,13)) &
    .cnick %m * $iif(%t,7,$iif($DCR(Custom,Op) != $null,$v1,7)) @
    .cnick %m * $iif(%t,10,$iif($DCR(Custom,Hop) != $null,$v1,10)) %
    .cnick %m * $iif(%t,12,$iif($DCR(Custom,Voice) != $null,$v1,12)) +
    .cnick $+(%m,l90) * $iif(%t,2,$iif($DCR(Custom,Idle) != $null,$v1,2))
    .cnick %m * $iif(%t,1,$iif($DCR(Custom,Regular) != $null,$v1,1))
  }
}

alias -l NLC.Save {
  ;echo -a $1- | return
  if ($1-13) || ($istok(-d -df,$1,32)) {
    var %x = 1,%m = $iif($1 === -c,$false,$true),%defs = 6 13 7 10 12 9 4 2 1 5
    var %opt = Owner Protect Op Hop Voice Notify Ignore Idle Regular Me
    DCW Settings Status $iif(%m,1,$2)
    DCW Settings Use $iif(%m,Default,Custom)
    DCW Settings Method $iif(%m,0,$3)
    while (%x <= $numtok(%opt,32)) { DCW $iif(%m,Default,Custom) $gettok(%opt,%x,32) $iif(%m,$gettok(%defs,%x,32),$(,$ $+ $calc(%x + 3))) | inc %x }
    ;while (%x <= $numtok(%opt,32)) { DCW $iif(%m,Default,Custom) $gettok(%opt,%x,32) $iif(%m,$gettok(%defs,%x,32),$+($chr(36),$calc(%x + 3))) | inc %x }
    if ($dialog(DC.NLC)) { did -e DC.NLC 58 }
    if ($1 == -df) {
      .echo $color(info) $timestamp *6*10* Default settings has been loaded.
      .echo $color(info) $timestamp *6*10*4 HINT: Everything will be effected when you press APPLY button!
      .timer.nlc 1 1 /dialog -m DC.NLC DC.NLC
    }
    else { NLC.Update $iif(%m,-d,-c) }
  }
}


; [Dialog]
dialog DC.NLC {
  title "DC Nicklist Colors"
  size -1 -1 173 116
  option dbu
  icon $DCDir(DC.ico)
  box "", 1, 2 17 61 85
  icon 2, 6 25 8 8
  text "= 0", 3, 16 26 10 8, center
  icon 4, 6 34 8 8
  text "= 1", 5, 16 35 10 8, center
  icon 6, 6 43 8 8
  text "= 2", 7, 16 44 10 8, center
  icon 8, 6 52 8 8
  text "= 3", 9, 16 53 10 8, center
  icon 10, 6 61 8 8
  text "= 4", 11, 16 62 10 8, center
  icon 12, 6 70 8 8
  text "= 5", 13, 16 71 10 8, center
  icon 14, 6 79 8 8
  text "= 6", 15, 16 80 10 8, center
  icon 16, 6 88 8 8
  text "= 7", 17, 16 89 10 8, center
  icon 18, 37 25 8 8
  text "= 8", 19, 47 26 12 8, center
  icon 20, 37 34 8 8
  text "= 9", 21, 47 35 12 8, center
  icon 22, 37 43 8 8
  text "= 10", 23, 47 44 12 8, center
  icon 24, 37 52 8 8
  text "= 11", 25, 47 53 12 8, center
  icon 26, 37 61 8 8
  text "= 12", 27, 47 62 12 8, center
  icon 28, 37 70 8 8
  text "= 13", 29, 47 71 12 8, center
  icon 30, 37 79 8 8
  text "= 14", 31, 47 80 12 8, center
  icon 32, 37 88 8 8
  text "= 15", 33, 47 89 12 8, center
  box "", 34, 29 28 3 64, disable
  box "", 35, 65 0 106 84
  text "Owner:", 36, 68 23 23 10, right
  edit "", 37, 93 22 20 10, limit 2 center
  text "Protect:", 38, 68 35 23 10, right
  edit "", 39, 93 34 20 10, limit 2 center
  text "Op:", 40, 68 47 23 10, right
  edit "", 41, 93 46 20 10, limit 2 center
  text "Hop:", 42, 68 59 23 10, right
  edit "", 43, 93 58 20 10, limit 2 center
  text "Voice:", 44, 68 71 23 9, right
  edit "", 45, 93 70 20 10, limit 2 center
  text "Notify:", 46, 122 23 22 10, right
  edit "", 47, 146 22 20 10, limit 2 center
  text "Ignore:", 48, 122 35 22 10, right
  edit "", 49, 146 34 20 10, limit 2 center
  text "Idle:", 50, 122 47 22 10, right
  edit "", 51, 146 46 20 10, limit 2 center
  text "Regular:", 52, 122 59 22 10, right
  edit "", 53, 146 58 20 10, limit 2 center
  text "Myself:", 54, 122 71 22 9, right
  edit "", 55, 146 70 20 10, limit 2 center
  box "", 56, 118 24 3 51, disable
  check "Use my &Custom", 63, 71 7 50 10
  check "Enable the &NLC", 57, 7 7 53 10
  box "", 60, 65 83 106 19
  text "Highlight Method:", 61, 68 90 44 9, right
  combo 62, 114 89 52 35, size drop
  button "&Apply", 58, 99 104 35 10
  button "Reset", 59, 3 104 35 10
  button "Clos&e", 66, 135 104 35 10
  button "Preview", 65, 39 104 35 10
  menu "Menu", 70
  item "About", 71, 70
  item break, 72, 70
  menu "Unload", 73, 70
  menu "Are you sure?", 74, 73
  item "Yes!", 75, 74
}

on 1:dialog:DC.NLC:*:*: {
  if ($devent == init) { 
    if (!$isfile($DCDir(NLC.ini))) { DC.NLC.Init First | return }
    if ($DCR(Settings,Use) == Default) { did -b $dname 37,39,41,43,45,47,49,51,53,55 }
    did $iif($DCR(Settings,Use) == Default,-u,-c) $dname 63

    var %c = 1,%dids = 37 39 41 43 45 47 49 51 53 55,%opt = Owner Protect Op Hop Voice Notify Ignore Idle Regular Me
    while (%c <= $numtok(%dids,32)) { did -ra $dname $gettok(%dids,%c,32) $DCR($DCR(Settings,Use),$gettok(%opt,%c,32)) | inc %c }
    if ($DCR(Settings,Status) == 1) { did -c $dname 57 }
    didtok $dname 62 44 Both,Message,Listbox
    did -c $dname 62 $calc($DCR(Settings,Method) + 1)

    var %x = 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32
    var %y = $numtok(%x,32)
    while (%y) {
      var %c = $iif($len($calc(%y - 1)) > 1,$calc(%y - 1),0 $+ $calc(%y - 1))
      if (!$isfile($DCDir(Colors\ $+ %c $+ .bmp))) { DC.NLC.Init | return }
      var %did = $gettok(%x,%y,32)
      did -g $dname %did $DCDir(Colors\ $+ %c $+ .bmp)
      dec %y
    }
  }
  if ($devent == close) { window -c @NLC.Preview }
  if ($devent == edit) {
    var %dids = 37 39 41 43 45 47 49 51 53 55
    if ($istok(%dids,$did,32)) {
      var %x = 1,%result = $true
      while (%x <= $numtok(%dids,32)) {
        if ($did($gettok(%dids,%x,32)) == $null) { %result = $false | break }
        inc %x
      }
      did $iif(%result,-e,-b) $dname 58
    }
  }
  if ($devent == menu) {
    if ($did == 71) { DC.NLC.About }
    if ($did == 75) { DC.NLC.Unload }
  }
  if ($devent == sclick) {
    if ($istok(37 39 41 43 45 47 49 51 53 55 63,$did,32)) { did -e $dname 59 }
    if ($did == 58) {
      did -b $dname $did
      var %x = 1,%dids = 37 39 41 43 45 47 49 51 53 55
      while (%x <= $numtok(%dids,32)) {
        var %did = $gettok(%dids,%x,32)
        if ($chr(2) isin $did(%did)) || ($chr(3) isin $did(%did)) || ($chr(15) isin $did(%did)) || ($chr(31) isin $did(%did)) { .echo -aq $input(Don NOT use Control codes into the editbars! $+ $crlf $+ Just use the number itself.,gi8o,Error!) | did -rf $dname %did | return }
        if ($did(%did).text !isnum 0-15) { .echo -aq $input(You must enter a number between 0-15,gi8o,Error!) | did -rf $dname %did | return }
        inc %x
      }
      NLC.Save $iif($did(63).state == 0,-d,-c) $did(57).state $iif($did(62).sel,$calc($v1 - 1),0) $did(37) $did(39) $did(41) $did(43) $did(45) $did(47) $did(49) $did(51) $did(53) $did(55)
    }
    if ($did == 59) {
      did -b $dname $did
      var %x = 1,%dids = 37 39 41 43 45 47 49 51 53 55,%opt = Owner Protect Op Hop Voice Notify Ignore Idle Regular Me
      while (%x <= $numtok(%dids,32)) {
        did -ra $dname $gettok(%dids,%x,32) $DCR(Default,$gettok(%opt,%x,32))
        inc %x
      }
      did -u $dname 63
      did -c $dname 62 1
      did -b $dname $replace(%dids,$chr(32),$chr(44))
    }
    if ($did == 63) { did $iif($did(63).state == 0,-b,-e) $dname 37,39,41,43,45,47,49,51,53,55,62 }
    if ($did == 65) { NLC.Preview }
    if ($did == 66) { dialog -c DC.NLC }
  }
}


; [Load and Unload Events]
on 1:Load:{ DC.NLC.Init First }
on 1:Unload: {
  clear -a
  .cnick OFF
  .cnick -r $+($chr(36),me)
  var %x = 16
  while (%x) {
    .cnick -r *
    var %y = $iif($len($calc(%x - 1)) > 1,$calc(%x - 1),0 $+ $calc(%x - 1))
    if ($isfile($DCDir(Colors\ $+ %y $+ .bmp))) { .remove $DCDir(Colors\ $+ %y $+ .bmp) }
    dec %x
  }
  .rmdir $qt($longfn($DCDir(Colors\)))
  .remove $DCDir(NLC.ini)
  .echo $color(info) $timestamp *6*10* DC Nicklist Colors by MaSOuD is successfully unloaded!
  .echo $color(info) $timestamp *6*10* Thank You for using this Addon, Take care :)
}

; [Menus]
menu Menubar,Channel,Status,Nicklist,Query {
  -
  DC Nicklist Colors
  .Settings:DC.NLC
  .About:DC.NLC.About
  .-
  .Unload
  ..Are you sure?
  ...Yes!:DC.NLC.Unload
  -
}

; E.O.F.
