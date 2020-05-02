set -e
./mvnw package -DskipTests=true -Dnative-image.docker-build=true -Dquarkus.native.builder-image=quay.io/quarkus/ubi-quarkus-native-image:19.3.1-java8 -Pnative
cf push
