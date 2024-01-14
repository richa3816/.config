import XMonad
import XMonad.Util.EZConfig (additionalKeysP)
import XMonad.Hooks.DynamicLog (xmobarProp)
import XMonad.Layout.NoBorders
import XMonad.Hooks.ManageDocks
import XMonad.Layout.Spacing

myTerminal		= "kitty"
myModMask		= mod4Mask
myFocusFollowsMouse	:: Bool
myFocusFollowsMouse	= False
myClickJustFocuses	:: Bool
myClickJustFocuses	= True
myNormalBorderColor	= "#333333"
myFocusedBorderColor	= "#FFFFFF"
myLayout		= smartBorders
			  $ avoidStruts
			  $ spacingRaw False (Border 20 0 20 0) False (Border 0 20 0 20) False
			  $ tiled ||| Full
			  where
			    tiled	= Tall nmaster delta ratio
			    nmaster	= 1	-- Default number of windows in the master pane
			    ratio	= 1/2	-- Default proportion of screen occupied by master pane
			    delta	= 3/100	-- Percent of screen to increment by when resizing panes

main :: IO ()
main = xmonad $ xmobarProp $ docks def
  { terminal		= myTerminal
  , modMask		= myModMask
  , focusFollowsMouse	= myFocusFollowsMouse
  , clickJustFocuses	= myClickJustFocuses
  , normalBorderColor	= myNormalBorderColor
  , focusedBorderColor	= myFocusedBorderColor
  , layoutHook		= myLayout
  }
  `additionalKeysP`
    [ ("M-p", spawn "dmenu_run -fn 'FreeMono-11' -nb '#000000' -nf '#777777' -sb '#000000' -sf '#FFFFFF'")
    , ("<Print>", spawn "flameshot gui")
    , ("M-S-g", sequence_ [toggleScreenSpacingEnabled, toggleWindowSpacingEnabled])
    ]
