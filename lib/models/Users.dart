class Users{
  String id;
  String fullname;
  String email;
  String password;

  Users( {required this.id,required this.email, required this.fullname, required this.password});
   
factory Users.fromMap(Map<String, dynamic> json) => Users(
  id : json["id"],
  fullname: json["fullname"],
  password: json["password"],
  email: json["email"]
);

//convert a note object into a map object
  Map<String, dynamic> toMap() =>{
    "id": id,
    "fullname": fullname,
    "email": email,
    "password": password
  };

  
}