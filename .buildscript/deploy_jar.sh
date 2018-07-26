#!/usr/bin/env bash

# Build
pushd ./ || exit

cd ../
mvn clean
mvn package -DskipTests

popd || exit


# Install
pushd ./ || exit

cp ../benchmarks/target/*.jar ../deploy_jar/
cp ../mockwebserver/target/*.jar ../deploy_jar/
cp ../okcurl/target/*.jar ../deploy_jar/
cp ../okhttp/target/*.jar ./../deploy_jar/
cp ../okhttp-android-support/target/*.jar ./../deploy_jar/
cp ../okhttp-apache/target/*.jar ./../deploy_jar/
cp ../okhttp-dnsoverhttps/target/*.jar ./../deploy_jar/
cp ../okhttp-hpacktests/target/*.jar ./../deploy_jar/
cp ../okhttp-logging-interceptor/target/*.jar ./../deploy_jar/
cp ../okhttp-sse/target/*.jar ./../deploy_jar/
cp ../okhttp-testing-support/target/*.jar ./../deploy_jar/
cp ../okhttp-tests/target/*.jar ./../deploy_jar/
cp ../okhttp-tls/target/*.jar ./../deploy_jar/
cp ../okhttp-urlconnection/target/*.jar ./../deploy_jar/

popd || exit