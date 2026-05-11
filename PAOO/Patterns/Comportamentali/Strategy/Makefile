all:
	g++ main.cpp  && ./a.out

sig: signal.cpp
	g++ -I /opt/homebrew/include signal.cpp -L /opt/homebrew/lib && ./a.out
p:
	git add . && git commit -m "update" && git push