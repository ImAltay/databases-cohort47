import mysql from 'mysql';
import 'dotenv/config';
import { INVITEES, ROOMS, MEETINGS } from './data.js';

const connection = mysql.createConnection({
  host: 'localhost',
  user: process.env.user,
  password: process.env.password,
});

connection.connect();

connection.query(
  'DROP DATABASE IF EXISTS meetup',
  function (error, results, fields) {
    if (error) throw error;
    console.log('Database is dropped if existed');
  }
);

connection.query(
  'CREATE DATABASE IF NOT EXISTS meetup',
  function (error, results, fields) {
    if (error) throw error;
    console.log("meet up database created if didn't exist");
  }
);

connection.query('USE meetup', function (error, results, fields) {
  if (error) throw error;
  console.log('using meetup db');
});

connection.query(
  'CREATE TABLE Invitee (invitee_no INT AUTO_INCREMENT, Invitee_name VARCHAR(100), Invited_by VARCHAR(100), PRIMARY KEY(invitee_no));',
  function (error, results, fields) {
    if (error) throw error;
    console.log('invitee table has been created');
  }
);

connection.query(
  'CREATE TABLE Room (room_no INT AUTO_INCREMENT, room_name VARCHAR(100), floor_number INT, PRIMARY KEY(room_no));',
  function (error, results, fields) {
    if (error) throw error;
    console.log('Room table has been created');
  }
);

connection.query(
  'CREATE TABLE Meeting (meeting_no INT AUTO_INCREMENT, meeting_title VARCHAR(100), starting_time INT, ending_time INT, PRIMARY KEY(meeting_no));',
  function (error, results, fields) {
    if (error) throw error;
    console.log('Meeting table has been created');
  }
);

connection.query(
  'INSERT INTO invitee(Invitee_name, Invited_by) VALUES ?',
  [INVITEES],
  function (error, results, fields) {
    if (error) throw error;
    console.log('5 row has been inserted to the invitees table');
  }
);

connection.query(
  'INSERT INTO Room(room_name , floor_number) VALUES ?',
  [ROOMS],
  function (error, results, fields) {
    if (error) throw error;
    console.log('5 row has been inserted to the Room table');
  }
);

connection.query(
  'INSERT INTO Meeting(meeting_title , starting_time, ending_time) VALUES ?',
  [MEETINGS],
  function (error, results, fields) {
    if (error) throw error;
    console.log('5 row has been inserted to the Meeting table');
  }
);

connection.end();
