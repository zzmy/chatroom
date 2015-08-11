create table userinformation(
    name varchar(50),
    password varchar(50),
    email varchar(50),
    realname varchar(50),
    age varchar(10),
    sex varchar(10), 
    isonline varchar(1), 
    isallowmessage varchar(1)
);
create table chatroomlog(
    id number(20), 
    name varchar(50), 
    message varchar(50), 
    chattime varchar(50), 
    ipaddress varchar(20)
);
create table admin(
    name varchar(50), 
    password varchar(50)
);

--conn system
create user chatroom identified by chatroom;
grant insert,update,select on scott.userinformation to chatroom;
grant insert,select on scott.chatroomlog to chatroom;
grant select on scott.admin to chatroom;