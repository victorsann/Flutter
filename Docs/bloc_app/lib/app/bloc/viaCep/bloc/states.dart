abstract class SearchCepStates {} 

class Success extends SearchCepStates {
  final Map address;
  Success(this.address);
}

class Loading extends SearchCepStates {
  Loading();
}

class Error extends SearchCepStates {
  final String error;
  Error(this.error);
}
