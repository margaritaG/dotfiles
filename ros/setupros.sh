#! /bin/zsh

if [ -z "$CATKIN_FOLDER" ] ; then
  export CATKIN_FOLDER=/home/${USER}/catkin_ws
fi
export CATKIN_WS=/home/${USER}/catkin_ws
export CATKIN_OVERLAY_WS=/home/${USER}/overlay_ws


# ROS
# Assume kinetic by default.
ROS_DISTRO="lunar"

if [ "$SHELL" = "/bin/bash" ] ; then
  ROS_OPT_FILE="/opt/ros/${ROS_DISTRO}/setup.bash"
  ROS_DEVEL_FILE="${CATKIN_WS}/devel/setup.bash"
  ROS_OVERLAY_DEVEL_FILE="${CATKIN_OVERLAY_WS}/devel/setup.bash"
else
  ROS_OPT_FILE="/opt/ros/${ROS_DISTRO}/setup.zsh"
  ROS_DEVEL_FILE="${CATKIN_WS}/devel/setup.zsh"
  ROS_OVERLAY_DEVEL_FILE="${CATKIN_OVERLAY_WS}/devel/setup.zsh"
fi
if [ -f $ROS_OPT_FILE ]; then
  source $ROS_OPT_FILE
  if [ -f $ROS_DEVEL_FILE ]; then
    source $ROS_DEVEL_FILE
  fi
  if [ -f $ROS_OVERLAY_DEVEL_FILE ]; then
    source $ROS_OVERLAY_DEVEL_FILE
  fi
fi
alias ckws='$CATKIN_OVERLAY_WS'

function cbt() {
  if [[ -z $1 ]] ; then
    catkin build --this --no-deps
  else
    catkin build $@ --no-deps
  fi
}

function cb() {
  if [[ -z $1 ]] ; then
    catkin build --this
  else
    catkin build $@
  fi
}

function ctt() {
  if [[ -z $1 ]] ; then
    catkin run_tests --this --no-deps
  else
    catkin run_tests $@ --no-deps
  fi
}
