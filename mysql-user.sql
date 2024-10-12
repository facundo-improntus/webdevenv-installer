create user "CUSTOM_USER"@"%" identified by "12345678";
grant all privileges on *.* to "CUSTOM_USER"@"%";
flush privileges;