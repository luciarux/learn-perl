#!/usr/bin/perl
use diagnostics;

open CONFIG, "my_config" #default, open for reading / input
open CONFIG, "<my_config" # open for reading
open RESULT_FILE, ">results.txt" # open for appending
open NEW_LOG, ">>log.file.txt" #open for rewriting
