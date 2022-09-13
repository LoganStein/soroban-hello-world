#!/bin/bash
while getopts 'a:' OPTION; do
	case "$OPTION" in
		a)
			soroban-cli invoke --wasm target/wasm32-unknown-unknown/release/first_project.wasm --id 1 --fn hello --arg $OPTARG;;
		?)
			echo "usage: $(basename \$0) [-a argument to pass]" >&2
			exit 1
			;;
	esac
done
shift "$(($OPTIND -1))"
