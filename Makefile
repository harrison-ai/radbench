.PHONY: install serve clean
.DEFAULT_GOAL := serve

install:
	pip install -r requirements.txt

serve:
	mkdocs serve

clean:
	git clean -Xdf
