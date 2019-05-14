var version = '1.6.5';

Package.describe({
  version: version,
  name: 'keplerjs:plugin-skeleton',
  summary: 'keplerjs plugin skeleton',
  git: "https://github.com/Keplerjs/Kepler.git"
});

Package.onUse(function(api) {
  api.use([
    'keplerjs:core@'+version,
  ]);

  api.versionsFrom("1.5.1");

  api.addFiles([
    'plugin.js',
  ]);

  api.addFiles([
    'client/views/home.html',
    'client/router.js',
    'client/main.js'    
  ], 'client');
  
});
