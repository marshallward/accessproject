all: access_cm.pdf cm_timeline.pdf

%.pdf : %.rst
	rst2pdf $<
