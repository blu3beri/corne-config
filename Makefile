push: clean
	@echo "Commit message: "
	@read MSG
	@git add .
	@git commit -sm $MSG
	@git push origin main

get:
	@gh run download --name firmware --dir build

clean:
	@rm -rf build/*
