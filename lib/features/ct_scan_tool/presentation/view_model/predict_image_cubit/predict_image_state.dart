abstract class PredictImageState {}

class PredictImageInitial extends PredictImageState {}

class PredictImageLoading extends PredictImageState {}

class PredictImageSuccess extends PredictImageState {
  final String predictMessage;

  PredictImageSuccess(this.predictMessage);
}

class PredictImageFailure extends PredictImageState {
  final String errMessage;

  PredictImageFailure(this.errMessage);
}
