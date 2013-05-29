/* GENERAL ISSUES:
	- scale-dependencies are pretty contingent on the scale at which the map
		was compiled. For example, at 1:1,000,000 scale, removing fault
		decorations at zoom level 9 makes sense, but on a 1:24,000 scale map
		they should be removed around level 14. You may have to change zoom
		levels depending on your map.
*/

// Pixel dimensions based on spec and assumed 72 dpi
@contact-width: 0.5;
@fault-width: 1.1;
@approximate-dash: 9.9, 2.2;
@concealed-dash: 1.4, 2.1;
@decoration-spacing: 34;

@remove-decorations: 14;

#contactsandfaults {
// >>>>>>>>>>>>>>>>>>>>>>>>> DEFAULTS <<<<<<<<<<<<<<<<<<<<<<<<<< //
  line-color: black;
  line-join: round;
  line-cap: butt;
  line-width: @contact-width;

// >>>>>>>>>>>>>>>>>>>>>>>>> CONTACTS <<<<<<<<<<<<<<<<<<<<<<<<<< //  
  // Contact—Identity or existence questionable, location accurate
  /*["fgdc_key"="1.1.2"] {
    line-width: 0.5;
    ::decoration {
      text-face-name: "FGDCGeoAge Regular";
      text-placement: line;
      text-spacing: @decoration-spacing;
      text-name: "?"; <<<<<<<<<<< Can't do this. May need to make an SVG
      [zoom < @remove-decorations] {
        text-spacing: 9999;
      } 
    }
  }*/

  //Contact—Identity and existence certain, location approximate
  ["fgdc_key"="1.1.3"] {
    line-dasharray: @approximate-dash;
  }
  
  /* Fault (generic; vertical, subvertical, or high-angle; or unknown or 
 	unspecified orientation or sense of slip)—Identity and existence certain, 
 	location accurate */
  ["fgdc_key"="2.1.1"] {
    line-width: @fault-width;
  }
  
// >>>>>>>>>>>>>>>>>>>>>>>>> FAULTS <<<<<<<<<<<<<<<<<<<<<<<<<< //
  /* Fault (generic; vertical, subvertical, or high-angle; or 
	unknown or unspecified orientation or sense of slip)—
	Identity and existence certain, location approximate */
  ["fgdc_key"="2.1.3"] {
    line-width: @fault-width;
    line-dasharray: @approximate-dash;
  }
  
  /* Fault (generic; vertical, subvertical, or high-angle; or 
	unknown or unspecified orientation or sense of slip)
	—Identity and existence certain, location concealed */
  ["fgdc_key"="2.1.7"] {
    line-width: @fault-width;
    line-dasharray: @concealed-dash;
  }
  
// >>>>>>>>>>>>>>>>>>>>>>>>> DETACHMENT FAULTS <<<<<<<<<<<<<<<<<<<<<<<<<< //
  /* Detachment fault (sense of slip unspecified) (1st 
    option)—Identity and existence certain, location 
    accurate. Hachures on upper plate */
  ["fgdc_key"="2.10.1"],["fgdc_key"="2.10.3"],["fgdc_key"="2.10.7"] {
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
    ["fgdc_key"="2.10.3"] {
      line-dasharray: @approximate-dash;
    }
    
    /* Detachment fault (sense of slip unspecified) (1st 
      option)—Identity and existence certain, location 
      concealed. Hachures on upper plate */
    ["fgdc_key"="2.10.7"] {
      line-dasharray: @concealed-dash;
    }
  }
  
// >>>>>>>>>>>>>>>>>>>>>>>>> LISTRIC FAULTS <<<<<<<<<<<<<<<<<<<<<<<<<< //
  /* Listric fault at head of detachment fault (sense of 
    slip unspecified)—Identity and existence certain, 
    location accurate. Ticks on upper plate */
  ["fgdc_key"="2.10.33"],["fgdc_key"="2.10.35"],["fgdc_key"="2.10.39"] {
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
    ["fgdc_key"="2.10.35"] {
      line-dasharray: @approximate-dash;
    }
    
    /* Listric fault at head of detachment fault (sense of 
      slip unspecified)—Identity and existence certain, 
      location concealed. Ticks on upper plate */
    ["fgdc_key"="2.10.39"] {
      line-dasharray: @concealed-dash;
    }
  }
}
