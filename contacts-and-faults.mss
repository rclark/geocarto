/* GENERAL ISSUES:
	- scale-dependencies are pretty contingent on the scale at which the map
		was compiled. For example, at 1:1,000,000 scale, removing fault
		decorations at zoom level 9 makes sense, but on a 1:24,000 scale map
		they should be removed around level 14. You may have to change zoom
		levels depending on your map.
	- mixins would be awesome.
*/

// Pixel dimensions based on FGDC spec (in mm) and assumed 72 dpi
@contact-width: 0.5;
@fault-width: 1.1;
@approximate-dash: 9.9, 2.2;
@concealed-dash: 1.4, 2.1;
@decoration-spacing: 34;
@narrow-decoration-spacing: 5.7;
@wide-decoration-spacing: 2 * @decoration-spacing;

// Line decorations are removed when zoom level < this value
@remove-decorations: 14;

#contactsandfaults {
// >>>>>>>>>>>>>>>>>>>>>>>>> DEFAULTS = ACCURATE CONTACT <<<<<<<<<<<<<<<<<<<<<<<<<< //
  line-color: black;
  line-join: round;
  line-cap: butt;
  line-width: @contact-width;

// >>>>>>>>>>>>>>>>>>>>>>>>> CONTACTS <<<<<<<<<<<<<<<<<<<<<<<<<< //  
  /* Contact—Identity or existence questionable, location accurate */
  [fgdc_key="1.1.2"] {
    ::decoration {
      marker-placement: line;
      marker-spacing: @wide-decoration-spacing;
      marker-file: url("svg/question-mark.svg");
      marker-transform: "translate(0 -2.5)";
      marker-allow-overlap: true;
      [zoom < @remove-decorations] {
        marker-spacing: 9999;
      }
    }
  }

  /* Contact—Identity and existence certain, location approximate */
  [fgdc_key="1.1.3"] {
    line-dasharray: @approximate-dash;
  }
  
  /* Contact—Identity and existence certain, location 
		concealed */
  [fgdc_key="1.1.7"] {
    line-dasharray: @concealed-dash;
  }

// >>>>>>>>>>>>>>>>>>>>>>>>> FAULTS <<<<<<<<<<<<<<<<<<<<<<<<<< //  
  /* Fault (generic; vertical, subvertical, or high-angle; or unknown or 
 	unspecified orientation or sense of slip)—Identity and existence certain, 
 	location accurate */
  [fgdc_key="2.1.1"],[fgdc_key="2.1.3"],[fgdc_key="2.1.7"] {
    line-width: @fault-width;
    
    /* Fault (generic; vertical, subvertical, or high-angle; or 
	unknown or unspecified orientation or sense of slip)—
	Identity and existence certain, location approximate */
    [fgdc_key="2.1.3"] {
      line-dasharray: @approximate-dash;
    }
    
    /* Fault (generic; vertical, subvertical, or high-angle; or 
      unknown or unspecified orientation or sense of slip)
      —Identity and existence certain, location concealed */
    [fgdc_key="2.1.7"] { 
      line-dasharray: @concealed-dash;
    }
  }

// >>>>>>>>>>>>>>>>>>>>>>>>> NORMAL FAULTS <<<<<<<<<<<<<<<<<<<<<<<<<< //
  /* Normal fault—Identity and existence certain, location accurate. 
  	Ball and bar on downthrown block */
  [fgdc_key="2.2.1"],[fgdc_key="2.2.3"],[fgdc_key="2.2.7"] {
    line-width: @fault-width;
    ::decoration {
      marker-placement: line;
      marker-spacing: @wide-decoration-spacing;
      marker-file: url("svg/[fgdc_key].svg");
      marker-transform: "translate(0 -2.5)";
      marker-allow-overlap: true;
      [zoom < @remove-decorations] {
        marker-spacing: 9999;
      }
    }
    
    /* Normal fault—Identity and existence certain, location approximate. 
   		Ball and bar on downthrown block */
    [fgdc_key="2.2.3"] {
      line-dasharray: @approximate-dash;
    }
    
    /* Normal fault—Identity and existence certain, location concealed. 
    	Ball and bar on downthrown block */
    [fgdc_key="2.2.7"] {
      line-dasharray: @concealed-dash;
    }
  }

// >>>>>>>>>>>>>>>>>>>>>>>>> LOW-ANGLE NORMAL FAULTS <<<<<<<<<<<<<<<<<<<<<<<<<< //
  /* Low-angle normal fault—Identity and existence certain, location accurate. 
  	Half-circles on downthrown block */
  [fgdc_key="2.2.9"],[fgdc_key="2.2.11"],[fgdc_key="2.2.15"] {
    line-width: @fault-width;
    ::decoration {
      marker-placement: line;
      marker-spacing: @wide-decoration-spacing;
      marker-file: url("svg/[fgdc_key].svg");
      marker-transform: "translate(0 -1.5)";
      marker-allow-overlap: true;
      [zoom < @remove-decorations] {
        marker-spacing: 9999;
      }
    }
    
    /* Low-angle normal fault—Identity and existence certain, location approximate. 
    	Half-circles on downthrown block */
    [fgdc_key="2.2.11"] {
      line-dasharray: @approximate-dash;
    }
    
    /* Low-angle normal fault—Identity and existence certain, location concealed. 
    	Half-circles on downthrown block */
    [fgdc_key="2.2.15"] {
      line-dasharray: @concealed-dash;
    }
  }

// >>>>>>>>>>>>>>>>>>>>>>>>> THRUST FAULTS <<<<<<<<<<<<<<<<<<<<<<<<<< //  
  /* Thrust fault (1st option)—Identity and existence 
	certain, location accurate. Sawteeth on upper (tectonically higher) plate */
  [fgdc_key="2.8.1"],[fgdc_key="2.8.3"],[fgdc_key="2.8.7"] {
    line-width: @fault-width;
    ::decoration {
      marker-placement: line;
      marker-spacing: @decoration-spacing;
      marker-file: url("svg/[fgdc_key].svg");
      marker-transform: "translate(0 -2.5)";
      marker-allow-overlap: true;
      [zoom < @remove-decorations] {
        marker-spacing: 9999;
      }
    }
    
    /* Thrust fault (1st option)—Identity and existence 
      certain, location approximate. Sawteeth on upper 
      (tectonically higher) plate */
    [fgdc_key="2.8.3"] {
      line-dasharray: @approximate-dash;
    }
    
    /* Thrust fault (1st option)—Identity and existence 
      certain, location concealed. Sawteeth on upper 
      (tectonically higher) plate */
    [fgdc_key="2.8.7"] {
      line-dasharray: @concealed-dash;
    }
  }
  
// >>>>>>>>>>>>>>>>>>>>>>>>> DETACHMENT FAULTS <<<<<<<<<<<<<<<<<<<<<<<<<< //
  /* Detachment fault (sense of slip unspecified) (1st 
    option)—Identity and existence certain, location 
    accurate. Hachures on upper plate */
  [fgdc_key="2.10.1"],[fgdc_key="2.10.3"],[fgdc_key="2.10.7"] {
    line-width: @fault-width;
    ::decoration {
      marker-placement: line;
      marker-spacing: @decoration-spacing;
      marker-file: url("svg/[fgdc_key].svg");
      marker-transform: "translate(0 -2.5)";
      marker-allow-overlap: true;
      [zoom < @remove-decorations] {
        marker-spacing: 9999;
      }
    }
    
    /* Detachment fault (sense of slip unspecified) (1st 
      option)—Identity and existence certain, location 
      approximate. Hachures on upper plate */
    [fgdc_key="2.10.3"] {
      line-dasharray: @approximate-dash;
    }
    
    /* Detachment fault (sense of slip unspecified) (1st 
      option)—Identity and existence certain, location 
      concealed. Hachures on upper plate */
    [fgdc_key="2.10.7"] {
      line-dasharray: @concealed-dash;
    }
  }
  
// >>>>>>>>>>>>>>>>>>>>>>>>> LISTRIC FAULTS <<<<<<<<<<<<<<<<<<<<<<<<<< //
  /* Listric fault at head of detachment fault (sense of 
    slip unspecified)—Identity and existence certain, 
    location accurate. Ticks on upper plate */
  [fgdc_key="2.10.33"],[fgdc_key="2.10.35"],[fgdc_key="2.10.39"] {
    line-width: @fault-width;
    ::decoration {
      marker-placement: line;
      marker-spacing: @decoration-spacing;
      marker-file: url("svg/[fgdc_key].svg");
      marker-transform: "translate(0 -2.5)";
      marker-allow-overlap: true;
      [zoom < @remove-decorations] {
        marker-spacing: 9999;
      }
    }
    
    /* Listric fault at head of detachment fault (sense of 
      slip unspecified)—Identity and existence certain, 
      location approximate. Ticks on upper plate */
    [fgdc_key="2.10.35"] {
      line-dasharray: @approximate-dash;
    }
    
    /* Listric fault at head of detachment fault (sense of 
      slip unspecified)—Identity and existence certain, 
      location concealed. Ticks on upper plate */
    [fgdc_key="2.10.39"] {
      line-dasharray: @concealed-dash;
    }
  }

// >>>>>>>>>>>>>>>>>>>>>>>>> FAULT SCARPS <<<<<<<<<<<<<<<<<<<<<<<<<< //  
  /* Scarp on fault (generic; vertical, subvertical, or 
    high-angle; or unknown or unspecified orientation 
    or sense of slip)—Identity and existence certain, 
    location accurate. Hachures point downscarp */
  [fgdc_key="2.12.1"] {
    line-width: @fault-width;
    ::decoration {
      marker-placement: line;
      marker-spacing: @narrow-decoration-spacing;
      marker-file: url("svg/[fgdc_key].svg");
      marker-transform: "translate(0 -2.5)";
      marker-allow-overlap: true;
      [zoom < @remove-decorations] {
        marker-spacing: 9999;
      }
    }
  }
}
