part of 'user_bloc.dart';

@immutable
abstract class UserEvent{

}


class ActivateUser extends UserEvent{
  final User user;

  ActivateUser(this.user);
}

class ChangeUserAgeEvent extends UserEvent{
  final int age;
  ChangeUserAgeEvent(this.age);
}

class AddProfessionEvent extends UserEvent{
  final String newProfession;

  AddProfessionEvent(this.newProfession);

}

class DeleteUserEvent extends UserEvent{  
  
}