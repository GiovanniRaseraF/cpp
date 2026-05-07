all:
	mkdir build ; cd build && cmake .. && cmake --build .

run:
	./build/mesh_app --file my_mesh.obj

test:
	cd build && ctest --output-on-failure

p:
	git add . && git commit -m "update" && git push