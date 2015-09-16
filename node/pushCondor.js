module.exports = function (dir, ext, cb) {
  var fs = require('fs');
  var path = require('path');
  var condor = [];
  var stringFile = fs.readdir(dir, function callback (err, data) {
      if(err){
        cb(err);
      } else {
        for(var i = 0; i < data.length; i++){
          if(path.extname(data[i]) == "." + ext){
            condor.push(data[i]);
          }
        }
        cb(null, condor);
      }
    });
}
