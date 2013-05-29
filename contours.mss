@contour-color: darken(@base-color, 20%);
@contour-text-color: darken(@contour-color, 15%);
@contour-composite: minus;
@contour-opacity: 0.2;

/* Major Contours */
#contour540m [zoom >= 10][zoom <= 11],
#contour180m [zoom >= 12][zoom <= 14],
#contour60m [zoom >= 15] {
  ::line-part {
    line-width:0.5;
    line-color: @contour-color;
    line-comp-op: @contour-composite;
    line-opacity: @contour-opacity;
  }
  /*
  ::label-part {
    text-face-name: "Arial Regular";
    text-size: 10;
    text-fill: @contour-text-color;
    text-name: "[CONTOUR]";
    text-placement: line;
    text-spacing: 500;
    //text-halo-radius: 3;
    //text-halo-fill: rgba(0, 0, 0, 1);
    text-opacity: 1;
    text-comp-op: multiply;
    text-allow-overlap: true;
  }
  */
}

/* Minor Contours */
#contour180m [zoom >= 10][zoom <= 11],
#contour60m [zoom >= 12][zoom <= 14],
#contour15m [zoom >= 15] {
  ::line {
    line-width:0.25;
    line-color: @contour-color;
    line-comp-op: @contour-composite;
    line-opacity: @contour-opacity + 0.6;
  }
}