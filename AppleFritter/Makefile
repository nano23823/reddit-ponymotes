SHEETS = fritemotes.png fritemotes100.png fritchubbies.png
ANIMOTES = fritclapping.png fritdancing.png fritsitting.png fritsleeping.png fritstanding.png frittrotting.png
GIFS = fritdancing.gif fritsitting.gif fritsleeping.gif fritstanding.gif frittrotting.gif
MFLAGS = -mode concatenate -background none -geometry +0+0

define get-order
$(shell grep $1: emotes.conf | cut -f 2 | sed -e 's/^/src\//')
endef

all: $(SHEETS) $(ANIMOTES)

fritemotes.png: $(call get-order, "fritemotes")
	montage $^ $(MFLAGS) -tile 4x $@
	optipng $@

fritemotes100.png: $(call get-order, "fritemotes100")
	montage $^ $(MFLAGS) -tile 3x $@
	optipng $@

fritchubbies.png: $(call get-order, "fritchubbies")
	montage $^ $(MFLAGS) -tile 1x $@
	optipng $@

fritclapping.png: src/fritclapping-0.png src/fritclapping-1.png src/fritclapping-2.png
	apngasm $@ $^ 7 100

%ing.png: %ing.gif
	gif2apng $< $@

fritsitting.gif: src/applefritter_sit_left.gif
	../bin/gifsheet -c src/dp_gif_colors.conf $< $@

fritsleeping.gif: src/applefritter_sleep_left.gif
	../bin/gifsheet -c src/dp_gif_colors.conf $< $@

fritstanding.gif: src/applefritter_stand_left.gif
	../bin/gifsheet -c src/dp_gif_colors.conf $< $@

frittrotting.gif: src/applefritter_trot_left_modded.gif
	../bin/gifsheet -c src/dp_gif_colors.conf $< $@

fritdancing.gif:
	cp src/fritdancing.gif ./

clean:
	-$(RM) $(SHEETS) $(ANIMOTES) $(GIFS) src/*.tga
