SHEETS = adagiohmotes.png adagiopmotes.png
MFLAGS = -mode concatenate -background none -geometry +0+0

define get-order
$(shell grep $1: emotes.conf | cut -f 2 | sed -e 's/^/src\//')
endef

all: $(SHEETS)

adagiohmotes.png: $(call get-order, "adagiohmotes")
	montage $^ $(MFLAGS) -tile 4x $@
	optipng $@

adagiopmotes.png: $(call get-order, "adagiopmotes")
	montage $^ $(MFLAGS) -tile 4x $@
	optipng $@

clean:
	-$(RM) $(SHEETS)
