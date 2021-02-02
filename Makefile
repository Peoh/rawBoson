
CFLAGS+= -Wall  

EJECUTABLE=rawBoson

CFILES= serial.c rawBoson.c bytes.c
OFILES= serial.o rawBoson.o bytes.o

$(EJECUTABLE):	$(OFILES)
		$(CXX)  $(LDFLAGS) -o  $(EJECUTABLE) $(OFILES)

%.o:	%.c
	$(CXX) -c $(CFLAGS)  $< -o $@ 

clean:
	rm -f $(OFILES) $(EJECUTABLE)
