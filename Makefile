OUTPUT_DIR := output

SOURCE_DIR := workspace

all: $(OUTPUT_DIR)
	@find $(SOURCE_DIR) -type f -name "*.typ" -exec sh -c 'typst compile {} --root ..' \;
	@find $(SOURCE_DIR) -type f -name "*.pdf" -exec sh -c 'mv {} $(OUTPUT_DIR)' \;

$(OUTPUT_DIR):
	mkdir -p $(OUTPUT_DIR)

clean:
	rm -rf $(OUTPUT_DIR)
