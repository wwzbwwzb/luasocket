#------
# Load configuration
#
include ../config

#------
# Hopefully no need to change anything below this line
#

#------
# Modules belonging to socket-core
#

#$(COMPAT)/compat-5.1.o \

SOCKET_OBJS:= \
luasocket.c \
	timeout.c \
	buffer.c \
	io.c \
	auxiliar.c \
	options.c \
	inet.c \
	tcp.c \
	udp.c \
	except.c \
	select.c \
	usocket.c 

#------
# Modules belonging mime-core
#
#$(COMPAT)/compat-5.1.o \

MIME_OBJS:=\
	mime.c 

#------
# Modules belonging unix (local domain sockets)
#
UNIX_OBJS:=\
	unix.c

all: $(SOCKET_SO) $(MIME_SO) 

$(SOCKET_SO): $(SOCKET_OBJS)
	$(LD) $(LDFLAGS) -o $@ $(SOCKET_OBJS)

$(MIME_SO): $(MIME_OBJS)
	$(LD) $(LDFLAGS) -o $@ $(MIME_OBJS)

$(UNIX_SO): $(UNIX_OBJS)
	$(LD) $(LDFLAGS) -o $@ $(UNIX_OBJS)

clean:
	rm -f  $(SOCKET_SO) $(MIME_SO) 

#------
# End of makefile configuration
#
