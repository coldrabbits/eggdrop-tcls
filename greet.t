
set welc(msg) "Welcome Pyrex Hosting %nick, For the vhost list type .vhosts - .website for information - Your Hosts are Squire, Eddie or dfz If Any Problems Please visit http://support.pyrexhosting.com"
set welc(chan) "#test"
set welc(type) "1"

bind join - #chat* givewelcome
proc givewelcome {nick uhost hand chan} {
global welc

set welctxt $welc(msg)
regsub -all "%nick" $welctxt "$nick" welctxt
regsub -all "%chan" $welctxt "$chan" welctxt
switch $welc(type) {
1 { puthelp "NOTICE $nick :$welctxt" }
2 { puthelp "PRIVMSG $nick :$welctxt" }
}
}
putlog "Channel Greeting - Generated by http://www.egginfo.org - Frostbyte" 