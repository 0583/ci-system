#!/usr/bin/env bash 

# 自动选择最快源
yum install yum-fastestmirror -y

# 添加 Jenkins 源
sudo wget -O /etc/yum.repos.d/jenkins.repo http://jenkins-ci.org/redhat/jenkins.repo

sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key

# Jenkins 依赖 Java
yum install java

# 安装 Jenkins
yum install jenkins
