-- Hyprland Layouts Module --

hl.config({
  general = {
    layout = "dwindle",
  },

  dwindle = {
    force_split = 2, -- 0 follows mouse, 1 left/top, 2 right/bottom
    preserve_split = false,
    split_width_multiplier = 1.2,
    default_split_ratio = 1.0,
  },

  master = {
    allow_small_split = false,
    mfact = 0.67,
    new_status = "slave",
    new_on_top = false,
    new_on_active = "after",
    orientation = "left",
    drop_at_cursor = true,
    focus_master_on_close = false,
  },
})
