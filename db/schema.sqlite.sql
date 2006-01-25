-- Example Sqlite schema
  CREATE TABLE feeds (
    id                INTEGER PRIMARY KEY NOT NULL,
    url               VARCHAR(255) DEFAULT NULL,
    title             VARCHAR(255) DEFAULT NULL,
    link              VARCHAR(255) DEFAULT NULL,
    feed_data         TEXT DEFAULT NULL,
    feed_data_type    VARCHAR(20) DEFAULT NULL,
    http_headers      TEXT DEFAULT NULL,
    last_retrieved    DATETIME DEFAULT NULL
  );