#
# User configuration sourced by interactive shells
#

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd notify
unsetopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dwhite54/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.aliases
#autoload -Uz promptinit
#promptinit
#prompt adam1

export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python3.6/site-packages
export PATH=$PATH:/home/dwhite54/.local/bin
export PATH=$PATH:/usr/local/cuda/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.mujoco/mjpro150/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib
export LIBFREENECT2_PIPELINE="cuda"
alias watchme="watch -t -n 1 \"nvidia-smi | tail -n +4;ps -eo uname,pid,comm:40,%cpu,%mem,stime --sort=-%cpu| head -n 5; iostat | head -n 5 | tail -2; free -m; sensors | grep Package; w\""
export NITE2_INCLUDE=/home/dwhite54/workspace/nite2.2/NiTE-Linux-x64-2.2/Include
export NITE2_REDIST64=/home/dwhite54/workspace/nite2.2/NiTE-Linux-x64-2.2/Redist
# added by Anaconda3 installer
export PATH="/home/dwhite54/anaconda3/bin:$PATH"
export PYTHONPATH="${PYTHONPATH}:/opt/movidius/caffe/python"

# intel python3
export PATH="/opt/intel/intelpython3/bin:$PATH"

# cuda
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-9.0/lib64"
export PATH="$PATH:/usr/local/cuda-9.0/bin"

source ~/.aliases
