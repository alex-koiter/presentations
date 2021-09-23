remark.macros.box = function (right, top, width) {
  var text = this;
  return '<div class = "box" style = "top: ' + top + '; right: ' + right + '; width: ' + width + ';">' + text + '</div>';
};

remark.macros.label = function (right, top, width) {
  var text = this;
  return '<div class = label-container style = "position: absolute; top: ' + top + '; right: ' + right + '; width: ' + width + ';"><div class = "label"> ' + text + '</div></div>';
};


remark.macros.img = function (x, y, width, attr, caption) {
  var url = this;
  if(typeof caption == "undefined") var caption = "";
  return '<div class = "fig" style = "position: absolute; ' + x + '; ' + y + '; width: ' + width + ';">' +
            '<div style = "position: relative;">' +
               '<img src="' + url + '" />' + 
               '<div class = "attr">' + attr + '</div>' +
            '</div>' + 
            '<div class = "caption">' + caption + '</div>' +
         '</div>';
};


remark.macros.img_cr = function (x, y, width, attr, caption) {
  var url = this;
  if(typeof caption == "undefined") var caption = "";
  return '<div class = "fig" style = "position: absolute; -webkit-transform: translate(50%, 0); ' + x + '; ' + y + '; width: ' + width + ';">' +
            '<div style = "position: relative;">' +
               '<img src="' + url + '" />' + 
               '<div class = "attr">' + attr + '</div>' +
            '</div>' + 
            '<div class = "caption">' + caption + '</div>' +
         '</div>';
};

remark.macros.img_cl = function (x, y, width, attr, caption) {
  var url = this;
  if(typeof caption == "undefined") var caption = "";
  return '<div class = "fig" style = "position: absolute; -webkit-transform: translate(-50%, 0); ' + x + '; ' + y + '; width: ' + width + ';">' +
            '<div style = "position: relative;">' +
               '<img src="' + url + '" />' + 
               '<div class = "attr">' + attr + '</div>' +
            '</div>' + 
            '<div class = "caption">' + caption + '</div>' +
         '</div>';
};

remark.macros.hl = function (right, top, width, height){
  var text = this;
  return '<div class = "highlightbox" style = "position: absolute; top: ' + top + '; right: ' + right + '; width: ' + width + '; height: ' + height + '"> ' + text + '</div>';
}

remark.macros.cross = function(pos1, pos2, dim){
  return '<svg width="' + dim + '" style = "position: absolute; ' + pos1 + '; ' + pos2 + ';"><line x1="0" y1="0" x2="100" y2="200" style="stroke:rgb(255,0,0);stroke-width:2"></svg>';
}

remark.macros.spacer = function(padding){
  return '<div style = "padding: ' + padding + '"></div>';
}

remark.macros.hl = function (right, top, width, height){
  var text = this;
  return '<div class = "highlightbox" style = "position: absolute; top: ' + top + '; right: ' + right + '; width: ' + width + '; height: ' + height + '"> ' + text + '</div>';
}