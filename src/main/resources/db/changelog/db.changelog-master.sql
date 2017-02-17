--liquibase formatted sql

--changeset msimons:1
create table greetings (
    id                 serial primary key,
    value              varchar(1024) not null,
    CONSTRAINT greetings_uk UNIQUE (value)
);
--rollback drop table greetings;

--changeset msimons:2
insert into greetings(value) values('Mirëdita');
insert into greetings(value) values('Ahalan');
insert into greetings(value) values('Parev');
insert into greetings(value) values('Zdravei');
insert into greetings(value) values('Nei Ho');
insert into greetings(value) values('Dobrý den');
insert into greetings(value) values('Goddag');
insert into greetings(value) values('Goede dag');
insert into greetings(value) values('Hello');
insert into greetings(value) values('Saluton');
insert into greetings(value) values('Hei');
insert into greetings(value) values('Bonjour');
insert into greetings(value) values('Guten Tag');
insert into greetings(value) values('Gia''sou');
insert into greetings(value) values('Aloha');
insert into greetings(value) values('Shalom');
insert into greetings(value) values('Namaste');
insert into greetings(value) values('Jó napot');
insert into greetings(value) values('Halló');
insert into greetings(value) values('Halo');
insert into greetings(value) values('Aksunai');
insert into greetings(value) values('Dia dhuit');
insert into greetings(value) values('Salve');
insert into greetings(value) values('Kon-nichiwa ');
insert into greetings(value) values('An-nyong Ha-se-yo');
insert into greetings(value) values('Salvëte');
insert into greetings(value) values('Ni hao');
insert into greetings(value) values('Hallo');
insert into greetings(value) values('Dzien'' dobry');
insert into greetings(value) values('Olá');
insert into greetings(value) values('Bunã ziua');
insert into greetings(value) values('Zdravstvuyte');
insert into greetings(value) values('Hola');
insert into greetings(value) values('Jambo');
insert into greetings(value) values('Hej');
insert into greetings(value) values('Sa-wat-dee');
insert into greetings(value) values('Merhaba');
insert into greetings(value) values('Vitayu');
insert into greetings(value) values('Xin chào');
insert into greetings(value) values('Hylo');
insert into greetings(value) values('Sholem Aleychem');
insert into greetings(value) values('Sawubona');
--rollback delete from greetings;