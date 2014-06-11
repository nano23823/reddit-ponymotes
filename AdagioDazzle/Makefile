SHEETS = adagioamotes.png
MFLAGS = -mode concatenate -background none -geometry +0+0

define get-order
$(shell grep $1: emotes.conf | cut -f 2 | sed -e 's/^/src\//')
endef

all: $(SHEETS)

adagioamotes.png: $(call get-order, "adagioamotes")
	montage $^ $(MFLAGS) -tile 3x $@
	optipng $@

clean:
	-$(RM) $(SHEETS)
