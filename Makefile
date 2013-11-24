
.PHONY: default¬
default:
	tinker --build
	@echo [All done]

.PHONY: show¬
show: default
	open blog/html/index.html
	@echo [All done]

.PHONY: upload¬
upload: default
	python upload.py
	@echo [All done]



