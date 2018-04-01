
all : detailed-talk/main.pdf intro-talk/main.pdf hands-on/presentation/main.pdf

.PHONY: detailed-talk/main.pdf intro-talk/main.pdf hands-on/presentation/main.pdf slides

clean: clean-detailed clean-intro clean-handson

slides : detailed-talk/main.pdf intro-talk/main.pdf hands-on/presentation/main.pdf
	mkdir -p slides	
	cp detailed-talk/main.pdf slides/detailed.pdf
	cp intro-talk/main.pdf slides/intro.pdf
	cp hands-on/presentation/main.pdf slides/handson.pdf

slides.tar.gz : slides
	tar cf slides.tar slides/
	gzip slides.tar

materials.tar.gz :
	tar cf materials.tar hands-on/materials
	gzip materials.tar

detailed-talk/main.pdf:
	make -C detailed-talk
	
intro-talk/main.pdf:
	make -C intro-talk

hands-on/presentation/main.pdf:
	make -C hands-on/presentation

clean-detailed:
	make -C detailed-talk clean
	
clean-intro:
	make -C intro-talk clean

clean-handson:
	make -C hands-on/presentation clean
