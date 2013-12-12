
export PWD_BUFFER=$PWD
export DYLD_LIBRARY_PATH=
export LD_LIBRARY_PATH= 
# MacPort needs
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# geeknote
alias geeknote='python /usr/local/geeknote/geeknote.py'

# Personal alias
alias su='sudo su'
alias ls='ls -G'
function opencode() { open "$@"*.cxx "$@"*.h;}
function opencodeg() { open include/*.hh src/*.cc;}

function ganil_tunnel(){
ssh -f -L 2022:ganp168:22 matta@gansas.ganil.fr -N
}

function ganil_e628(){
ssh -l e628 -p 2022 localhost 
}

function ganil_e644(){
ssh -l e644 -p 2022 localhost 
}
# ROOT needs
source /usr/local/root.5.34.12/bin/thisroot.sh
#export ROOTSYS=/usr/local/root.5.34.10_install
#export PATH=$PATH:$ROOTSYS/bin
#export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$ROOTSYS/lib
alias root='root -l'

# GEANT4 Needs
export QTHOME=/opt/local
source /usr/local/geant4.9.6.p02_install/share/Geant4-9.6.2/geant4make/geant4make.sh
export G4VRMLFILE_MAX_FILE_NUM=1
#export G4VRMLFILE_VIEWER=freewrl

#export G4INSTALL=/usr/local/geant4.9.5.p01-install/
#export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$G4INSTALL/lib


# NPTool Needs
export NPTOOL=/Users/adrienmatta/Desktop/nptool
#export NPTOOL=/Users/adrienmatta/Desktop/NPTool.rrc66
#export NPTOOL=/Users/adrienmatta/Desktop/NPTool.dev.prerelease.mtn

export NPLIB=$NPTOOL/NPLib
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$NPTOOL/NPLib/lib

# NPTool alias
alias Simulation='$NPTOOL/NPSimulation/bin/$G4SYSTEM/Simulation'
alias Analysis='$NPANA/Analysis'

alias NPT='cd $NPTOOL'
alias NPL='cd $NPTOOL/NPLib'
alias NPS='cd $NPTOOL/NPSimulation'
alias NPA='cd $NPTOOL/NPAnalysis'

# easy DWBA needs
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:~/Desktop/easyDWBA

# DWBA alias
#alias fresco=/Users/adrienmatta/Dropbox/DWBA/FRESCO/fresco
export PATH=$PATH:/Users/adrienmatta/Dropbox/DWBA/FRESCO/
export PATH=$PATH:/Users/adrienmatta/Desktop/DWUCK5/

# Mount the Data folder from Surrey Staff01 server:
export SURREY_DATA=~/Remote/Data_UOS
alias SurreyData='sshfs -oauto_cache,reconnect,defer_permissions,negative_vncache,rw,sshfs_sync,no_readahead,allow_other staff01:/user/phstf/am0067/Data $SURREY_DATA'
alias UnmountSurreyData='umount $SURREY_DATA'

# Unpacker Needs
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:~/Desktop/S1107/Unpacker++/UpCore
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:~/Desktop/S1107/Unpacker++/ExtLib


#enables color in the terminal bash shell export
CLICOLOR=1
#sets up the color scheme for list export
LSCOLORS=gxfxcxdxbxegedabagacad
#sets up the prompt color (currently a green similar to linux terminal)
export PS1='\[\033[01;36m\]\w\[\033[00m\]\$ '
#enables color for iTerm
export TERM=xterm-color
#sets up proper alias commands when called
alias ls='ls -G'
alias ll='ls -hl'

# return to the original path
cd $PWD_BUFFER

# start a TMux session
if [[ ! $TMUX ]]; then
  tmux -2
  export TERM=xterm-256color
fi

# MacPorts Installer addition on 2013-10-26_at_18:23:21: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#GRU
source ~/Desktop/GANIL/GRU/thisgru.sh

#export GRUDIR=~/Desktop/GANIL/GRU
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$GRUDIR/lib
#export PATH=$GRUDIR/bin:$PATH


#GANIL2ROOT
export GANIL2ROOT=~/Desktop/GANIL/Ganil2Root
export LD_LIBRARY_PATH=$GANIL2ROOT/libs:$LD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$GANIL2ROOT/libs 
