part of 'google_bloc.dart';

@immutable
sealed class GoogleState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

final class GoogleInitial extends GoogleState {}
final class GoogleLoading extends GoogleState {}//dialog
final class GoogleCompleted extends GoogleState {
final GoogleUserModel googleUserModel;
GoogleCompleted(this.googleUserModel);
@override

  List<Object?> get props => [googleUserModel];

}//nav,notify
final class GoogleError extends GoogleState {
  final String message;
  GoogleError(this.message);
  @override
  List<Object?> get props => [message];
}//toast
final class GoogleSignOut extends GoogleState {}//dialog
