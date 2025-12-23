Future<void> fakeNetworkDelay([int seconds = 2]) async {
  await Future.delayed(Duration(seconds: seconds));
}
