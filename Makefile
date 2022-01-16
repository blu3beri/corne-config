push: clean
	@read -p "Commit message: " MSG
	@git add .
	@git commit -sm $MSG --quiet
	@git push origin main --quiet

get:
	@gh run download --name firmware --dir build

clean:
	@rm -rf build/*
