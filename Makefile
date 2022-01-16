push: clean
	@read -p "Commit message: " msg
	@git add .
	@git commit -m "$msg"
	@git push origin main --quiet

get:
	@gh run download --name firmware --dir build

clean:
	@rm -rf build/*
