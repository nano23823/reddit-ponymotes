SHEETS = adagiohmotes.png adagiopmotes.png
ANIMOTES = adagiostanding.png adagiowalking.png
GIFS = adagiostanding.gif adagiowalking.gif
MFLAGS = -mode concatenate -background none -geometry +0+0

define get-order
$(shell grep $1: emotes.conf | cut -f 2 | sed -e 's/^/src\//')
endef

all: $(SHEETS) $(ANIMOTES)

adagiohmotes.png: $(call get-order, "adagiohmotes")
	montage $^ $(MFLAGS) -tile 4x $@
	optipng $@

adagiopmotes.png: $(call get-order, "adagiopmotes")
	montage $^ $(MFLAGS) -tile 4x $@
	optipng $@

%.png: %.gif
	gif2apng $< $@

adagiostanding.gif: src/equestria_girls___adagio_dazzle_idle_by_botchan_mlp-d7yy65h.gif
	convert $< -flop -scale 50% $@

adagiowalking.gif: src/equestria_girls___adagio_dazzle_walking_by_botchan_mlp-d7yy65y.gif
	convert $< -flop -scale 50% $@

clean:
	-$(RM) $(SHEETS) $(ANIMOTES) $(GIFS)
