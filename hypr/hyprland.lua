-- ********** AUTOSTART **********
hl.on("hyprland.start", function () 
  hl.exec_cmd("waybar")
  hl.exec_cmd("hyprpaper")

end)

-- ********** APPEARANCE **********
hl.workspace_rule({
	decorate = true,
	workspace = "r[1-10]",
	gaps_out = 12,
	gaps_in = 6,
	border_size = 1,
})


-- ********** KEYBINDS **********

--apps
hl.bind("SUPER + T", hl.dsp.exec_cmd("kitty") )
hl.bind("SUPER + E", hl.dsp.exec_cmd("dolphin") )
hl.bind("SUPER + P", hl.dsp.exec_cmd("killall waybar; waybar") )
hl.bind("SUPER + B", hl.dsp.exec_cmd("brave --password-store=basic") )

--functional
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + ALT + M", hl.dsp.exec_cmd(
	"hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0'"
))

hl.bind("SUPER + ALT + R", hl.dsp.exec_cmd(
	"hyprshutdown -t 'Restarting...' --post-cmd 'reboot'"
))

--workspace
for i = 1, 9 do
 local numberkey = {10,11,12,13,14,15,16,17,18,19}
 hl.bind("SUPER + code:"..numberkey[i], hl.dsp.focus({ workspace = i}) )
end

--move focus
hl.bind("CTRL + Left",  hl.dsp.focus({direction = "l"}))
hl.bind("CTRL + Right", hl.dsp.focus({direction = "r"}))
hl.bind("CTRL + Up",    hl.dsp.focus({direction = "u"}))
hl.bind("CTRL + Down",  hl.dsp.focus({direction = "d"}))

--move window
hl.bind("SUPER + CTRL + Left",  hl.dsp.window.move({direction = "l"}))
hl.bind("SUPER + CTRL + Right",  hl.dsp.window.move({direction = "r"}))
hl.bind("SUPER + CTRL + Up",  hl.dsp.window.move({direction = "u"}))
hl.bind("SUPER + CTRL + Down",  hl.dsp.window.move({direction = "d"}))

-- ********** WINDOW RULES **********
hl.window_rule({
  name = "audio-control",
  match = {
    class = "org.pulseaudio.pavucontrol"
  },
  float = true,
  size = { 900, 600 }
})

