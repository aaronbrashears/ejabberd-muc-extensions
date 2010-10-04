EJABBERD_EBIN=$(PREFIX)/usr/lib/ejabberd/ebin

ERLANG=erl

INCLUDE=include
SOURCES=$(wildcard src/*.erl)
OUTDIR=ebin

BEAMS = $(addprefix $(OUTDIR)/,$(notdir $(SOURCES:.erl=.beam)))

.PHONY: all build install clean emake

all: build

build: $(BEAMS)

$(OUTDIR)/%.beam: src/%.erl
	erlc -W $(EFLAGS) -I $(INCLUDE) -o $(OUTDIR) $<

install: build
	mkdir -p $(EJABBERD_EBIN)
	cp $(BEAMS) $(EJABBERD_EBIN)

clean:
	rm -f $(BEAMS)

emake:
	$(ERLANG) -make
