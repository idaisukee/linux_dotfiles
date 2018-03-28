from libqtile.command import lazy
from libqtile import layout, bar, widget, hook
try:
    from libqtile.manager import Key, Group
except ImportError:
    from libqtile.config import Key, Group

from libqtile.manager import Click, Drag, Screen

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

screens = [
    Screen(
        top = bar.Bar(
            [
                widget.GroupBox(fontsize=10),
                widget.Prompt(),
                widget.WindowName(),
                widget.Battery(
                    font='Consolas',fontsize=12, margin_x=6),
                widget.Sep(),
                widget.CPUGraph(),
                widget.MemoryGraph(),
                widget.Systray(),
                widget.Clock(format='%Y-%m-%dT%H:%M:%S+09:00', fontsize=12),
            ],
            25,
        ),
    ),
]
