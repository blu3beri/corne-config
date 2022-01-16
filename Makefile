push: clean
	@read -p "Commit message: " msg
	@git add .
	@git commit -sm "$msg" --quiet
	@git push origin main --quiet

get:
	@gh run download --name firmware --dir build

clean:
	@rm -rf build/*
