class UserApp {
  int id;
  String firstName;
  String lastName;
  double debt;
  String password;
  String avatar;

  UserApp(
      {this.id,
      this.firstName,
      this.lastName,
      this.debt,
      this.password,
      this.avatar});
}

checkUser(int id, String password) {
  List<UserApp> users = getAllUser();
  for (var user in users) {
    if (user.id == id && user.password == password) {
      return true;
    }
  }
  return false;
}

List<UserApp> getAllUser() {
  List<UserApp> usersList = [];

  usersList.add(UserApp(
      id: 1,
      firstName: 'Tom',
      lastName: 'Hardy',
      debt: 1000,
      password: 'test',
      avatar:
          'https://www.nme.com/wp-content/uploads/2018/08/GettyImages-813932476.jpg'));

  usersList.add(UserApp(
      id: 2,
      firstName: 'Ilon',
      lastName: 'Mask',
      debt: 50,
      password: 'test',
      avatar:
          'https://www.ixbt.com/img/x780/n1/news/2021/4/0/mfile_1569242_1_L_20210108014210_large.png'));

  usersList.add(UserApp(
      id: 3,
      firstName: 'Jack',
      lastName: 'Ma',
      debt: 777,
      password: 'test',
      avatar:
          'https://c.files.bbci.co.uk/1973/production/_115251560_jackma.jpg'));
  return usersList;
}
