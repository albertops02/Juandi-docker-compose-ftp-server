# https://github.com/jedisct1/pure-ftpd/blob/master/pureftpd-mysql.conf
CREATE TABLE users (
                       User VARCHAR(255) BINARY NOT NULL,
                       Password VARCHAR(255) BINARY NOT NULL,
                       Uid INT NOT NULL default '-1',
                       Gid INT NOT NULL default '-1',
                       Dir VARCHAR(255) BINARY NOT NULL,
                       PRIMARY KEY (User)
);

# Create users
# $ docker compose exec db mysql -u $[USER] -p'$[PASS]' -e "INSERT INTO users (User,Password,Uid,Gid,Dir) VALUES ('foo',ENCRYPT('test'),'1003','1005','/home/foo');" pureftpd
# Show users
# $ docker compose exec db mysql -u $[USER] -p'$[PASS]' -e "SELECT * FROM users;" pureftpd