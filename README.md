## root账号免密
[root@iZ2zed99h19kmb7fgbjcghZ ansible]# cat /etc/ansible/hosts 
[ss]
10.0.0.94 aansible_user=root ansible_ssh_pass="Cafintechv758111"

## 执行免密
[root@iZ2zed99h19kmb7fgbjcghZ ansible]# ansible-playbook install_push.ssh.ymal --extra-vars "ansible_ssh_user=root"

## 挂载磁盘
[root@iZ2zed99h19kmb7fgbjcghZ ansible]# ansible-playbook install_diskpart.yaml --extra-vars "ansible_ssh_user=root"

## 创建普通用户
[root@iZ2zed99h19kmb7fgbjcghZ ansible]# ansible-playbook install_user.ymal --extra-vars "ansible_ssh_user=root"

## 执行普通账号免密
[root@iZ2zed99h19kmb7fgbjcghZ ansible]# ansible-playbook install_xiaoxin.ymal --extra-vars "ansible_ssh_user=root"

## 安装jdk
[root@iZ2zed99h19kmb7fgbjcghZ ansible]# ansible-playbook install_jdk.ymal --extra-vars "ansible_ssh_user=root" 

## 更新hostsname
[root@iZ2zed99h19kmb7fgbjcghZ ansible]# vim /etc/ansible/hosts 
[hostname]
10.0.0.94 hostname=lucky
[root@iZ2zed99h19kmb7fgbjcghZ ansible]# ansible-playbook install_hostname.ymal --extra-vars "ansible_ssh_user=root" 

## 同步hosts
[root@iZ2zed99h19kmb7fgbjcghZ ansible]# vim hosts 
10.0.0.92   #vpn
10.0.0.106  #jenkins
10.0.0.91   #consumer-starter dispatch-starter seller-starter task-starter trade-starter user-starter
10.0.0.93   #zookeeper nexus configcenter-sdk-starter  monitorcenter-web register-center  sellercenter-sdk sellercenter-web
10.0.0.104  #crm-api-web crm-base-sdk-web crm-customer-sdk-web  crm-plan-sdk-web
10.0.0.105  #account-sdk-web address-admin-web address-server-web auth-web-starter sms-sdk-web
[root@iZ2zed99h19kmb7fgbjcghZ ansible]# ansible-playbook install_hosts.ymal --extra-vars "ansible_ssh_user=root"   

## ansoble 指定用户执行ansible-playbook
[root@iZ2zed99h19kmb7fgbjcghZ ansible]# vim /etc/ansible/hosts 
[all:vars]
ansible_user=xiaoxin

## 应用发布模版

[root@iZ2zed99h19kmb7fgbjcghZ crm-plan-sdk]# ansible-playbook deploy.ymal 




