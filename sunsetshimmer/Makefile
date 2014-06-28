SHEETS = sunnyamotes.png sunnybmotes.png chubbies.png snailssalute.png sunsetshades.png theterror.png
ANIMOTES = clappingsunset.png sunsetgallop.png sunsetwinkout.png sunsetidle.png sunsettrot.png evilsunsetidle.png sunsetwalk.png
GIFS = sunsetgallop.gif sunsetwinkout.gif sunsetidle.gif sunsettrot.gif evilsunsetidle.gif sunsetwalk.gif
MFLAGS = -mode concatenate -background none -geometry +0+0
CFLAGS = +append

define get-order
$(shell grep $1: emotes.conf | cut -f 2 | sed -e 's/^/src\//')
endef

define no-prereqs
$(shell grep $1: emotes.conf | cut -f 2)
endef

define pad-sheet
$(shell grep $1.*blank70.png emotes.conf | tail -n +2 | cut -f 2 | sed -e 's/^/src\//')
endef

all: $(SHEETS) $(ANIMOTES)

sunnyamotes.png: $(call get-order, "sunnyamotes")
	montage $^ $(call pad-sheet, "sunnyamotes") $(MFLAGS) -tile 4x $@
	optipng $@

sunnybmotes.png: $(call get-order, "sunnybmotes")
	montage $^ $(call pad-sheet, "sunnybmotes") $(MFLAGS) -tile 4x $@
	optipng $@

chubbies.png: $(call get-order, "chubbies")
	montage $^ $(MFLAGS) -tile 1x $@
	optipng $@

snailssalute.png: $(call get-order, "snailssalute")
	montage $^ $(MFLAGS) -tile x1 $@
	optipng $@

sunsetshades.png:
	cd src && convert $(call no-prereqs, "sunsetshades") $(CFLAGS) ../$@
	optipng $@

theterror.png:
	cd src && convert $(call no-prereqs, "theterror") $(CFLAGS) ../$@
	optipng $@

clappingsunset.png: src/13860064636854_by_blknblupanther-d6whl0i.gif
	gif2apng $< $@

%.png: %.gif
	gif2apng $< $@

sunsetgallop.gif: src/sunset_shimmer_galloping_by_botchan_mlp-d687z7l.gif
	convert $< -flop $@

sunsetwinkout.gif: src/sunset_shimmer_teleporting_by_botchan_mlp-d687zg5.gif
	convert $< -flop $@

sunsetidle.gif: src/sunset_shimmer_idle_by_botchan_mlp-d687z3b.gif
	convert $< -flop $@

sunsettrot.gif: src/sunset_shimmer_trotting_by_botchan_mlp-d687ynq.gif
	convert $< -flop $@

evilsunsetidle.gif: src/equestria_girls___demon_sunset_shimmer_idle_by_botchan_mlp-d6o8ovx.gif
	convert $< -flop $@

sunsetwalk.gif: src/equestria_girls___sunset_shimmer_walking_by_botchan_mlp-d7o5p50.gif
	convert $< -flop $@

clean:
	-$(RM) $(SHEETS) $(ANIMOTES) $(GIFS) src/*.tga
