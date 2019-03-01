## packages

# ubuntu
#  sudo apt install git python3-pip gawk texinfo libgmp-dev libmpfr-dev libmpc-dev swig3.0 libjpeg-dev lsb-core doxygen python-sphinx sox graphicsmagick-libmagick-dev-compat libsdl2-dev libswitch-perl libftdi1-dev cmake scons

# fedora
#sudo dnf install python3-devel python3-devel.x86_64 python3-devel.i686 git python34-pip python34-devel gawk texinfo gmp-devel mpfr-devel libmpc-devel swig libjpeg-turbo-devel redhat-lsb-core doxygen python-sphinx sox GraphicsMagick-devel ImageMagick-devel SDL2-devel perl-Switch libftdi-devel cmake scons gmp-devel mpfr mpc swig libjpeg redhat-lsb-core ImageMagick-devel SDL2-devel perl-Switch libftdi
#sudo rm /usr/bin/python && sudo ln -s /usr/bin/python2.7 /usr/bin/python
#sudo /usr/bin/python2.7 -m pip install configparser
#sudo /usr/bin/python3 -m pip install prettytable
# sudo yum install python-yaml
# source configs/pulp.sh && ./scripts/clean && ./scripts/update-runtime && ./scripts/build-runtime (VER README)
# sudo aptitude install python3-yaml

## Config SDK
export MY_PULP_ROOT=/media/gvillanova/DATA/Github/hw/socs/pulp
export PULP_RISCV_GCC_TOOLCHAIN=$MY_PULP_ROOT/pulp-riscv-gnu-toolchain
export VSIM_PATH=$MY_PULP_ROOT/pulp/sim
export PULP_SDK_HOME=$MY_PULP_ROOT/pulp-sdk

## Toolchain
export PATH=$PATH:$PULP_RISCV_GCC_TOOLCHAIN/bin

## ModelSim 
export PATH=$PATH:/home/gvillanova/Tools/quartusmodelsim/modelsim_ase/linuxaloem
export PATH=$PATH:/home/gvillanova/Tools/quartusmodelsim/modelsim_ase/bin
