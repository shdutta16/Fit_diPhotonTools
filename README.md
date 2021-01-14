Steps to run:

1. $ cmsrel CMSSW_9_4_9

2. Go to src directory

3. Clone the Fit_diPhotonTools repo

   [... src]$ git clone https://github.com/shdutta16/Fit_diPhotonTools

4. Move the contents of the directory Fit_diPhotonTools to the src directory

   [... src]$ mv Fit_diPhotonTools/* ./
 
5. Build using scram 

6. Go to diphotons/Analysis/macros/

7. Here you will see two directories. 2017_2HDMa_EOY and 2018_2HDMa_EOY. 

   2017_2HDMa_EOY contains the 2018 analysis with the old MET binning viz. LowMET (50-130) and HighMET (>130). 
   
   2018_2HDMa_EOY contains the 2018 analysis with the current MET binning viz. LowMET (50-100) and HighMET (100-130).


8. For working with the old MET binning go to the directory 2017_2HDMa_EOY. You will find 3 directories here: a) LowMET  b) HighMET  c) Combined_LowMET_HighMET

9. Go to the directory LowMET

10. In order to avoid confusion please delete these existing directories and files. 
    
    a) directory: ntuples4fit_pho_newSig_test_met50_met130_cic_default_shapes_lumi_59.69
    
    b) files: i)   ntuples4fit_pho_newSig_test_met50_met130_cic_final_ws_MonoHgg.log
    
       	      ii)  ntuples4fit_pho_newSig_test_met50_met130_cic_final_ws_MonoHgg.root
	      
	      iii) bands_met0.root
	      
	      iv)  bands_met130.root
	      
	      v)   limits_2HDMa_ma1502HDMa.pdf/.png/.root
	      
	      

11. Now run these commands: (NOTE: Before running each .sh script please change the paths appropriately)
    
    [... LowMET]$ ./combine_maker_MonoHgg.sh "ntuples4fit_pho_newSig_test_met50_met130" --lumi 59.69 --fit-name cic --mc-file Output_MC.root --fit-background --redo-input 1

    [... LowMET]$ ./mycombineall_MonoHgg2HDMa.sh "ntuples4fit_pho_newSig_test_met50_met130_cic_default_shapes_lumi_59.69" --hadd --model 2HDMa -C 0.95 -M AsymptoticLimits --run both

    [... LowMET]$ ./mylimit_plots_MonoHgg.sh "ntuples4fit_pho_newSig_test_met50_met130_cic_default_shapes_lumi_59.69"





