
.PHONY: default¬
default:
	tinker --build
	@echo [All done]

.PHONY: show¬
show: default
	open index.html
	@echo [All done]

