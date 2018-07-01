.PHONY: all
abstract: basel-sde2018.pdf basel-sde2018.docx

.PHONY: slides
slides: slides.html

%.beamer.pdf: %.md
	pandoc -t beamer -s $^ -o tmp.tex
	pdflatex tmp.tex
	pdflatex tmp.tex # It is for required for correct pages reference
	move tmp.pdf $@ && start $@ || true
	mv tmp.pdf $@ && open $@ || true

%.pdf: %.md
	pandoc --variable urlcolor=blue $^ -o $@
	start $@ || true
	open $@ || true

%.docx: %.md
	pandoc $^ -o $@
	start $@ || true
	open $@ || true

%.html: %.md
	pandoc --standalone -V transition=fade -V theme=white --mathjax -i -t revealjs $^ -o $@

.PHONY: zip
zip:
	rm -r artifacts artifacts.zip || true
	mkdir -p artifacts
	cp -r slides.html reveal.js assets Documentation\ as\ a\ Code*.pdf artifacts
	zip -r artifacts.zip artifacts

.PHONY: clean
clean:
	del /q /s tmp.* || true
	for /d %%x in (tex2pdf.*) do rmdir /s /q "%%x" || true
	rm -r tmp.* artifacts || true
