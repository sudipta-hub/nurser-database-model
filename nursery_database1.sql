create database nursery;
 create table tbititles
 (
 parentid int,
 parent_title char(100),
 constraint tit_pk primary key(parentid)
 );
 
 create table tbiparents
 (
 parentid int,
parenttitleid int,
parent_first_name char(100),
parent_last_name char(100),
parent_address char(100),
parent_town char(100),
parent_post_code int,
parent_home_town char(100),
parent_mobile_number int,
constraint par_pk primary key(parenttitleid),
constraint par_fk foreign key(parentid) references tbititles(parentid)
 );
 
 create table tbichildren
 (
 childid int,
 gender char(40),
 child_first_name char(100),
 child_last_name char(100),
 DOB char(40),
 childnotes char(100),
 constraint child_pk primary key(childid)
 );
 
 create table tbichildparentdetails
 (
 childid int,
 parenttitleid int,
 preferredcontact int,
 constraint chilpar_fk foreign key(childid) references tbichildren(childid),
 constraint chilpar_fk1 foreign key(parenttitleid) references tbiparents(parenttitleid)
 );
 
 create table tbisessions
 (
 sessionid int, 
 day_name char(40),
 start_name char(40),
 end_time int,
 constraint ses_pk primary key(sessionid)
 );
 
 create table tbi_register
 (
 registerdate char(40),
 childid int,
 sessionid int,
 register_notes char(100),
 constraint reg_pk primary key(registerdate),
 constraint reg_fk foreign key(childid) references tbichildren(childid),
 constraint reg_fk1 foreign key(sessionid) references tbisessions(sessionid)
  );
