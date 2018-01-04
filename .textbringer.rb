# coding: utf-8
define_command(:test) {
  insert("テストコマンドを実行しました")
  Utils::message("ミニバッファです")
}

define_command(:fizzbuzz,
               doc: "Do FizzBuzz from 1 to n.") do
  |n = number_prefix_arg|
  (1..n).each do |i|
    insert ["Fizz"][i%3]
    insert ["Buzz"][i%5]
    insert i if beginning_of_line?
    newline
  end
end

def ikbd(str)
	str.gsub('M-', "\e")
end

GLOBAL_MAP.define_key(?\C-a, :beginning_of_line)
GLOBAL_MAP.define_key(?\C-u, :end_of_line)
GLOBAL_MAP.define_key(?\C-e, :scroll_down)
GLOBAL_MAP.define_key(?\C-o, :scroll_up)


GLOBAL_MAP.define_key(?\C-d, :backward_char)
GLOBAL_MAP.define_key(?\C-t, :previous_line)
GLOBAL_MAP.define_key(?\C-h, :next_line)
GLOBAL_MAP.define_key(?\C-n, :forward_char)

GLOBAL_MAP.define_key(?\C-r, :delete_char)
GLOBAL_MAP.define_key("\C-b", :backward_delete_char)

GLOBAL_MAP.define_key(ikbd('M-m'), :switch_to_buffer)
GLOBAL_MAP.define_key(ikbd('M-\''), :execute_command)
GLOBAL_MAP.define_key(ikbd('M-s'), :save_buffer)
GLOBAL_MAP.define_key(ikbd('M-w'), :exit_textbringer)

window =
  Textbringer::Window.new(Window.lines - 1, Window.columns, 0, 0)

buffer = Buffer.new_buffer('hello')
Buffer.current = buffer

Window.current.buffer = buffer

buffer.insert('str' + "\n")

def set_mode_line
	Face.define :mode_line, reverse: false, background: Color[rand(255)], foreground: Color[rand(255)]
	Face.define :ff, reverse: false, background: Color[rand(255)], foreground: Color[rand(255)], underline: true
	Face.define :fff, reverse: false, background: Color[rand(255)], foreground: Color[rand(255)], underline: true
end

def set_white_space
	Face.define :ff, reverse: false, foreground: Color[rand(255)], underline: true
	Face.define :fff, reverse: false, foreground: Color[rand(255)], underline: true
end

class RubyMode
	define_syntax :ff, / /
	define_syntax :fff, /\t/
end
p Window.current
set_mode_line

module Commands
  define_command(:set_mode_line,
                 doc: "Move point n characters forward.") do
    |n = number_prefix_arg|
    set_mode_line
  end
end

GLOBAL_MAP.define_key(ikbd('M-g'), :set_mode_line)
GLOBAL_MAP.define_key(ikbd('M-G'), :set_white_space)
