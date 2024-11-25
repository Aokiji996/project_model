# >>> CUDA initialize >>>
export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# <<< CUDA initialize <<<

# >>> python initialize >>>
source venv/bin/activate
# <<< python initialize <<<

# >>> fishros initialize >>>
 source /opt/ros/humble/setup.bash
# <<< fishros initialize <<<


