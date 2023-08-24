src = content
before_toc := $(src)/before_toc
out_dir = output
main_content := $(wildcard $(src)/main_content/*.md)
content_before_toc := $(wildcard $(before_toc)/*.md)
before_toc_tex := $(out_dir)/before_toc.tex
appendices_content := $(wildcard $(src)/appendix/*.md)
after_content_md := $(wildcard $(src)/after_content/*.md)

thesis : $(before_toc_tex) $(main_content) $(appendices_content) $(after_content_md)
	pandoc $(main_content) $(appendices_content) $(after_content_md) \
	--defaults=defaults.yaml \
	--include-before-body=$(before_toc_tex)

$(before_toc_tex) : $(content_before_toc)
	pandoc -o $(before_toc_tex) $(content_before_toc) -V documentclass=book

clean: 
	rm -f $(out_dir)/*.tex

.PHONY: clean
