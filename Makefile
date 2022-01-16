git: clean
	@git add .
	@git commit -m "$m" --quiet
	@git push origin main --quiet

get:
	@gh run download --name firmware --dir build

clean:
	@rm -rf build/*
