Extensions to mod_muc and mod_muc_log for more thorough logging.

Based on the original mod_muc with ejabberd and modular_muc. The
erlang sources will pulled from ejabberd 2.1.5 and the build setup was
pulled from modular_mud 0.0.1.

BUILDING:
Run rake twice : a first time for specifying location of erlang and
ejabberd in generated erlang_config.rb second time for actually
building.

DOCUMENTATION :
There a bit of edoc, rake edoc to get it built.

INSTALL :
rake install will do the trick

TODO : 
- remove build warnings.
- refine API

disco : 
- write specific hook

    disco_info(From, Affiliation, Config)->{ok, {item}}


LICENSE :
GPL as mod_muc on which the code is based on.
