conquerer-app: main.o
	g++ main.o -o conquerer-app	 -lsfml-graphics -lsfml-window -lsfml-system

main.o: main.cpp

%.o: %.cpp
	g++ -std=c++11 -c $<

clean:
	rm -rf conquerer-app *.o

.PHONY: clean