p:
	git add . ; git commit -m "main: aggiornamento" ; git push

env:
	python3 -m venv . && source bin/activate && pip3 install jupyter torch matplotlib numpy scikit-learn

clean:
	yes | rm -r ./bin ./etc ./include ./lib ./pyvenv.cfg

local: 
	source ./bin/activate && jupyter lab --port=8888 --ServerApp.token='6c4bfd9ffd59618566557195d0f0a733f246545b8b118ca7'