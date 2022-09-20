
# Source this script on centos7 before building ROOT

# alternatively one could use cmake=$(which cmake3) and run cmake with $cmake
cmake(){
	cmake3 "$@"
}
export -f cmake



# Setup binutils
BINUTILS_BASE=/cvmfs/sft.cern.ch/lcg/releases/binutils/2.30-e5b21/x86_64-centos7

export PATH=$BINUTILS_BASE/bin:$PATH
export MANPATH=$BINUTILS_BASE/share/man:$MANPATH

if [ -e "${BINUTILS_BASE}/lib64" ]; then
    export LD_LIBRARY_PATH="$BINUTILS_BASE/lib64${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
fi
if [ -e "${BINUTILS_BASE}/lib" ]; then
    # Add lib if exists
    export LD_LIBRARY_PATH="$BINUTILS_BASE/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
fi




# Setup gcc

GCC_BASE=/cvmfs/sft.cern.ch/lcg/releases/gcc/8.3.0-cebb0/x86_64-centos7

export PATH=$GCC_BASE/bin:$PATH
export MANPATH=$GCC_BASE/share/man:$MANPATH

if [ -e "${GCC_BASE}/lib64" ]; then
    export LD_LIBRARY_PATH="$GCC_BASE/lib64${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
fi
if [ -e "${GCC_BASE}/lib" ]; then
    # Add lib if exists
    export LD_LIBRARY_PATH="$GCC_BASE/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
fi

gcc_home=/cvmfs/sft.cern.ch/lcg/releases/gcc/8.3.0-cebb0/x86_64-centos7 

export FC=`which gfortran`
export CC=`which gcc`
export CXX=`which g++`

export COMPILER_PATH=${gcc_home}


