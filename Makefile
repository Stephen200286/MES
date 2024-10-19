a.out: Bus.o Cartridge.o main.o Mapper_000.o Mapper.o olc2C02.o olc6502.o
	g++ -O3 Bus.o Cartridge.o main.o Mapper_000.o Mapper.o olc2C02.o olc6502.o -lX11 -lGL -lpthread -lpng -lstdc++fs -std=c++17

Bus.o: Bus.cpp
	g++ -c -O3 Bus.cpp

Cartridge.o: Cartridge.cpp
	g++ -c -O3 Cartridge.cpp
main.o: main.cpp
	g++ -c -O3 main.cpp

Mapper_000.o: Mapper_000.cpp
	g++ -c -O3 Mapper_000.cpp

Mapper.o: Mapper.cpp
	g++ -c -O3 Mapper.cpp

olc2C02.o: olc2C02.cpp
	g++ -c -O3 olc2C02.cpp

olc6502.o: olc6502.cpp
	g++ -c -O3 olc6502.cpp

clean:
	rm *.o
