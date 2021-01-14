#!/bin/bash

target=$1


for mDM in 150; do
#  ./mylimit_plots_MonoHgg_2HDMa.py --do-limits -M AsymptoticLimits --input-dir $target --model 2HDMa -O /afs/cern.ch/work/d/dbhowmik/public/Analysis/MHgg/2017Analysis/Fit_DiPhotonTools/CMSSW_9_4_9/src/diphotons/Analysis/macros --label MonoHgg_2HDMa --lumi 41.529 --mDM $mDM --suffix "" --blind --saveas pdf,png,root
  ./mylimit_plots_MonoHgg_2HDMa.py --do-limits -M AsymptoticLimits --input-dir $target --model 2HDMa -O /afs/cern.ch/work/d/dbhowmik/public/Analysis/MHgg/2017Analysis/Fit_DiPhotonTools/CMSSW_9_4_9/src/diphotons/Analysis/macros/2017_2HDMa_testModCuts/HighPtggLowPtggCombined --label MonoHgg_2HDMa --lumi 41.529 --use-fb --mDM $mDM --suffix "" --blind --saveas pdf,png,root
done

#for mDM in 300; do
#  ./mylimit_plots_MonoHgg_2HDM.py --do-limits -M AsymptoticLimits --input-dir $target --model 2HDM -O /afs/cern.ch/work/d/dbhowmik/public/Analysis/MHgg/2017Analysis/Fit_DiPhotonTools/CMSSW_9_4_9/src/diphotons/Analysis/macros --label MonoHgg_2HDM --lumi 35.9 --use-fb --mDM $mDM --suffix "" --unblind --saveas pdf,png,root
#done
