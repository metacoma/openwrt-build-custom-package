#!/bin/sh

. ./env

docker build -t ${IMAGE_NAME} .
