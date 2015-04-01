TARGET=~/OS-161-Scripts
[[ $# > 0 ]] && TARGET=$*
git clone https://github.com/xcv58/OS-161-Scripts.git ${TARGET}
cd ${TARGET}
make
