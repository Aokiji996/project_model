# >>> CUDA initialize >>>
export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# <<< CUDA initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/aokiji/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/aokiji/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/aokiji/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/aokiji/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# >>> fishros initialize >>>
 source /opt/ros/humble/setup.bash
# <<< fishros initialize <<<