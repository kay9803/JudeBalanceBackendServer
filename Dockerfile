# 베이스 이미지 (Java 17)
FROM openjdk:17-jdk-slim

# 작업 디렉토리 생성
WORKDIR /app

# 현재 폴더(프로젝트 빌드 파일들)를 컨테이너 안으로 복사
COPY . .

# 빌드 (gradlew 사용)
RUN ./gradlew build

# 포트 오픈
EXPOSE 8080

# 실행
CMD ["./gradlew", "bootRun"]
