var fs = require("fs"),
    path = require("path"),
    mml = {
      "bounds": [
        -180,
        -85.05112877980659,
        180,
        85.05112877980659
      ],
      "center": [
        0,
        0,
        2
      ],
      "format": "png",
      "interactivity": false,
      "minzoom": 0,
      "maxzoom": 22,
      "srs": "+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0.0 +k=1.0 +units=m +nadgrids=@null +wktext +no_defs +over",
      "Stylesheet": [
        "geologic-lines.mss",
        "geologic-units.mss",
        "structure-points.mss"
      ],
      "Layer": [],
      "scale": 1,
      "metatile": 2,
      "name": "FGDC Symbols",
      "description": "For developing FGDC geologic symbology"
    };

fs.createWriteStream(path.join(__dirname, "project.mml"))
    .write(JSON.stringify(mml));

fs.createWriteStream(path.join(__dirname, "geologic-units.mss"))
    .write(".geopolys {\n  line-width: 0;\n  //Example:\n  [mapunit=\"Q\"] { polygon-fill: rgb(255,255, 0); }\n}");