# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
BGREEN='\[\033[1;32m\]'
GREEN='\[\033[0;32m\]'
BRED='\[\033[1;31m\]'
RED='\[\033[0;31m\]'
BBLUE='\[\033[1;34m\]'
BLUE='\[\033[0;34m\]'
NORMAL='\[\033[00m\]'
#PS1="${BRED}\@${BGREEN}|${BBLUE}\w${BGREEN}| ${RED}\$ ${NORMAL}"
PS1="${BRED}\h${BGREEN}|${BBLUE}\w${BGREEN}| ${RED}\$ ${NORMAL}"


#export https_proxy=http://192.168.3.50:3100/
#export http_proxy=http://192.168.3.50:3100/
#------background animation::
#xwinwrap -ni -argb -fs -s -st -sp -nf -b -- /usr/libexec/xscreensaver/molecule  -window-id WID &

test -s ~/.alias && . ~/.alias || true
#alias rm='rm -i'
alias ls='ls --color=tty'
alias icmp="sh /home/saurabh/.icmp"

#alias icmp="icc $1 $ilab"
alias s='ssh -X rabh@ipc81.mri.ernet.in'
alias s2='ssh -X rabh@ipc42.mri.ernet.in'
alias ur='unrar e'
alias l2='lpq -Pduplex2'
alias p='alpine -passfile /home/saurabh/.pine_pwd'
alias cl='ssh -X rabh@clpc00.mri.ernet.in'
alias e='evince'
alias go='gnome-open'
alias ko='kde-open'
alias k='kde-open'
alias gmail='elinks www.gmail.com'
alias g='g++  '
alias py='python'
alias me='ssh -X saurabh@siper.dhcp.hri'
alias matlab='/usr/local/MATLAB/R2010b/bin/./matlab'
alias mp='mplayer  http://91.121.60.128/     http://67.228.101.162:7800 http://67.228.101.162:8000 http://67.228.101.162:8200 http://67.228.101.162:8400 http://208.110.69.125:8056  http://91.121.203.133/ http://205.188.215.230:8024'
alias ipy='ipython --pylab'

    export CULA_ROOT="/usr/local/cula"
    export CULA_INC_PATH="$CULA_ROOT/include"
    export CULA_BIN_PATH_32="$CULA_ROOT/bin"
    export CULA_BIN_PATH_64="$CULA_ROOT/bin64"
    export CULA_LIB_PATH_32="$CULA_ROOT/lib"
    export CULA_LIB_PATH_64="$CULA_ROOT/lib64"

#-----------FFTW
#        export FFTW_INCLUDE_DIR="/usr/include"
#        export FFTW_LIBRARIES="/usr/lib64/libfftw3.so.3"
#        export HDF5_INCLUDE_DIR="/usr/include"
#        export HDF5_LIBRARIES="/usr/lib64/libhdf5.so"

#        export MPI_C_COMPILER="/usr/lib64/mpich2/bin/mpicc"
#        export MPI_CXX_COMPILER="/usr/lib64/mpich2/bin/mpicxx"
#        export MPI_C_INCLUDE_PATH="/usr/include/mpich2-x86_64"
#        export MPI_CXX_INCLUDE_PATH="/usr/include/mpich2-x86_64"
#        export MPI_C_LINK_FLAGS="-L/usr/lib64/mpich2/lib -L/usr/lib64/mpich2/lib"
#        export MPI_C_LIBRARIES="           -lmpich -lopa -lmpl -lrt -ldl -lpami -lSPI -lSPI_cnk -lpthread -lrt"
#        export MPI_CXX_LIBRARIES="-lcxxmpich -lmpich -lopa -lmpl -lrt -ldl -lpami -lSPI -lSPI_cnk -lpthread -lrt"

#        export MKL_INCLUDE_DIR="/opt/intel/composerxe/mkl/include"
#        export LAPACK_LIBRARY="/opt/intel/composerxe/mkl/lib/intel64"
#        export LAPACK_LIBS="/opt/intel/composerxe/mkl/lib/intel64/libmkl_core.so;/opt/intel/composerxe/mkl/lib/intel64/libmkl_intel_ilp64.so; /opt/intel/composerxe/mkl/lib/intel64/libmkl_sequential.so;/opt/intel/composerxe/mkl/lib/intel64/libmkl_gnu_thread.so"

export LD_LIBRARY_PATH=/usr/lib64/mpich2/lib:$LD_LIBRARY_PATH
export PYTHONSTARTUP=/home/saurabh/.pystartup
source /opt/intel/composer_xe_2013.0.079/bin/compilervars.sh intel64
#alias asy='asy --psviewer="/usr/bin/gv" --pdfviewer="/usr/bin/okular" '
