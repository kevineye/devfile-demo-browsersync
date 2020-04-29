#!/bin/sh -e

cd "$DOCROOT"
browser-sync start --no-open --directory --server --files .
