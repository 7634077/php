create database Posts;

create table users (
user_id int ,
user_name varchar(10) ,
email varchar(50) ,
act bool DEFAULT(0),
primary key(user_id) 
); 
create table post (
post_id int ,
title varchar(50) ,
content text ,
created_date date,
act bool DEFAULT(0),
primary key(post_id) 
);
create table user_post (
user_id int ,
post_id int ,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (post_id) REFERENCES post(post_id),
CONSTRAINT PK_userpost PRIMARY KEY (user_id,post_id)
);
select u.user_name , p.title , p.content, p.created_date from users as u 
left join user_post as up ON u.user_id=up.user_id left join post as p  on up.post_id=p.post_id
WHERE u.act=1 and p.act=1
order by u.user_name , p.title;

alter table users 
ADD birthday date;

select u.user_name , p.title , p.content, p.created_date from users as u 
left join user_post as up ON u.user_id=up.user_id left join post as p  on up.post_id=p.post_id
WHERE u.biryhday 
order by u.user_name , p.title;