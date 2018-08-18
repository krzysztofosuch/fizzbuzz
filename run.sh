#!/bin/bash
rm main
cobc -x main.cbl && ./main
