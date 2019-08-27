# macros

Three files you actually need: 
- luamacros/LTT Code/SECOND_KEYBOARD_script_for_LUA_MACROS.lua > runs the lua script that makes all secondary keyboard commands press the fake "F24" key 
- luamacros/LTT Code/2nd_keyboard_if_using_luamacros.ahk > autohotkey script that listens for the F24 key and then remaps to keys you actually have on the second keyboard and then makes them hotkeys 
- luamacros/LTT Code/keypressed.txt > luamacros records which keys is pressed when the second keyboard is used. This is how the autohotkey script knows what key on the second keyboard was pressed to then map to a hotkey. 


Links and things: 

Copy wizard for solidworks shortcuts: https://forum.solidworks.com/thread/26548

Keycaps: http://www.maxkeyboard.com/products/cherry-mx-keycap/blank-keycap-singles/
http://www.wasdkeyboards.com/index.php/products/mechanical-keyboard/wasd-v3-104-key-custom-mechanical-keyboard.html

LTT Video: https://www.youtube.com/watch?v=Arn8ExQ2Gjg&t=

Change how keyboard ID is saved: https://github.com/TaranVH/2nd-keyboard/pull/6/files

(no idea how this works) Start lua script at startup: http://www.hidmacros.eu/forum/viewtopic.php?f=10&t=241#p807
