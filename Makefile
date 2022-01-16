push: clean
	git add .
	git commit -sm "new keymap"
	git push origin main

get:
	gh run download --name firmware --dir build
	mv ./build/corne_left-nice_nano_v2-zmk.uf2 left.uf2
	mv ./build/corne_right-nice_nano_v2-zmk.uf2 right.uf2

clean:
	rm -rf build
	mkdir build
