#!/bin/bash

echo "Updating miners for nvOC V0019-2.x"
echo "Stopping miner and watchdog to reduce errors"
pkill -f 5watcdog
pkill -e screen
sleep 1

echo ""
export NVOC_MINERS=$(pwd)

echo "Checking Equihash DSTM zm miner 0.6.1"
if [ ! $(cat ${NVOC_MINERS}/dstm/latest/version | grep 0.6.1) ]
then
  echo "Extracting DSTM zm miner"
  mkdir -p ${NVOC_MINERS}/dstm/latest/
  cat ${NVOC_MINERS}/dstm/DSTM_0.6.1.tar.xz | tar -xJC ${NVOC_MINERS}/dstm/latest/ --strip 1
  chmod a+x ${NVOC_MINERS}/dstm/latest/zm_miner
else
  echo "DSTM zm miner is already up-to-date"
fi

echo ""

echo "Checking Z-Enemy 1.10"
if [ ! $(cat  ${NVOC_MINERS}/ZENEMYminer/version | grep 1.10) ]
then
  echo "Extracting z-enemy"
  mkdir -p ${NVOC_MINERS}/ZENEMYminer
  cat ${NVOC_MINERS}/ZENEMYminer/z-enemy-1.10-cuda80.tar.xz | tar -xJC ${NVOC_MINERS}/ZENEMYminer/ --strip 1
  chmod a+x ${NVOC_MINERS}/ZENEMYminer/ccminer
else
  echo "z-enemy is already up-to-date"
fi

echo ""

echo "Checking xmr-stak 2.4.4"
if [ ! $(cat  ${NVOC_MINERS}/xmr-stak/version | grep 2.4.4) ]
then
  echo "Extracting xmr-stak"
  mkdir -p ${NVOC_MINERS}/xmr-stak
  cat ${NVOC_MINERS}/xmr-stak/xmr-stak-2.4.4.tar.xz | tar -xJC ${NVOC_MINERS}/xmr-stak/ --strip 1
  chmod a+x ${NVOC_MINERS}/xmr-stak/xmr-stak_miner
else
  echo "xmr-stak is already up-to-date"
fi

echo ""

echo "Checking Silent Miner 1.1.0"
if [ ! $(cat  ${NVOC_MINERS}/SILENTminer/version | grep 1.1.0) ]
then
  echo "Extracting Silent Miner"
  mkdir -p ${NVOC_MINERS}/SILENTminer
  cat ${NVOC_MINERS}/SILENTminer/SILENTminer.v1.1.0.tar.xz | tar -xJC ${NVOC_MINERS}/SILENTminer/ --strip 1
  chmod a+x ${NVOC_MINERS}/SILENTminer/ccminer
else
  echo "Silent Miner is already up-to-date"
fi

echo""

echo "Checking Claymore v11.8"
if [ ! $(cat ${NVOC_MINERS}/claymore/latest/version | grep 11.8) ]
then
  echo "Extracting Claymore"
  mkdir -p ${NVOC_MINERS}/claymore/latest/
  cat ${NVOC_MINERS}/claymore/Claymore-v11.8.tar.xz | tar -xJC ${NVOC_MINERS}/claymore/latest/ --strip 1
  chmod a+x ${NVOC_MINERS}/claymore/latest/ethdcrminer64
else
  echo "Claymore is already up-to-date"
fi

echo""

echo "Checking SP Mod ccminer-1.8.2"
if [ ! $(cat ${NVOC_MINERS}/SPccminer/version | grep 1.8.2) ]
then
  echo "Extracting SPccminer"
  mkdir -p ${NVOC_MINERS}/SPccminer/
  cat ${NVOC_MINERS}/SPccminer/SPccminer.tar.xz | tar -xJC ${NVOC_MINERS}/SPccminer/ --strip 1
  chmod a+x ${NVOC_MINERS}/SPccminer/ccminer
else
  echo "SPccminer is already up-to-date"
fi

echo""

echo "Checking alexis ccminer"
if [ ! $(cat ${NVOC_MINERS}/ASccminer/version | grep 1.0) ]
then
  echo "Extracting ASccminer"
  mkdir -p ${NVOC_MINERS}/ASccminer/
  cat ${NVOC_MINERS}/ASccminer/ASccminer.tar.xz | tar -xJC ${NVOC_MINERS}/ASccminer/ --strip 1
  chmod a+x ${NVOC_MINERS}/ASccminer/ccminer
else
  echo "ASccminer is already up-to-date"
fi

echo""

echo "Checking Krnlx ccminer"
if [ ! $(cat ${NVOC_MINERS}/KXccminer/version | grep skunk-krnlx) ]
then
  echo "Extracting KXccminer"
  mkdir -p ${NVOC_MINERS}/KXccminer/
  cat ${NVOC_MINERS}/KXccminer/KXccminer.tar.xz | tar -xJC ${NVOC_MINERS}/KXccminer/ --strip 1
  chmod a+x ${NVOC_MINERS}/KXccminer/ccminer
else
  echo "KXccminer is already up-to-date"
fi

echo""

echo "Checking Tpruvot ccminer-2.2.5"
if [ ! $(cat ${NVOC_MINERS}/TPccminer/version | grep 2.2.5) ]
then
  echo "Extracting Tpruvot"
  mkdir -p ${NVOC_MINERS}/TPccminer/
  cat ${NVOC_MINERS}/TPccminer/TPccminer.tar.xz | tar -xJC ${NVOC_MINERS}/TPccminer/ --strip 1
  chmod a+x ${NVOC_MINERS}/TPccminer/ccminer
else
  echo "Tpruvot ccminer is already up-to-date"
fi

echo""

echo "Checking KlausT ccminer 8.20"
if [ ! $( cat ${NVOC_MINERS}/KTccminer/version | grep 8.20) ]
then
  echo "Extracting Klaust ccminer"
  mkdir -p ${NVOC_MINERS}/KTccminer/
  cat ${NVOC_MINERS}/KTccminer/KTccminer.tar.xz | tar -xJC ${NVOC_MINERS}/KTccminer/ --strip 1
  chmod a+x ${NVOC_MINERS}/KTccminer/ccminer
else
  echo "KlausT ccminer is already up-to-date"
fi

echo""

echo "Checking Vertminer v1.0-stable.2 Release"
if [ ! $( cat ${NVOC_MINERS}/vertminer/version | grep 1.0.2 ) ]
then
  echo "Extracting vertminer"
  mkdir -p ${NVOC_MINERS}/vertminer/
  cat ${NVOC_MINERS}/vertminer/vertminer-nvidia-1.0-stable.2.tar.xz | tar -xJC ${NVOC_MINERS}/vertminer/ --strip 1
  chmod a+x ${NVOC_MINERS}/vertminer/vertminer
else
  echo "Vertminer is already up-to-date"
fi

echo""

echo "Checking nanashi-ccminer-2.2-mod-r2"
if [ ! $(cat ${NVOC_MINERS}/NAccminer/version | grep 2.2-mod-r2 ) ]
then
  echo "Extracting nanashi ccminer"
  mkdir -p ${NVOC_MINERS}/NAccminer/
  cat ${NVOC_MINERS}/NAccminer/nanashi-ccminer-2.2-mod-r2.tar.xz | tar -xJC ${NVOC_MINERS}/NAccminer/ --strip 1
  chmod a+x ${NVOC_MINERS}/NAccminer/ccminer
else
  echo "nanashi-ccminer is already up-to-date"
fi

echo""

echo "Checking Ethminer 0.14.0"
if [ ! $(cat ${NVOC_MINERS}/ethminer/latest/version | grep 0.14.0) ]
then
  mkdir -p ${NVOC_MINERS}/ethminer/0.14.0/
  cd ${NVOC_MINERS}/ethminer
  if [[ -L "latest" && -d "latest" ]]
  then
    rm latest
  else
    rm -rf latest
  fi
  ln -s "${NVOC_MINERS}/ethminer/0.14.0" latest
  echo "Extracting and making changes for Ethminer"
  cat ${NVOC_MINERS}/ethminer/ethminer-0.14.0-Linux.tar.xz | tar -xJC ${NVOC_MINERS}/ethminer/latest/ --strip 1
  chmod a+x  ${NVOC_MINERS}/ethminer/latest/ethminer
else
  echo "ethminer is already up-to-date"
fi

echo""

echo "Checking KTccminer-cryptonight v2.06"
if [ ! $( cat ${NVOC_MINERS}/KTccminer-cryptonight/version | grep 2.06) ]
then
  echo "Extracting KTccminer-cryptonight"
  mkdir -p ${NVOC_MINERS}/KTccminer-cryptonight/
  cat ${NVOC_MINERS}/KTccminer-cryptonight/KTccminer-cryptonight.tar.xz | tar -xJC ${NVOC_MINERS}/KTccminer-cryptonight/ --strip 1
  chmod a+x ${NVOC_MINERS}/KTccminer-cryptonight/ccminer
else
  echo "KTccminer-cryptonight is already up-to-date"
fi

echo""

echo "Checking Equihash Bminer 8.0.0"
if [ ! $(cat ${NVOC_MINERS}/bminer/latest/version | grep 8.0.0) ]
then
  echo "Extracting Bminer"
  mkdir -p ${NVOC_MINERS}/bminer/latest/
  cat ${NVOC_MINERS}/bminer/bminer-v8.0.0.tar.xz | tar -xJC ${NVOC_MINERS}/bminer/latest/ --strip 1
  chmod a+x ${NVOC_MINERS}/bminer/latest/bminer
else
  echo "Bminer is already up-to-date"
fi

echo""

echo "Checking ANXccminer (git@cd6fab68823e247bb84dd1fa0448d5f75ec4917d)"
if [ ! $(cat ${NVOC_MINERS}/ANXccminer/version | grep cd6fab68823e247bb84dd1fa0448d5f75ec4917d) ]
then
  echo "Extracting ANXccminer"
  mkdir -p ${NVOC_MINERS}/ANXccminer/
  cat ${NVOC_MINERS}/ANXccminer/ANXccminer.tar.xz | tar -xJC ${NVOC_MINERS}/ANXccminer/ --strip 1
  chmod a+x ${NVOC_MINERS}/ANXccminer/ccminer
else
  echo "ANXccminer is already at up-to-date"
fi

echo""

echo "Checking MSFT Tpruvot ccminer-2.2.5 (RVN)"
if [ ! $(cat ${NVOC_MINERS}/MSFTccminer/version | grep 2.2.5-rvn) ]
then
  echo "Extracting MSFT Tpruvot ccminer"
  mkdir -p ${NVOC_MINERS}/MSFTccminer/
  cat ${NVOC_MINERS}/MSFTccminer/MSFTccminer.tar.xz | tar -xJC ${NVOC_MINERS}/MSFTccminer/ --strip 1
  chmod a+x ${NVOC_MINERS}/MSFTccminer/ccminer
else
  echo "MSFTccminer is already up-to-date"
fi

echo""
echo""
echo "Extracting and checking new miners for nvOC-v0019-2.x finished"
echo""
echo""
sleep 2

function compile-ASccminer {
          echo "Compiling alexis ccminer"
          echo "This could take a while ..."
          git submodule update --init --depth 1 ${NVOC_MINERS}/ASccminer
          cd ${NVOC_MINERS}/ASccminer/src
          bash ${NVOC_MINERS}/ASccminer/src/autogen.sh
          bash ${NVOC_MINERS}/ASccminer/src/configure
          bash ${NVOC_MINERS}/ASccminer/src/build.sh
          cp ${NVOC_MINERS}/ASccminer/src/ccminer ${NVOC_MINERS}/ASccminer/ccminer
          cd ${NVOC_MINERS}
          echo "Finished compiling alexis ccminer"
}

function compile-KTccminer {
          echo "Compiling KlausT ccminer"
          echo " This could take a while ..."
          git submodule update --init --depth 1 ${NVOC_MINERS}/KTccminer
          cd ${NVOC_MINERS}/KTccminer/src
          bash ${NVOC_MINERS}/KTccminer/src/autogen.sh
          bash ${NVOC_MINERS}/KTccminer/src/configure
          bash ${NVOC_MINERS}/KTccminer/src/build.sh
          cp ${NVOC_MINERS}/KTccminer/src/ccminer ${NVOC_MINERS}/KTccminer/ccminer
          cd ${NVOC_MINERS}
          echo ""
          echo "Finished compiling KlausT ccminer"
}

function compile-KTccminer-cryptonight {
          echo "Compiling KlausT ccminer cryptonight"
          echo " This could take a while ..."
          git submodule update --init --depth 1 ${NVOC_MINERS}/KTccminer-cryptonight
          cd ${NVOC_MINERS}/KTccminer-cryptonight/src
          bash ${NVOC_MINERS}/KTccminer-cryptonight/src/autogen.sh
          bash ${NVOC_MINERS}/KTccminer-cryptonight/src/configure
          bash ${NVOC_MINERS}/KTccminer-cryptonight/src/build.sh
          cp ${NVOC_MINERS}/KTccminer-cryptonight/src/ccminer ${NVOC_MINERS}/KTccminer-cryptonight/ccminer
          cd ${NVOC_MINERS}
          echo ""
          echo "Finished compiling KlausT ccminer cryptonight"
}

function compile-KXccminer {
          echo "Compiling krnlx ccminer"
          echo " This could take a while ..."
          git submodule update --init --depth 1 ${NVOC_MINERS}/KXccminer
          cd ${NVOC_MINERS}/KXccminer/src
          bash ${NVOC_MINERS}/KXccminer/src/autogen.sh
          bash ${NVOC_MINERS}/KXccminer/src/configure
          bash ${NVOC_MINERS}/KXccminer/src/build.sh
          cp ${NVOC_MINERS}/KXccminer/src/ccminer ${NVOC_MINERS}/KXccminer/ccminer
          cd ${NVOC_MINERS}
          echo ""
          echo "Finished compiling Krnlx ccminer"
}

function compile-NAccminer {
          echo "Compiling Nanashi ccminer"
          echo " This could take a while ..."
          git submodule update --init --depth 1 ${NVOC_MINERS}/NAccminer
          cd ${NVOC_MINERS}/NAccminer/src
          bash ${NVOC_MINERS}/NAccminer/src/autogen.sh
          bash ${NVOC_MINERS}/NAccminer/src/configure
          bash ${NVOC_MINERS}/NAccminer/src/build.sh
          cp ${NVOC_MINERS}/NAccminer/src/ccminer ${NVOC_MINERS}/NAccminer/ccminer
          cd ${NVOC_MINERS}
          echo ""
          echo "Finished compiling Nanashi ccminer"
}

function compile-SPccminer {
          echo "Compiling SPccminer"
          echo " This could take a while ..."
          git submodule update --init --depth 1 ${NVOC_MINERS}/SPccminer
          cd ${NVOC_MINERS}/SPccminer/src
          bash ${NVOC_MINERS}/SPccminer/src/autogen.sh
          bash ${NVOC_MINERS}/SPccminer/src/configure
          bash ${NVOC_MINERS}/SPccminer/src/build.sh
          cp ${NVOC_MINERS}/SPccminer/src/ccminer ${NVOC_MINERS}/SPccminer/ccminer
          cd ${NVOC_MINERS}
          echo ""
          echo "Finished compiling tpruvot ccminer"
}

function compile-TPccminer {
          echo "Compiling tpruvot ccminer"
          echo " This could take a while ..."
          git submodule update --init --depth 1 ${NVOC_MINERS}/TPccminer
          cd ${NVOC_MINERS}/TPccminer/src
          bash ${NVOC_MINERS}/TPccminer/src/autogen.sh
          bash ${NVOC_MINERS}/TPccminer/src/configure
          bash ${NVOC_MINERS}/TPccminer/src/build.sh
          cp ${NVOC_MINERS}/TPccminer/src/ccminer ${NVOC_MINERS}/TPccminer/ccminer
          cd ${NVOC_MINERS}
          echo ""
          echo "Finished compiling tpruvot ccminer"
}

function compile-vertminer {
          echo "Compiling Vertminer"
          echo " This could take a while ..."
          git submodule update --init --depth 1 ${NVOC_MINERS}/vertminer
          cd ${NVOC_MINERS}/vertminer/src
          bash ${NVOC_MINERS}/vertminer/src/autogen.sh
          bash ${NVOC_MINERS}/vertminer/src/configure
          bash ${NVOC_MINERS}/vertminer/src/build.sh
          cp ${NVOC_MINERS}/vertminer/src/vertminer ${NVOC_MINERS}/vertminer/vertminer
          cd ${NVOC_MINERS}
          echo ""
          echo "Finished compiling vertminer"
}

function compile-ANXccminer {
          echo "Compiling anorganix ccminer"
          echo " This could take a while ..."
          git submodule update --init --depth 1 ${NVOC_MINERS}/ANXccminer
          cd ${NVOC_MINERS}/ANXccminer/src
          bash ${NVOC_MINERS}/ANXccminer/src/autogen.sh
          bash ${NVOC_MINERS}/ANXccminer/src/configure
          bash ${NVOC_MINERS}/ANXccminer/src/build.sh
          cp ${NVOC_MINERS}/ANXccminer/src/ccminer ${NVOC_MINERS}/ANXccminer/ccminer
          cd ${NVOC_MINERS}
          echo ""
          echo "Finished compiling anorganix ccminer"
}

function compile-MSFTccminer {
          echo "Compiling MSFTccminer"
          echo " This could take a while ..."
          git submodule update --init --depth 1 ${NVOC_MINERS}/MSFTccminer
          cd ${NVOC_MINERS}/MSFTccminer/src
          bash ${NVOC_MINERS}/MSFTccminer/src/autogen.sh
          bash ${NVOC_MINERS}/MSFTccminer/src/configure
          bash ${NVOC_MINERS}/MSFTccminer/src/build.sh
          cp ${NVOC_MINERS}/MSFTccminer/src/ccminer ${NVOC_MINERS}/MSFTccminer/ccminer
          cd ${NVOC_MINERS}
          echo ""
          echo "Finished compiling MSFTccminer"
}

function compile-xmr-stak {
          echo "Compiling xmr-stak"
          echo " This could take a while ..."
          git submodule update --init --depth 1 ${NVOC_MINERS}/xmr-stak
          mkdir ${NVOC_MINERS}/xmr-stak/src/build
          cd ${NVOC_MINERS}/xmr-stak/src/build
          cmake ..
          make install
          cp ${NVOC_MINERS}/xmr-stak/src/build/bin/xmr-stak ${NVOC_MINERS}/xmr-stak/src/build/bin/*.so ${NVOC_MINERS}/xmr-stak/xmr-stak_miner
          cd ${NVOC_MINERS}
          echo ""
          echo "Finished compiling xmr-stak"
}

echo -n "Do you want to re-compile your miners (y/N)?  "
sleep 1
read -n 1 ANSWER
if [ ! "${ANSWER}" = "y" ] ; then
  echo ""
  echo "Canceled.."
  echo "Re starting miner..."
  pkill -f 3main
  sleep 1
  exit 0
else
  echo ""
  echo ""
  echo "Checking if bn.h bignum error is fixed for compiling miners or not"
  if [ -e  ~/Downloads/openssl-1.0.1e/bn.h.backup ]
  then
    echo "bn.h openssl already fixed for compiling miners"
    echo ""
  else
    cd ~/Downloads
    wget -nv http://www.openssl.org/source/openssl-1.0.1e.tar.gz
    tar -xvzf openssl-1.0.1e.tar.gz
    cp /usr/local/include/openssl/bn.h ~/Downloads/openssl-1.0.1e/bn.h.backup
    sudo cp ~/Downloads/openssl-1.0.1e/crypto/bn/bn.h /usr/local/include/openssl/
    sleep 1
    echo ""
    echo "bn.h openssl fixed for compiling miners"
    echo ""
    cd ${NVOC_MINERS}
  fi

  while true; do
    IFS=', '
    echo "Select miners to compile (multiple comma separated values: 1,6,7)"
    echo "1 - ASccminer"
    echo "2 - KTccminer"
    echo "3 - KTccminer-cryptonight"
    echo "4 - KXccminer"
    echo "5 - NAccminer"
    echo "6 - SPccminer"
    echo "7 - TPccminer"
    echo "8 - vertminer"
    echo "9 - ANXccminer"
    echo "R - MSFTccminer (RVN)"
    echo "X - xmr-stak"
    echo ""
    read -p "Do your Choice: [A]LL [1] [2] [3] [4] [5] [6] [7] [8] [9] [R] [X] [E]xit: " -a array
    for choice in "${array[@]}"; do
      case "$choice" in
        [Aa]* ) echo "ALL"
          compile-ASccminer
          echo ""
          echo ""
          compile-KTccminer
          echo ""
          echo ""
          compile-KTccminer-cryptonight
          echo ""
          echo ""
          compile-KXccminer
          echo ""
          echo ""
          compile-NAccminer
          echo ""
          echo ""
          compile-SPccminer
          echo ""
          echo ""
          compile-TPccminer
          echo ""
          echo ""
          compile-vertminer
          echo ""
          echo ""
          compile-ANXccminer
	        echo ""
	        echo ""
          compile-MSFTccminer
	        echo ""
	        echo ""
	        compile-xmr-stak
	        ;;
        [1]* ) echo -e "$choice"
          compile-ASccminer
          ;;
        [2]* ) echo -e "$choice"
          compile-KTccminer
          ;;
        [3]* ) echo -e "$choice\n"
          compile-KTccminer-cryptonight
          ;;
        [4]* ) echo -e "$choice"
          compile-KXccminer
          ;;
        [5]* ) echo -e "$choice"
          compile-NAccminer
          ;;
        [6]* ) echo -e "$choice"
          compile-SPccminer
          ;;
        [7]* ) echo -e "$choice"
          compile-TPccminer
          ;;
        [8]* ) echo -e "$choice"
          compile-vertminer
          ;;
        [9]* ) echo -e "$choice"
          compile-ANXccminer
          ;;
        [R]* ) echo -e "$choice"
          compile-MSFTccminer
          ;;
        [X]* ) echo -e "$choice"
          compile-xmr-stak
          ;;
        [Ee]* ) echo "exited by user"; exit;;
        * ) echo "Are you kidding me???";;
      esac
    done
    echo "Compilation finished, Want to compile more?"
    echo ""
  done
  echo " Restarting miner"
  pkill -f 3main
fi
