#!/bin/bash
#
#
# 获取硬盘名
DISK=$1
 
# 检查硬盘是否存在
CHECK_DISK_EXIST=`/sbin/fdisk -l 2> /dev/null | grep -o "$DISK"`
[ ! "$CHECK_DISK_EXIST" ] && { echo "Error: Disk is not found !"; exit 1;}
 
# 检查硬盘是否已存在分区
CHECK_DISK_PARTITION_EXIST=`/sbin/fdisk -l 2> /dev/null | grep -o "$DISK[1-9]"`
[ ! "$CHECK_DISK_PARTITION_EXIST" ] || { echo "WARNING: ${CHECK_DISK_PARTITION_EXIST} is Partition already !"; exit 1;}
 
# 开始格式化
/sbin/fdisk $DISK<<EOF &> /dev/null
n
p
1
 
 
t
83
wq
EOF
 
#刷新硬盘
partx -a /dev/$DISK
 
echo "Disk Partition Create OK!"
