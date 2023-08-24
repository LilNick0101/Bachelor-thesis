PANDOC=pandoc
TEMPLATE_FILE=../eisvogel.tex
OUTPUT="thesis.pdf"
INPUT=thesis.md

build: $(INPUT) $(TEMPLATE_FILE)
		$(PANDOC) $(INPUT) -o $(OUTPUT) --from markdown --template $(TEMPLATE_FILE) --listings