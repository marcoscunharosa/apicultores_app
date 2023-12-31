import 'package:apicultores_app/features/register_device/find_new_devices/business_logic/bloc/find_new_devices_bloc.dart';
import 'package:apicultores_app/features/register_device/find_new_devices/presentation/widgets/states/find_new_devices_error_widget.dart';
import 'package:apicultores_app/features/register_device/find_new_devices/presentation/widgets/states/find_new_devices_initial_widget.dart';
import 'package:apicultores_app/features/register_device/find_new_devices/presentation/widgets/states/find_new_devices_search_stop_widget.dart';
import 'package:apicultores_app/features/register_device/find_new_devices/presentation/widgets/states/find_new_devices_searching_widget.dart';
import 'package:apicultores_app/features/register_device/shared/devices_navigation_delegate.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FindNewDevicesScreenBuilder extends StatelessWidget {
  const FindNewDevicesScreenBuilder({
    super.key,
    required this.navigationDelegate,
  });
  final DevicesNavigationDelegate navigationDelegate;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FindNewDevicesBloc, FindNewDevicesState>(
      builder: (context, state) {
        return switch (state) {
          FindNewDevicesInitial _ => const FindNewDevicesInitialWidget(),
          FindNewDevicesSearching state => FindNewDevicesSearchingWidget(
              devices: state.scanResults,
              navigationDelegate: navigationDelegate,
            ),
          FindNewDevicesFailure _ => const FindNewDevicesErrorWidget(),
          FindNewDevicesStopSearch state => FindNewDevicesSearchStopWidget(
              devices: state.scanResults,
              navigationDelegate: navigationDelegate,
            ),
        };
      },
    );
  }
}
