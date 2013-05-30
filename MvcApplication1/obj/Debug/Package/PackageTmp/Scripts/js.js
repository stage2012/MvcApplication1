/*************
API google MAP
*************/

window.google = window.google || {};
google.maps = google.maps || {};
(function() {
  
  function getScript(src) {
    document.write('<' + 'script src="' + src + '"' +
                   ' type="text/javascript"><' + '/script>');
  }
  
  var modules = google.maps.modules = {};
  google.maps.__gjsload__ = function(name, text) {
    modules[name] = text;
  };
  
  google.maps.Load = function(apiLoad) {
    delete google.maps.Load;
    apiLoad([0.009999999776482582,[[["http://mt0.googleapis.com/vt?lyrs=m@214000000\u0026src=api\u0026hl=fr-FR\u0026","http://mt1.googleapis.com/vt?lyrs=m@214000000\u0026src=api\u0026hl=fr-FR\u0026"],null,null,null,null,"m@214000000"],[["http://khm0.googleapis.com/kh?v=128\u0026hl=fr-FR\u0026","http://khm1.googleapis.com/kh?v=128\u0026hl=fr-FR\u0026"],null,null,null,1,"128"],[["http://mt0.googleapis.com/vt?lyrs=h@214000000\u0026src=api\u0026hl=fr-FR\u0026","http://mt1.googleapis.com/vt?lyrs=h@214000000\u0026src=api\u0026hl=fr-FR\u0026"],null,null,"imgtp=png32\u0026",null,"h@214000000"],[["http://mt0.googleapis.com/vt?lyrs=t@131,r@214000000\u0026src=api\u0026hl=fr-FR\u0026","http://mt1.googleapis.com/vt?lyrs=t@131,r@214000000\u0026src=api\u0026hl=fr-FR\u0026"],null,null,null,null,"t@131,r@214000000"],null,null,[["http://cbk0.googleapis.com/cbk?","http://cbk1.googleapis.com/cbk?"]],[["http://khm0.googleapis.com/kh?v=75\u0026hl=fr-FR\u0026","http://khm1.googleapis.com/kh?v=75\u0026hl=fr-FR\u0026"],null,null,null,null,"75"],[["http://mt0.googleapis.com/mapslt?hl=fr-FR\u0026","http://mt1.googleapis.com/mapslt?hl=fr-FR\u0026"]],[["http://mt0.googleapis.com/mapslt/ft?hl=fr-FR\u0026","http://mt1.googleapis.com/mapslt/ft?hl=fr-FR\u0026"]],[["http://mt0.googleapis.com/vt?hl=fr-FR\u0026","http://mt1.googleapis.com/vt?hl=fr-FR\u0026"]],[["http://mt0.googleapis.com/mapslt/loom?hl=fr-FR\u0026","http://mt1.googleapis.com/mapslt/loom?hl=fr-FR\u0026"]],[["https://mts0.googleapis.com/mapslt?hl=fr-FR\u0026","https://mts1.googleapis.com/mapslt?hl=fr-FR\u0026"]],[["https://mts0.googleapis.com/mapslt/ft?hl=fr-FR\u0026","https://mts1.googleapis.com/mapslt/ft?hl=fr-FR\u0026"]]],["fr-FR","US",null,0,null,null,"http://maps.gstatic.com/mapfiles/","http://csi.gstatic.com","https://maps.googleapis.com","http://maps.googleapis.com"],["http://maps.gstatic.com/intl/fr_fr/mapfiles/api-3/12/9","3.12.9"],[617193505],1.0,null,null,null,null,1,"",null,null,0,"http://khm.googleapis.com/mz?v=128\u0026",null,"https://earthbuilder.googleapis.com","https://earthbuilder.googleapis.com",null,"http://mt.googleapis.com/vt/icon"], loadScriptTime);
  };
  var loadScriptTime = (new Date).getTime();
  getScript("http://maps.gstatic.com/intl/fr_fr/mapfiles/api-3/12/9/main.js");
})();
