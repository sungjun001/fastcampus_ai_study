#!/bin/bash

# 환경 변수에서 패스워드 가져오기 (기본값: "default_password")
PASSWORD=${USER_PASSWORD:-"default_password"}

# Jupyter 설정 파일 생성
jupyter notebook --generate-config

# 패스워드 설정
echo "Setting Jupyter Notebook password..."
expect <<EOF
spawn jupyter notebook password
expect "Enter password:"
send "$PASSWORD\r"
expect "Verify password:"
send "$PASSWORD\r"
expect eof
EOF

echo "Jupyter Notebook password has been set."

cd /home/jovyan
# Jupyter Notebook 서버 시작
exec start-notebook.sh
