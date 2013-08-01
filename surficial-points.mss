.surficialpoints[zoom > 13] {
  // General rules: get the right SVG file, rotate by azimuth (e.g. - striations), allow overlaps
  marker-file: url("svg/[fgdc_key].svg");
  marker-transform: "rotate([azimuth])";
  marker-allow-overlap: true;
  
  // End-anchored linear symbols - add a translation after rotation
  ["fgdc_key"="12.5"],["fgdc_key"="12.6"],["fgdc_key"="12.7"],
  ["fgdc_key"="12.8"], ["fgdc_key"="13.20"],["fgdc_key"="13.21"],
  ["fgdc_key"="13.22"],["fgdc_key"="13.25"],["fgdc_key"="13.29"],
  ["fgdc_key"="13.30"],["fgdc_key"="13.31"],["fgdc_key"="13.32"],
  ["fgdc_key"="13.33"],["fgdc_key"="13.34"],["fgdc_key"="13.35"],
  ["fgdc_key"="13.36"]  
  { marker-transform: "rotate([azimuth]) translate(0 -10)"; }
}