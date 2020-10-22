#!/bin/bash

for i in $(pgrep server); do
  kill $i
done