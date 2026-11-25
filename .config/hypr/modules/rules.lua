-- Hyprland Window and Workspace Rules Module --


-- WORKSPACES
--
hl.workspace_rule({
  workspace = "1",
  monitor = "eDP-2",
  default = true,
  persistent = true,
})

hl.workspace_rule({
  workspace = "2",
  monitor = "desc:Dell Inc. DELL U3415W F1T1W63F192L",
  default = true,
  persistent = true,
})

hl.workspace_rule({
  workspace = "3",
  monitor = "desc:LG Electronics LG SDQHD 503NTAB3G520",
  default = true,
  persistent = true,
})

-- WINDOWS
--

hl.window_rule({
  name = "float pavucontrol",
  match = { title = "^Volume Control$" },
  float = true,
  size = "800 800",
  center = true,
})

hl.window_rule({
  name = "fullscreen apps",
  match = {
    title = "Valheim",
  },
  fullscreen = true,
})

hl.window_rule({
  name = "suppress maximize events",
  match = { class = ".*" },
  suppress_event = "maximize",
})

-- LAYERS
--

hl.layer_rule({
  name = "walker effects",
  match = { namespace = "^walker$" },
  blur = true,
  dim_around = true,
})

hl.layer_rule({
  name = "waybar effects",
  match = { namespace = "^waybar$" },
  blur = true,
  ignore_alpha = 0.1,
})
