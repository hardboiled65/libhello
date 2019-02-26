OBJ = src/hello.o

default: $(OBJ)
	mkdir -p lib
	$(CC) -shared -Wl,-soname,$(SONAME) -o lib/lib$(LIBRARY_NAME).so.$(LIBRARY_VERSION) $^

src/%.o: src/%.c
	$(CC) -c -o $@ $^ -Iinclude -fPIC
