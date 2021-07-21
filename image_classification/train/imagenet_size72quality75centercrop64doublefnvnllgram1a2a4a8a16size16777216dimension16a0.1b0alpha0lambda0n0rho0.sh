#!/bin/bash

# Archived program command-line for experiment
# Copyright 2021 ServiceNow All Rights Reserved
#
# Usage: bash {this_file} [additional_options]

set -x;
set -e;

../bytesteady/bytesteady -driver_location models/imagenet/size72quality75centercrop64doublefnvnllgram1a2a4a8a16size16777216dimension16a0.1b0alpha0lambda0n0rho0 -driver_epoch_size 100 -driver_save 10 -data_file data/imagenet/trainsize72quality75centercrop64_shuffle.hex -data_format kBytes -model_gram '{1,2,4,8,16}' -model_input_size 16777216 -model_output_size 11 -model_dimension 16 -train_a 0.1 -train_b 0 -train_alpha 0 -train_lambda 0 -train_n 0 -train_rho 0 "$@";
