SUBREDDITS = AdagioDazzle AppleFritter Blossomforth CheeseSandwichmlp sunsetshimmer

.PHONY: all clean $(SUBREDDITS)

all: $(SUBREDDITS)

$(SUBREDDITS):
	$(MAKE) -C $@

clean:
	@for sub in $(SUBREDDITS); do $(MAKE) clean -C $$sub; done
