push: clean
	git add .
	git commit -sm "new keymap"
	git push origin main

get:
	gh run download --name firmware --dir build

clean:
	rm -rf build/*
