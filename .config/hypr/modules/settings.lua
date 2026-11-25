-- Hyprland Settings Module --

hl.config({
  general = {
    gaps_in = 4,
    gaps_out = 8,
    border_size = 2,
    resize_on_border = false,
    allow_tearing = false,
    col = {
      active_border = "#0DDF88cc",
      inactive_border = "#595959cc",
    },
  },
  decoration = {
    rounding = 6,
    rounding_power = 4,
    active_opacity = 1.0,
    inactive_opacity = 1.0,
    fullscreen_opacity = 1.0,
    blur = {
      enabled = true,
      size = 3,
      passes = 4,
      vibrancy = 0.1696,
      special = true, -- note this could be a performance hit
      variant = "frost", -- kawase, acrylic, aurora, drops, fluid_jar, frost, haze, heat_shimmer, prism, ripple, water
    },
    shadow = {
      enabled = true,
      range = 4,
      render_power = 3,
      color = "rgba(1a1a1aee)",
    },
  },
  animations = {
    enabled = true,
    workspace_wraparound = true,
  },
  input = {
    kb_layout = "us,no",
    kb_options = "grp:win_space_toggle,compose:ralt",
  },
  misc = {
    force_default_wallpaper = 0,
    disable_hyprland_logo = true,
    enable_swallow = true,
    font_family = "CaskaydiaCove Nerd Font",
    session_lock_xray = true,
    session_lock_blur = true,
  },
  xwayland = {
    force_zero_scaling = true,
  },
  ecosystem = {
    no_donation_nag = true,
  },
})
