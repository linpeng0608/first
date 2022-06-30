#!/bin/bash

#N=`cat /root/.bash_profile|grep ulimit |wc -l`
#if [[ $N -eq 0 ]];then
#cat >>/root/.bash_profile<<EOF
##ulimit
#ulimit -u 655360
#ulimit -n 655360
#ulimit -d unlimited
#ulimit -m unlimited
#ulimit -s unlimited
#ulimit -t unlimited
#ulimit -v unlimited
#EOF
#fi


N=`cat /etc/profile|grep ulimit |wc -l`
if [[ $N -eq 0 ]];then
cat >>/etc/profile<<EOF
#ulimit
ulimit -u 655360
ulimit -n 655360
ulimit -d unlimited
ulimit -m unlimited
ulimit -s unlimited
ulimit -t unlimited
ulimit -v unlimited
EOF
fi

#N=`cat /root/.bashrc|grep ulimit |wc -l`
#if [[ $N -eq 0 ]];then
#cat >>/root/.bashrc<<EOF
##ulimit
#ulimit -u 655360
#ulimit -n 655360
#ulimit -d unlimited
#ulimit -m unlimited
#ulimit -s unlimited
#ulimit -t unlimited
#ulimit -v unlimited
#EOF
#fi

source /etc/profile

N1=`cat /etc/security/limits.conf |grep ulimit| wc -l`
if [[ $N1 -eq 0 ]];then
cat >>/etc/security/limits.conf<<EOF
#ulimit
*   hard  nofile  655360
*   soft  nofile  655360
*   hard  nproc   655360
*   soft  nproc   655360
*   hard   core   unlimited
*   soft   core   unlimited
EOF
fi
