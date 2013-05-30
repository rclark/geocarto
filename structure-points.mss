.structurepoints[zoom > 13] {
  // General rules: get the right SVG file, rotate by azimuth, allow overlaps
  marker-file: url("svg/[fgdc_key].svg");
  marker-transform: "rotate([azimuth])";
  marker-allow-overlap: true;
  
  // End-anchored linear symbols - add a translation after rotation
  ["fgdc_key"="9.1"],["fgdc_key"="9.2"],["fgdc_key"="9.9"],
  ["fgdc_key"="9.17"],["fgdc_key"="9.25"],["fgdc_key"="9.121"],
  ["fgdc_key"="9.122"],["fgdc_key"="9.123"],["fgdc_key"="9.133"] 
  { marker-transform: "rotate([azimuth]) translate(0 -10)"; }
}