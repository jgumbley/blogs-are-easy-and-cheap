
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

.PHONY: webserver
webserver: default
	open http://localhost:8888/
	cd blog/html; python -m SimpleHTTPServer 8888

