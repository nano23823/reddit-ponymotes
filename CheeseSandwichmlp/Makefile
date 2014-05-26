SHEETS = csemotes100a.png csemotes150a.png rubberchickendance.png
ANIMOTES = cheeseidle.png cheeseplay.png cheesetrot.png
MFLAGS = -mode concatenate -background none -geometry +0+0

define get-order
$(shell grep $1: emotes.conf | cut -f 2 | sed -e 's/^/src\//')
endef

all: $(SHEETS) $(ANIMOTES)

csemotes100a.png: $(call get-order, "csemotes100a")
	montage $^ $(MFLAGS) -tile 3x $@
	optipng $@

csemotes150a.png: $(call get-order, "csemotes150a")
	montage $^ $(MFLAGS) -tile 3x $@
	optipng $@

rubberchickendance.png:
	cp src/$@ ./
	optipng $@

cheeseidle.png: src/cheese_sandwich_idle_by_botchan_mlp-d754rrd.gif
	gif2apng $< $@

cheeseplay.png: src/cheese_sandwich_playing_accordion_by_botchan_mlp-d759av9.gif
	gif2apng $< $@

cheesetrot.png: src/cheese_sandwich_trotting_by_botchan_mlp-d753ako.gif
	gif2apng $< $@

clean:
	-$(RM) $(SHEETS) $(ANIMOTES)
