all: access_cm.pdf cm_timeline.pdf

%.pdf : %.rst
	rst2pdf $<

.PHONY: clean
clean:
	rm -rf access_cm.pdf cm_timeline.pdf
