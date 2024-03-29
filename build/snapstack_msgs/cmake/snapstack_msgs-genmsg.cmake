# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "snapstack_msgs: 11 messages, 0 services")

set(MSG_I_FLAGS "-Isnapstack_msgs:/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(snapstack_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/ControlLog.msg" NAME_WE)
add_custom_target(_snapstack_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "snapstack_msgs" "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/ControlLog.msg" "geometry_msgs/Quaternion:geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/AttitudeCommand.msg" NAME_WE)
add_custom_target(_snapstack_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "snapstack_msgs" "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/AttitudeCommand.msg" "geometry_msgs/Quaternion:geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Goal.msg" NAME_WE)
add_custom_target(_snapstack_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "snapstack_msgs" "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Goal.msg" "geometry_msgs/Point:geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/QuadFlightMode.msg" NAME_WE)
add_custom_target(_snapstack_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "snapstack_msgs" "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/QuadFlightMode.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/State.msg" NAME_WE)
add_custom_target(_snapstack_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "snapstack_msgs" "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/State.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/CommAge.msg" NAME_WE)
add_custom_target(_snapstack_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "snapstack_msgs" "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/CommAge.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/IMU.msg" NAME_WE)
add_custom_target(_snapstack_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "snapstack_msgs" "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/IMU.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/SMCData.msg" NAME_WE)
add_custom_target(_snapstack_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "snapstack_msgs" "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/SMCData.msg" "geometry_msgs/Quaternion:geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Motors.msg" NAME_WE)
add_custom_target(_snapstack_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "snapstack_msgs" "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Motors.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/VioFilterState.msg" NAME_WE)
add_custom_target(_snapstack_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "snapstack_msgs" "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/VioFilterState.msg" "geometry_msgs/Point:geometry_msgs/Twist:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/TimeFilter.msg" NAME_WE)
add_custom_target(_snapstack_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "snapstack_msgs" "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/TimeFilter.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/ControlLog.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_cpp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/AttitudeCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_cpp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_cpp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/QuadFlightMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_cpp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_cpp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/CommAge.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_cpp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_cpp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/SMCData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_cpp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Motors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_cpp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/VioFilterState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_cpp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/TimeFilter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snapstack_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(snapstack_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snapstack_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(snapstack_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(snapstack_msgs_generate_messages snapstack_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/ControlLog.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_cpp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/AttitudeCommand.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_cpp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Goal.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_cpp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/QuadFlightMode.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_cpp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/State.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_cpp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/CommAge.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_cpp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/IMU.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_cpp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/SMCData.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_cpp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Motors.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_cpp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/VioFilterState.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_cpp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/TimeFilter.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_cpp _snapstack_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(snapstack_msgs_gencpp)
add_dependencies(snapstack_msgs_gencpp snapstack_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS snapstack_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/ControlLog.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_eus(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/AttitudeCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_eus(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_eus(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/QuadFlightMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_eus(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_eus(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/CommAge.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_eus(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_eus(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/SMCData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_eus(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Motors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_eus(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/VioFilterState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_eus(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/TimeFilter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snapstack_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(snapstack_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snapstack_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(snapstack_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(snapstack_msgs_generate_messages snapstack_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/ControlLog.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_eus _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/AttitudeCommand.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_eus _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Goal.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_eus _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/QuadFlightMode.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_eus _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/State.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_eus _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/CommAge.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_eus _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/IMU.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_eus _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/SMCData.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_eus _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Motors.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_eus _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/VioFilterState.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_eus _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/TimeFilter.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_eus _snapstack_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(snapstack_msgs_geneus)
add_dependencies(snapstack_msgs_geneus snapstack_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS snapstack_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/ControlLog.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_lisp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/AttitudeCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_lisp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_lisp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/QuadFlightMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_lisp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_lisp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/CommAge.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_lisp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_lisp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/SMCData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_lisp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Motors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_lisp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/VioFilterState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_lisp(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/TimeFilter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snapstack_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(snapstack_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snapstack_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(snapstack_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(snapstack_msgs_generate_messages snapstack_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/ControlLog.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_lisp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/AttitudeCommand.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_lisp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Goal.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_lisp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/QuadFlightMode.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_lisp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/State.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_lisp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/CommAge.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_lisp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/IMU.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_lisp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/SMCData.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_lisp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Motors.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_lisp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/VioFilterState.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_lisp _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/TimeFilter.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_lisp _snapstack_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(snapstack_msgs_genlisp)
add_dependencies(snapstack_msgs_genlisp snapstack_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS snapstack_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/ControlLog.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_nodejs(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/AttitudeCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_nodejs(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_nodejs(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/QuadFlightMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_nodejs(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_nodejs(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/CommAge.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_nodejs(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_nodejs(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/SMCData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_nodejs(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Motors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_nodejs(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/VioFilterState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_nodejs(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/TimeFilter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snapstack_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(snapstack_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snapstack_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(snapstack_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(snapstack_msgs_generate_messages snapstack_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/ControlLog.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_nodejs _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/AttitudeCommand.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_nodejs _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Goal.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_nodejs _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/QuadFlightMode.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_nodejs _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/State.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_nodejs _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/CommAge.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_nodejs _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/IMU.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_nodejs _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/SMCData.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_nodejs _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Motors.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_nodejs _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/VioFilterState.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_nodejs _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/TimeFilter.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_nodejs _snapstack_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(snapstack_msgs_gennodejs)
add_dependencies(snapstack_msgs_gennodejs snapstack_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS snapstack_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/ControlLog.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_py(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/AttitudeCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_py(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_py(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/QuadFlightMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_py(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_py(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/CommAge.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_py(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_py(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/SMCData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_py(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Motors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_py(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/VioFilterState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snapstack_msgs
)
_generate_msg_py(snapstack_msgs
  "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/TimeFilter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snapstack_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(snapstack_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snapstack_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(snapstack_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(snapstack_msgs_generate_messages snapstack_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/ControlLog.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_py _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/AttitudeCommand.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_py _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Goal.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_py _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/QuadFlightMode.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_py _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/State.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_py _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/CommAge.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_py _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/IMU.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_py _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/SMCData.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_py _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/Motors.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_py _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/VioFilterState.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_py _snapstack_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raphaelpeabody/r/simulation_ws/src/snapstack_msgs/msg/TimeFilter.msg" NAME_WE)
add_dependencies(snapstack_msgs_generate_messages_py _snapstack_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(snapstack_msgs_genpy)
add_dependencies(snapstack_msgs_genpy snapstack_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS snapstack_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snapstack_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/snapstack_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(snapstack_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(snapstack_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(snapstack_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snapstack_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/snapstack_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(snapstack_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(snapstack_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(snapstack_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snapstack_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/snapstack_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(snapstack_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(snapstack_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(snapstack_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snapstack_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/snapstack_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(snapstack_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(snapstack_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(snapstack_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snapstack_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snapstack_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/snapstack_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(snapstack_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(snapstack_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(snapstack_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
