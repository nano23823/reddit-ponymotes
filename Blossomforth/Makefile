SHEETS = blossomemotes.png blossomemotes100.png
ANIMOTES = blossomswag.png blossomflying.png blossomsitting.png blossomsleeping.png blossomstanding.png blossomstretching.png blossomtrotting.png
GIFS = blossomflying.gif blossomsitting.gif blossomsleeping.gif blossomstanding.gif blossomstretching.gif blossomtrotting.gif
MFLAGS = -mode concatenate -background none -geometry +0+0

define get-order
$(shell grep $1: emotes.conf | cut -f 2 | sed -e 's/^/src\//')
endef

all: $(SHEETS) $(ANIMOTES)

blossomemotes.png: $(call get-order, "blossomemotes")
	montage $^ $(MFLAGS) -tile 3x $@
	optipng $@

blossomemotes100.png: $(call get-order, "blossomemotes100")
	montage $^ $(MFLAGS) -tile 3x $@
	optipng $@

blossomswag.png: src/39905__safe_animated_sunglasses_blossomforth_dance_shades_artist-colon-haileyguilford.gif
	gif2apng $< $@

%ing.png: %ing.gif
	gif2apng $< $@

blossomflying.gif: src/blossomforth_flying_left_by_fanofetcetera-d59da23_modded.gif
	../bin/gifsheet -c src/dp_gif_colors.conf $< $@

blossomsitting.gif: src/blossomforth_sitting_left_by_fanofetcetera-d59hbk8.gif
	../bin/gifsheet -c src/dp_gif_colors.conf $< $@

blossomsleeping.gif: src/blossomforth_sleeping_left_by_fanofetcetera-d59hbrx.gif
	../bin/gifsheet -c src/dp_gif_colors.conf $< $@

blossomstanding.gif: src/blossomforth_standing_left_by_fanofetcetera-d59bxe7.gif
	../bin/gifsheet -c src/dp_gif_colors.conf $< $@

blossomstretching.gif: src/blossomforth_too_much_flexability_left_by_fanofetcetera-d59i206.gif
	../bin/gifsheet -c src/dp_gif_colors.conf $< $@

blossomtrotting.gif: src/blossomforth_trotting_left_by_fanofetcetera-d5997u6_modded.gif
	../bin/gifsheet -c src/dp_gif_colors.conf $< $@

clean:
	-$(RM) $(SHEETS) $(ANIMOTES) $(GIFS) src/*.tga
