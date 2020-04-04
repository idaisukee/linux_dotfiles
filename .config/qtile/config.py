from libqtile.command import lazy
from libqtile import layout, bar, widget, hook
try:
    from libqtile.manager import Key, Group
except ImportError:
    from libqtile.config import Key, Group

from libqtile.manager import Click, Drag, Screen
from libqtile.config import Group, Match

import os

sup = "mod4"
keys = [
    Key([sup, "shift"], "e", lazy.spawn("emacs")),
    Key([sup, "shift"], "f", lazy.spawn("firefox")),
    Key([sup, "shift"], "Return", lazy.spawn("sakura")),
    Key([sup], "F1", lazy.spawn("sakura -x byobu")),
    Key([sup], "F2", lazy.spawn("sakura")),
    Key([sup], "F4", lazy.shutdown()),
    Key([sup], "F5", lazy.restart()),
    Key([sup], "F6", lazy.spawncmd()),
    Key( [sup], "space", lazy.layout.next()),
    Key([sup], "semicolon", lazy.window.kill()),
    Key( [sup], "q", lazy.layout.down()),
    Key( [sup], "j", lazy.layout.up()),
    Key([sup, "shift"], "q", lazy.screen.prev_group()),
    Key([sup, "shift"], "j", lazy.screen.next_group()),
]

def query():
    result = os.popen("cd /home/ieremius/prd/src/rdatetime; ruby display_5.rb").read()
    return result

def query1():
    result = os.popen("cd /home/ieremius/prd/src/Minatohasi.rb/bin; ruby now_5_5.rb").read()
    return result

def battery():
    result = os.popen("upower -d | grep percentage | head -1 | awk 'END {print $2}'").read().strip()
    return result

# from http://www.color-hex.com/color-palette/19117

deep_blue = '69d2e7'
light_blue = 'a7dbd8'
middle = 'e0e4cc'
light_orange = 'f38630'
deep_orange = 'fa6901'

screens = [
    Screen(
        top = bar.Bar(
            [
                widget.Prompt(background=middle, foreground='0'*6, prompt='> '),
                widget.TaskList(highlight_method='border', borderwidth=1, border=deep_orange, rounded=False, max_title_width=75),
                widget.CPUGraph(width=40, graph_color=light_blue, border_color='000000'),
                widget.MemoryGraph(width=40, graph_color=deep_blue, border_color='000000'),
                widget.Clipboard(width=100, background=light_orange, foreground='000000'),
                widget.Systray(background=None),
                widget.GenPollText(func=battery, update_interval=20, foreground=light_orange),
                widget.Battery(
                    font='Consolas',fontsize=12, margin_x=20, foreground=deep_blue, charge_char='↑', discharge_char='↓', update_delay=30),
                widget.Sep(),
                widget.GenPollText(func=query1, update_interval=0.8, foreground=deep_blue),
                widget.GenPollText(func=query, update_interval=0.8, foreground=light_orange),
                widget.Clock(format='%Y-%m-%dT%H:%M:%S+09:00', fontsize=12, foreground=light_blue),
            ],
            25,
        ),
    ),
]

groups = [
    Group("1", matches=[Match(wm_class=["Sakura"])]),
    Group("2", matches=[Match(wm_class=["Emacs"])]),
    Group("3", matches=[Match(wm_class=["Firefox"])]),
    Group("4", matches=[Match(wm_class=["Code"])]),
    Group("5", matches=[Match(wm_class=["jumpfm"])]),
    Group("6"),
    Group("7"),
    Group("8"),
    Group("9"),
]
for i in groups:
    keys.append(
        Key([sup], i.name, lazy.group[i.name].toscreen())
    )
    keys.append(
        Key([sup, "shift"], i.name, lazy.window.togroup(i.name))
    )
