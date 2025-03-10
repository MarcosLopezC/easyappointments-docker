#!/bin/bash

# -----------------------------------------------------------------------------
# Easy!Appointments - Online Appointment Scheduler
#
# @package     EasyAppointments
# @author      A.Tselegidis <alextselegidis@gmail.com>
# @copyright   Copyright (c) Alex Tselegidis
# @license     https://opensource.org/licenses/GPL-3.0 - GPLv3
# @link        https://easyappointments.org
# -----------------------------------------------------------------------------

##
# Publish a docker image tag for an Easy!Appointments release.
#
# Usage:
#
#  ./publish-latest.sh <version>
#
# Example:
#
#   ./publish-latest.sh 1.5.0
#

DEFAULT_VERSION=1.5.0

VERSION="${1:-$DEFAULT_VERSION}"

docker tag alextselegidis/easyappointments:$VERSION alextselegidis/easyappointments:latest

docker push alextselegidis/easyappointments:latest
