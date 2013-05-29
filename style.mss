@base-color: #bbb;

Map {
  background-color: white; 
}

#slope {
  raster-comp-op: multiply;
  raster-opacity: 0.3;
  raster-scaling: lanczos;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops: 
    stop(0, white)
    stop(90, black);
}

#hs {
  raster-opacity: 0.3;
  raster-scaling:lanczos;
  raster-comp-op: multiply;
}