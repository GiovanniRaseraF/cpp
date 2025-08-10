source ./bin/activate 
jupyter lab --port=8888 --no-browser --ServerApp.token='6c4bfd9ffd59618566557195d0f0a733f246545b8b118ca7'
http://localhost:8888/lab?token=6c4bfd9ffd59618566557195d0f0a733f246545b8b118ca7

./Scripts/activate.bat
jupyter lab --ip=192.168.8.108 --port=8888 --no-browser --ServerApp.token='6c4bfd9ffd59618566557195d0f0a733f246545b8b118ca7' 
http://192.168.8.108:8888/lab?token=6c4bfd9ffd59618566557195d0f0a733f246545b8b118ca7

./Scripts/activate.bat
pip3 install torch torchvision --index-url https://download.pytorch.org/whl/cu128 --upgrade --force-reinstall
jupyter lab  --ip=192.168.8.128 --port=8888 --no-browser --ServerApp.token='6c4bfd9ffd59618566557195d0f0a733f246545b8b118ca7'
http://192.168.8.128:8888/lab?token=6c4bfd9ffd59618566557195d0f0a733f246545b8b118ca7