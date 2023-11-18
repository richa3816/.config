import XMonad
import XMonad.Util.EZConfig (additionalKeysP)
import XMonad.Hooks.DynamicLog (xmobarProp)

myTerminal		= "kitty"
myModMask		= mod1Mask
myFocusFollowsMouse	:: Bool
myFocusFollowsMouse	= False
myClickJustFocuses	:: Bool
myClickJustFocuses	= True
myNormalBorderColor	= "#000000"
myFocusedBorderColor	= "#aaaaaa"
myLayout		= tiled ||| Full
  where
    tiled	= Tall nmaster delta ratio
    nmaster	= 1	-- Default number of windows in the master pane
    ratio	= 1/2	-- Default proportion of screen occupied by master pane
    delta	= 3/100	-- Percent of screent o increment by when resizing panes

main :: IO ()
main = xmonad $ xmobarProp $ def
  { terminal		= myTerminal
  , modMask		= myModMask
  , focusFollowsMouse	= myFocusFollowsMouse
  , clickJustFocuses	= myClickJustFocuses
  , normalBorderColor	= myNormalBorderColor
  , focusedBorderColor	= myFocusedBorderColor
  , layoutHook		= myLayout
  }
  `additionalKeysP`
    [ ("M-p", spawn "dmenu_run -fn 'FreeMono-11'")
    , ("<Print>", spawn "flameshot gui")
    ]
