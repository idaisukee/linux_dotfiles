from libqtile.command import lazy
from libqtile import layout, bar, widget, hook
try:
    from libqtile.manager import Key, Group
except ImportError:
    from libqtile.config import Key, Group

from libqtile.manager import Click, Drag, Screen

import os

sup = "mod4"
keys = [
    Key([sup, "shift"], "e", lazy.spawn("emacs")),
    Key([sup, "shift"], "Return", lazy.spawn("sakura")),
    Key([sup], "F4", lazy.shutdown()),
    Key([sup], "F5", lazy.restart()),
    Key([sup], "F6", lazy.spawncmd()),
    Key([sup], "Left", lazy.group.prevgroup()),
    Key([sup], "Right", lazy.group.nextgroup()),
    Key( [sup], "space", lazy.layout.next()),
    Key( [sup], "q", lazy.layout.down()),
    Key( [sup], "j", lazy.layout.up()),

]

def query():
    result = os.popen("ruby /home/ieremius/prd/src/rdatetime/display_5.rb").read()
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
                widget.Prompt(),
                widget.TaskList(highlight_method='border', borderwidth=1, border=deep_orange, rounded=False),
                widget.CPUGraph(width=40, graph_color=light_blue, border_color='000000'),
                widget.MemoryGraph(width=40, graph_color=deep_blue, border_color='000000'),
                widget.Clipboard(width=100),
                widget.Systray(),
                widget.Battery(
                    font='Consolas',fontsize=12, margin_x=20),
                widget.Sep(),
                widget.GenPollText(func=query, update_interval=0.8),
                widget.Clock(format='%Y-%m-%dT%H:%M:%S+09:00', fontsize=12),
            ],
            25,
        ),
    ),
]
