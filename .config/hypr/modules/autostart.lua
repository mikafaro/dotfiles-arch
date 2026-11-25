-- Hyprland Autostart Module --

hl.on("hyprland.start", function()
  hl.exec_cmd("waybar & hyprpaper")
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  hl.exec_cmd("elephant & walker --gapplication-service")
  hl.exec_cmd("tuxedo-control-center --tray")
end)
