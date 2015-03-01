#!/bin/sh

if [ $# -ne 1 ]; then
	echo "echo_client Num"
	exit 1
fi

erl -pa ebin -pa ../../ebin -pa ../../deps/*/ebin +P 200000 -env ERL_MAX_PORTS 100000 -env ERTS_MAX_PORTS 100000 -s echo_client start 5000 $1

