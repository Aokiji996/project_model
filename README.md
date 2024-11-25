# project_model

A project model written by Aokiji996 for fast c, cpp, cuda and
python development with ROS2. It's designed for Clion IDE.

## Installation

```shell
git clone --recursive https://github.com/Aokiji996/project_model.git
```

For build config,

```shell
cmake -B build
```

For build, 

```shell
cmake --build build -j8 --target install
```

Set the python env,
```shell
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

If you want to use other python interpreter, set `PYTHON_EXECUTABLE` at `cmake/add_dependencys/add_env.cmake`

For debug on Ubuntu and some other Linux distributions: open the `/etc/sysctl.d/10-ptrace.conf` file for editing and change
the line `kernel.yama.ptrace_scope = 1` to `kernel.yama.ptrace_scope = 0`

## Release notes

### v0.0.1 

#### Features

- support the ros2 for easy data transportation.
- support the NVIDIA Isaac Transport for ROS (NITROS) for GPU memory.
- support the debug for python and cpp in mixed mode.

## TODO

- ROS2
- cpp-backward support
- NITROS 
