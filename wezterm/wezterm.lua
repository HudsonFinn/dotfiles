local wezterm 	= require('wezterm')
local act	= wezterm.action
local mux 	= wezterm.mux

local config = wezterm.config_builder()

-- ------------------------------------
-- Visual config
-- ------------------------------------

config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = true
config.tab_max_width = 32
config.color_scheme = 'catppuccin-frappe'
config.window_background_opacity = 0.85
config.font = wezterm.font('Monaspace Neon')


-- ------------------------------------
-- Keybind config
-- ------------------------------------

-- Set leader to CTRL+a
config.leader = {
	key = 'a',
	mods = 'CTRL',
	timeout_milliseconds = 2000,
}

-- Set copy mode to <LEADER>[
config.keys = {
    {
	key = '[',
	mods = 'LEADER',
	action = wezterm.action.ActivateCopyMode,
    },
}


config.keys = {
  -- ------------------------------------
  -- Tab config
  -- ------------------------------------
  -- Show tab navigator; similar to listing panes in tmux
  {
    key = 'w',
    mods = 'LEADER',
    action = act.ShowTabNavigator,
  },
  -- Create new tab
  {
    key = 'c',
    mods = 'LEADER',
    action = act.SpawnTab 'CurrentPaneDomain',
  },
  -- Navigate between relative tabs
  {
    key = 'n',
    mods = 'LEADER',
    action = wezterm.action.ActivateTabRelative(1),
  },
  {
    key = 'p',
    mods = 'LEADER',
    action = wezterm.action.ActivateTabRelative(-1),
  },
  -- Rename tab
  {
    key = ',',
    mods = 'LEADER',
    action = act.PromptInputLine {
        description = 'Enter new name for tab',
        action = wezterm.action_callback(
    	function(window, pane, line)
    	    if line then
    		window:active_tab():set_title(line)
    	    end
    	end
        ),
      },
    },

  -- ------------------------------------
  -- Pane config
  -- ------------------------------------
  -- -- Vertical split
  {
        -- |
        key = '|',
        mods = 'LEADER|SHIFT',
        action = act.SplitPane {
            direction = 'Right',
            size = { Percent = 50 },
        },
    },
    -- Horizontal split
    {
        -- -
        key = '-',
        mods = 'LEADER',
        action = act.SplitPane {
            direction = 'Down',
            size = { Percent = 50 },
        },
    },
    -- CTRL + (h,j,k,l) to move between panes
    {
        key = 'h',
        mods = 'CTRL',
        action = act({ EmitEvent = "move-left" }),
    },
    {
        key = 'j',
        mods = 'CTRL',
        action = act({ EmitEvent = "move-down" }),
    },
    {
        key = 'k',
        mods = 'CTRL',
        action = act({ EmitEvent = "move-up" }),
    },
    {
        key = 'l',
        mods = 'CTRL',
        action = act({ EmitEvent = "move-right" }),
    },

}


return config
