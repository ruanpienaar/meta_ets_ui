-module(meta_ets_ui_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

-include("meta_ets_ui.hrl").

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    meta_ets_ui_sup:start_link().

stop(_State) ->
    ok.
