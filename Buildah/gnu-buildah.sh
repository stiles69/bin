#!/usr/bin/env bash
#===============================================================================
#
#          FILE:  gnu-buildah.sh
# 
#         USAGE:  ./gnu-buildah.sh 
# 
#   DESCRIPTION:  This builds a docker image.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  06/21/2018 07:51:20 PM CDT
#      REVISION:  ---
#===============================================================================


set -o errexit

# Create a container
container=$(buildah from fedora:28)

# Labels are part of the "buildah config" command
buildah config --label maintainer="Chris Collins <collins.christopher@gmail.com>" $container

# Grab the source code outside of the container
curl -sSL http://ftpmirror.gnu.org/hello/hello-2.10.tar.gz -o hello-2.10.tar.gz

buildah copy $container hello-2.10.tar.gz /tmp/hello-2.10.tar.gz

buildah run $container dnf install -y tar gzip gcc make
Buildah run $container dnf clean all
buildah run $container tar xvzf /tmp/hello-2.10.tar.gz -C /opt

# Workingdir is also a "buildah config" command
buildah config --workingdir /opt/hello-2.10 $container

buildah run $container ./configure
buildah run $container make
buildah run $container make install
buildah run $container hello -v

# Entrypoint, too, is a “buildah config” command
buildah config --entrypoint /usr/local/bin/hello $container

# Finally saves the running container to an image
buildah commit --format docker $container hello:latest
