part of 'device_details_bloc.dart';

sealed class DeviceDetailsState extends Equatable {
  const DeviceDetailsState();

  @override
  List<Object> get props => [];
}

final class DeviceDetailsInitial extends DeviceDetailsState {}

final class DeviceDetailsLoading extends DeviceDetailsState {}

final class DeviceDetailsRemoveSucces extends DeviceDetailsState {}

final class DeviceDetailsUpdateSuccess extends DeviceDetailsState {}

final class DeviceDetailsDataClearedSuccess extends DeviceDetailsState {}

final class DeviceDetailsRemoveFailure extends DeviceDetailsState {}

final class DeviceDetailsUpdateFailure extends DeviceDetailsState {}

final class DeviceDetailsDataClearedFailure extends DeviceDetailsState {}

final class DeviceDetailsDisconnectSuccess extends DeviceDetailsState {}

final class DeviceDetailsDisconnectFailure extends DeviceDetailsState {}
