
all : detailed-talk/main.pdf intro-talk/main.pdf

.PHONY: detailed-talk/main.pdf intro-talk/main.pdf

clean: clean-detailed clean-intro

detailed-talk/main.pdf:
	make -C detailed-talk
	
intro-talk/main.pdf:
	make -C intro-talk

clean-detailed:
	make -C detailed-talk clean
	
clean-intro:
	make -C intro-talk clean
