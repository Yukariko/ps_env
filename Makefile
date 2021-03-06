CXXFLAGS=-g -Wall -O2 -std=c++17 -fconcepts
CXX=g++
OBJS=test.o
TARGET=test

$(TARGET): $(OBJS)
	$(CXX) -o $@ $(OBJS) -O2 -std=c++17

clean:
	rm -rf $(OBJS) $(TARGET)
