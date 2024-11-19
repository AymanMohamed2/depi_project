class PredictedMessageState {}

class PredictedMessageStateInitial extends PredictedMessageState {}

class PredictedMessageStateLoading extends PredictedMessageState {}

class PredictedMessageStateFailure extends PredictedMessageState {
  final String errMessage;

  PredictedMessageStateFailure({required this.errMessage});
}

class PredictedMessageStateSuccess extends PredictedMessageState {
  final String predictMessage;

  PredictedMessageStateSuccess({required this.predictMessage});
}
