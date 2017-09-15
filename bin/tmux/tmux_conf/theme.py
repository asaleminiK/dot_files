import os

# options: "dark" or "light"
COLORSCHEME = "light"

# tmux shit

name = os.popen("tmux ls | awk -F':' '{print $1}'").read()

lighttheme = {
        'pane-border-fg' 		: 'colour239',
        'pane-border-bg' 		: 'colour248',
        'pane-active-border-fg'		: 'colour247',
        'window-style'			: 'bg=colour248, fg=colour234',
        'status-bg'			: 'colour252',
        'status-fg'			: 'colour232',
        'message-fg'			: 'colour233',
        'message-bg'			: 'colour242',
        'mode-bg'			: 'colour06',

        'status-right'			: '#[fg=colour235,bg=colour250,bold] %d/%d/%m/%y',
        'window-status-current-format'	: '#[fg=colour233]#[bg=colour015] #I #W ',
        'window-status-format'		: '#[fg=colour233]#[bg=colour253] #I #W ',
        }

darktheme = {
        'pane-border-fg' 		: 'colour238',
        'pane-border-bg' 		: 'colour236',
        'pane-active-border-fg'		: 'colour237',
        'window-style'			: 'bg=colour236, fg=colour255',
        'status-bg'			: 'colour243',
        'status-fg'			: 'colour232',
        'message-fg'			: 'colour233',
        'message-bg'			: 'colour242',
        'mode-bg'			: 'colour06',

        'status-right'			: '#[fg=colour233,bg=colour242,bold] %d/%d/%m/%y',
        'window-status-current-format'	: '#[fg=colour000]#[bg=colour251] #I #W ',
        'window-status-format'		: '#[fg=colour000]#[bg=colour245] #I #W ',
        }

if COLORSCHEME == "dark":
    dicc = darktheme
elif COLORSCHEME == "light":
    dicc = lighttheme

for key in dicc.keys():
    os.system('''tmux set-option -g -t "''' + name.rstrip() + '" \'' +key + '\' \'' + dicc[key] + '\' ')


