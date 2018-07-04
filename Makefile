.PHONY: abstract
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

.PHONY: ghpages
ghpages:
	rm -rf docs
	mkdir -p docs
	rsync -rhvW --no-compress --progress --prune-empty-dirs \
	      --include=*/ \
	      --include=/js/** \
	      --include=/css/** \
	      --include=/lib/** \
	      --include=/plugin/** \
	      --exclude=* \
	      reveal.js/ docs/reveal.js
	cp -r assets docs
	cp slides.html docs/index.html

.PHONY: zip
zip: ghpages
	cp Documentation\ as\ a\ Code*.pdf docs
	mv docs/index.html docs/slides.html
	mv docs artifacts
	find artifacts -name '.DS_Store' -type f -exec rm {} \;
	zip -r artifacts.zip artifacts
	mv artifacts docs
	mv docs/slides.html docs/index.html
	rm docs/Documentation\ as\ a\ Code*.pdf

.PHONY: clean
clean:
	# del /q /s tmp.* || true
	# for /d %%x in (tex2pdf.*) do rmdir /s /q "%%x" || true
	rm -rf tmp.* artifacts artifacts.zip
