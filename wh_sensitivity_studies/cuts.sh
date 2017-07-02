#!/bin/bash

#input_dir=/Users/joakim/ewk/ewk_mbj_ntuples/histfitter/
#version=histfitter_20170521_sig_validation.local/
input_dir=/share/t3data2/jolsson/EWK/ewk_mbj_ntuples/histfitter/
version=histfitter_20170604_bkg_all.grid.tag2.4.28-0-1-77-gd12fe93/

tag=resolved_MctbbG160_mTbmin_Wh_May30

mkdir -p cuts

echo rooptimize cut ${input_dir}/${version}/*.merged --supercuts=supercuts/supercuts_${tag}.json -o cuts/cuts_${tag} --numpy --eventWeight weight_mc --weightsFile ../weights_qqbb.json --tree nominal --ncores=8
