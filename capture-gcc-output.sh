#!/bin/bash

(echo stdout && (echo stderr > /dev/stderr)) &> results.txt
