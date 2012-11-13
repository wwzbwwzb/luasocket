LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES :=				\
	src/mime.c	src/buffer.c src/auxiliar.c src/options.c src/io.c src/timeout.c \
	src/inet.c 	src/tcp.c src/udp.c src/except.c src/select.c src/usocket.c src/unix.c \
src/luasocket.c 


LOCAL_C_INCLUDES :=	 external/lua
DEF=-DLUASOCKET_DEBUG 
LOCAL_CFLAGS := -DHAVE_CONFIG_H=1
LOCAL_MODULE := socket
LOCAL_MODULE_TAGS := optional

LOCAL_ALLOW_UNDEFINED_SYMBOLS=1

LOCAL_SHARED_LIBRARIES :=	

include $(BUILD_SHARED_LIBRARY)


