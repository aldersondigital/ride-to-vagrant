module.exports = {
  apps : [
      {
          name        : "mongod",
          script      : "mongod",
          watch       : true
      }
      /*
      {
          name        : "my-api",               // API
          script      : "/var/www/apps/my-api/index.js",
          watch       : true,
          env: {
            "API_BASE_PATH":        "/api",
            "API_BROADCAST_PORT":   3002,
            "API_URL_PREFIX":       false
          }
      }*/
   ]
};
