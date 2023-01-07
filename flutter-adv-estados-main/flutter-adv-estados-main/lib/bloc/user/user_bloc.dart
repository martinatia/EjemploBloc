

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent,UserState>{
  UserBloc() : super(const UserInitialState()){

    // on<ActivateUser>((event, emit){
    //   // print('ActivateUser called');
    //   emit(UserSetState(event.user));
    // });
     on<ActivateUser>((event, emit) => emit(UserSetState(event.user)));

     on<ChangeUserAgeEvent>(((event, emit) {
      print('ChangeUserAgeEvent called');
      if(!state.existUser) return;
      // print('Se emitirá un nuevo estado');
      
      //primero debo cambiar la edad

      emit(UserSetState(state.user!.copyWith(edad: event.age)));
     }));


     /*/esta fué mi solución a la tarea Agregar Profesión...

     on<AddProfessionEvent>(((event, emit){
      // print('AddProfessionEvent called');
      if(!state.existUser) return ;
      User newUser = state.user!.copyWith();
      newUser.profesiones.add(event.newProfession);
      emit(UserSetState(newUser));
      //Solución por Fernando Herrera
     }));*/


      //Solución por Fernando Herrera 
      on<AddProfessionEvent>((event, emit) {
        if(!state.existUser) return ;
        final professions = [...state.user!.profesiones,event.newProfession];
        emit(UserSetState(state.user!.copyWith(profesiones: professions)));
      });

      on<DeleteUserEvent>((event, emit) => emit(const UserInitialState()));
    }

}