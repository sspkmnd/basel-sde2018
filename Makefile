.PHONY: all
all: basel-sde2018.pdf basel-sde2018.docx

%.pdf: %.md
	pandoc --variable urlcolor=blue $^ -o $@
	start $@ || true
	open $@ || true

%.docx: %.md
	pandoc $^ -o $@
	start $@ || true
	open $@ || true

.PHONY: clean
clean:
	del /q /s tmp.* || true
	for /d %%x in (tex2pdf.*) do rmdir /s /q "%%x" || true
	rm -r tmp.* text2pdf.* || true
