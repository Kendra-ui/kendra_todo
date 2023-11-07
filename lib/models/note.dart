// class Note{
//   int id;
//   String description;
//   String date;
//   String time;

//   Note(this.id, this.date, this.time, this.description);
  

//   int get _id => id;

//   String get _description => description;

//   String get _date => date;

//   String get _time => time;

//   set _description(String newdescription){
//     description = newdescription;
//   }

//     set _date(String newdate){
//     date = newdate;
//   }

//     set _time(String newtime){
//     time = newtime;
//   }

// //convert a note object into a map object
//   Map<String, dynamic> toMap(){

//     var map = Map<String, dynamic>();


//     map['id'] = id;
//     map['description'] = description;
//     map['date'] = date;
//     map['time'] = time;

//     return map; 

//   }

//   //extract a note obj from a map obj
//   Note.fromMapObject(Map<String, dynamic> map){
//     id = map['id'];
//     description = map['description'];
//     date = map['date'];
//     time = map['time'];
//   }

// }