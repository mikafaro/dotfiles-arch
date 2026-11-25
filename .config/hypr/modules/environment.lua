-- Hyprland Environment Variables Module --

-- Default Programs

hl.env("TERMINAL", "ghostty")
hl.env("EDITOR", "nvim")

-- Mouse Cursor

hl.env("XCURSOR_THEME", "Vimix-cursors")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- NVidia Specific

hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

hl.env("AQ_DRM_DEVICES", "/dev/dri/card1:/dev/dri/card2") -- nvidia as main gpu

-- Other

hl.env("NVD_BACKEND", "direct") -- VA-API video acceleration
hl.env("MOZ_ENABLE_WAYLAND", "1") -- Needed for hiding FF UI on fullscreen
hl.env("GDK_WAYLAND_DISABLE", "ext_background_effect_manager_v1") -- blur handled by hyprland (ghostty blur needs this)
