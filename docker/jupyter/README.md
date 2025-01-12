# 환경파일 생성
cp .env.example .env

# jupyter notebook 실행
docker compose up -d

# jupyter notebook 접속
http://localhost:8888/

# jupyter notebook 종료
docker compose down