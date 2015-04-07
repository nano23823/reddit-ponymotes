SHEETS = sgmotes.png
ANIMOTES = starlightstaff.png starlightstanding.png starlighttrotting.png
GIFS = starlightstaff.png starlightstanding.gif starlighttrotting.gif
MFLAGS = -mode concatenate -background none -geometry +0+0

define get-order
$(shell grep $1: emotes.conf | cut -f 2 | sed -e 's/^/src\//')
endef

all: $(SHEETS) $(ANIMOTES)

sgmotes.png: $(call get-order, "sgmotes")
	montage $^ $(MFLAGS) -tile 4x $@
	optipng $@

starlightstaff.png: starlightstaff.gif
	gif2apng $< $@

%ing.png: %ing.gif
	gif2apng $< $@

starlightstaff.gif: src/starlight-handling-the-staff-of-sameness.gif
	cp $< $@

starlightstanding.gif: src/starlight_glimmer_idle_by_botchan_mlp-d8orfgn.gif
	convert -flop $< $@

starlighttrotting.gif: src/starlight_glimmer_trotting_by_botchan_mlp-d8orfeu.gif
	convert -flop $< $@

clean:
	-$(RM) $(SHEETS) $(ANIMOTES) $(GIFS) src/*.tga
