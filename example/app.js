(function() {
  var TiAdmaker, adView, win;
  win = Ti.UI.createWindow({
    backgroundColor: 'white'
  });
  TiAdmaker = require('co.saiten.ti.admaker');
  adView = TiAdmaker.createView({
    backgroundColor: 'blue',
    top: 0,
    width: 320,
    height: 50,
    adUrl: "http://images.ad-maker.info/apps/gbt3tkfb1xef.html",
    siteId: "213",
    zoneId: "383"
  });
  win.add(adView);
  win.open();
}).call(this);
