FILES = $(shell ls ebin/*.beam | grep -v smtp_rfc822_parse)

compile:
	@./rebar compile

clean:
	@./rebar clean

test:
	ERL_AFLAGS="-s ssl" 
	./rebar eunit

dialyze:
	dialyzer $(FILES)

.PHONY: compile clean test dialyze
