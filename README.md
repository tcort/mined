# mined

This is a portable version of the `mined` text editor from [Minix](http://minix3.org/).

## Quick Reference

### Cursor Motion

| Key      | Description                                    |
| -------- | ---------------------------------------------- |
| `arrows` | Move the cursor in the indicated direction     |
| `Ctrl-a` | Move cursor to start of current line           |
| `Ctrl-z` | Move cursor to end of current line             |
| `Ctrl-^` | Move cursor to top of screen                   |
| `Ctrl-_` | Move cursor to end of screen                   |
| `Ctrl-f` | Move cursor forward to start of next word      |
| `Ctrl-b` | Move cursor backward to start of previous word |

### Screen Motion

| Key      | Description                                             |
| -------- | ------------------------------------------------------- |
| `Home`   | Move to first character of the file                     |
| `End`    | Move to last character of the file                      |
| `PageUp` | Scroll window up 23 lines (closer to start of the file) |
| `PageDn` | Scroll window down 23 lines (closer to end of the file) |
| `Ctrl-u` | Scroll window up 1 line                                 |
| `Ctrl-d` |  Scroll window down 1 line                              |

### Modifying Text

| Key         | Description                                                     |
| ----------- | --------------------------------------------------------------- |
| `Delete`    | Delete the character under the cursor                           |
| `Backspace` | Delete the character to left of the cursor                      |
| `Ctrl-n`    | Delete the next word                                            |
| `Ctrl-p`    | Delete the previous word                                        |
| `Ctrl-t`    | Delete tail of line (all characters from cursor to end of line) |
| `Ctrl-o`    | Open up the line (insert line feed and back up)                 |
| `Ctrl-g`    | Get and insert a file at the cursor position                    |

### Buffer Operations

| Key      | Description                                                     |
| -------- | ----------------------------------------------------------------|
| `Ctrl-@` | Set mark at current position for use with `Ctrl-c` and `Ctrl-k` |
| `Ctrl-c` | Copy the text between the mark and the cursor into the buffer   |
| `Ctrl-k` | Delete text between mark and cursor; also copy it to the buffer |
| `Ctrl-y` | Yank contents of the buffer out and insert it at the cursor     |
| `Ctrl-q` | Write the contents of the buffer onto a file                    |

### Miscellaneous

| Key                     | Description                                               |
| ----------------------- | --------------------------------------------------------- |
| `Ctrl-h` or `numeric +` | Search forward (prompts for regular expression)           |
| `Ctrl-j` or `numeric -` | Search backward (prompts for regular expression)          |
| `Ctrl-i` or `numeric 5` | Display the file status                                   |
| `Ctrl-]`                | Go to specific line                                       |
| `Ctrl-r`                | Global replace pattern with string (from cursor to end)   |
| `Ctrl-l`                | Line replace pattern with string                          |
| `Ctrl-w`                | Write the edited file back to the disk                    |
| `Ctrl-x`                | Exit the editor                                           |
| `Ctrl-s`                | Fork off a shell (use `Ctrl-d` to get back to the editor) |
| `Ctrl-\`                | Abort whatever the editor was doing and wait for command  |
| `Ctrl-e`                | Erase screen and redraw it                                |
| `Ctrl-v`                | Visit (edit) a new file                                   |

### Regular Expressions

| Pattern    | Description                                                 |
| ---------- | ----------------------------------------------------------- |
| `c`        | Any displayable character matches itself                    |
| `.`        | (period) matches any character except line feed             |
| `^`        | (circumflex) matches the start of the line                  |
| `$`        | (dollar sign) matches the end of the line                   |
| `\c`       | matches the character c (including period, circumflex, etc) |
| `[string]` | matches any of the characters in the string                 |
| `[^string]`| matches any of the characters except those in the string    |
| `[x-y]`    | matches any characters between x and y (e.g., `[a-z]`).     |
| `Pattern*` | matches any number of occurrences of pattern                |

