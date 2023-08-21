import 'package:equatable/equatable.dart';

class DietPageState extends Equatable {
  const DietPageState({
    this.isLoading,
    this.isDietRequestInProgress,
    this.isDietRequestSuccessful,
    this.isListReady,
    this.dietDataList,
    this.requestMessage,
    this.partitionerName,

  });

  final bool? isLoading;
  final bool? isDietRequestInProgress;
  final bool? isDietRequestSuccessful;
  final bool? isListReady;
  final List? dietDataList;
  final String? requestMessage;
  final String? partitionerName;


  @override
  List<Object?> get props => [
        isLoading,
        isDietRequestInProgress,
        isDietRequestSuccessful,
        isListReady,
        dietDataList,
        requestMessage,
        partitionerName,

      ];

  DietPageState copyWith({
    bool? isLoading,
    bool? isDietRequestInProgress,
    bool? isDietRequestSuccessful,
    bool? isListReady,
    List? dietDataList,
    String? requestMessage,
    String? partitionerName,

  }) {
    return DietPageState(
      isLoading: isLoading,
      isDietRequestInProgress: isDietRequestInProgress,
      isListReady: isListReady,
      dietDataList: dietDataList,
      requestMessage: requestMessage,
      isDietRequestSuccessful: isDietRequestSuccessful,
      partitionerName: partitionerName,

    );
  }
}
