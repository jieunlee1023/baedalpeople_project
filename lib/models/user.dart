
class User {

  var id;
  var pw;
  var name;
  var address;

  User({required this.id, required this.pw,required this.name,required this.address});
}

List<User> users = [

  User(id: 'je', pw: '000', name: '이지은', address: '부산광역시 북구'),
  User(id: 'sw', pw: '555', name: '이승원', address: '부산광역시 진구'),


];