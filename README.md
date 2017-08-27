# Delphi-Conversion


Results:

Strings went from .dfm to .lfm 

*	Umidade Relativa:  
    Units not found: OleCtrls , VCSpell3  
    Apparently keep all functionality  
  
*	Canopy Openness Meter (SFP):  
    Units not found: none  
    Apparently keep all functionality  
	Added about form  
		   
*	Absorvancia (extractrgb):  
	Units not found: ColorGrd, then TeeProcs, TeEngine, Chart, Series  
	Not working at all, don't think it will, too many dependences, might as well re-write it  
  
*	Diapasao Digital:  
	Units not found: none, however had to add Windows to uses clause, because I have not found any equivalent to .Beep() that receives frequency and duration  
	Working, but not multiplataform  
    Did not add extra form, as there is already some space in the main  
    
*	SFM:  
	No .dpr file found  
	
*	SH1_2:  
	Units not found: none  
    Apparently keep all functionality  
	Added about form  
  
*	SH2_0.2:  
	Units not found: ColorGrd  
	Not working
	
   