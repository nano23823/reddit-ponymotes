SHEETS = sgmotes.png
MFLAGS = -mode concatenate -background none -geometry +0+0

define get-order
$(shell grep $1: emotes.conf | cut -f 2 | sed -e 's/^/src\//')
endef

all: $(SHEETS)

sgmotes.png: $(call get-order, "sgmotes")
	montage $^ $(MFLAGS) -tile 4x $@
	optipng $@

clean:
	-$(RM) $(SHEETS)
