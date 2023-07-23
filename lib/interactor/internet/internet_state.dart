abstract class InternetState {}

class InternetConnectionState extends InternetState {
  InternetConnectionState({required this.isConnection});
  final bool isConnection;
}
