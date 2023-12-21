import 'dart:typed_data';

import 'package:engaz_task/app/injector.dart';
import 'package:engaz_task/core/local_storage/location_storage.dart';
import 'package:engaz_task/core/shared_widgets/circle_indicator.dart';
import 'package:engaz_task/core/shared_widgets/snack_bar.dart';
import 'package:engaz_task/core/utils/app_functions.dart';
import 'package:engaz_task/core/utils/app_images.dart';
import 'package:engaz_task/core/utils/app_values.dart';
import 'package:engaz_task/features/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Uint8List? icon;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      icon = await AppFunctions.getBytesFromAsset(
        AppImages.myLocation,
        AppSize.s80.floor(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          state.maybeWhen(
            getMarkersError: (errorMsg) =>
                errorSnackBar(context: context, errorMsg: errorMsg),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            getMarkersLoading: () =>
                const Center(child: CustomCircleIndicator()),
            orElse: () => GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  di<LocationStorage>().getData()!.latitude!,
                  di<LocationStorage>().getData()!.longitude!,
                ),
                zoom: 13.0,
              ),
              mapType: MapType.normal,
              zoomControlsEnabled: true,
              myLocationButtonEnabled: false,
              markers: {
                Marker(
                  markerId: const MarkerId('myLocation'),
                  position: LatLng(
                    di<HomeCubit>().myLocation!.latitude,
                    di<HomeCubit>().myLocation!.longitude,
                  ),
                  icon: BitmapDescriptor.fromBytes(icon!),
                )
              }.union(di<HomeCubit>().markers),
              polylines: Set.from(di<HomeCubit>().polylines.values),
              onMapCreated: (GoogleMapController googleMapController) {
                di<HomeCubit>()
                    .createMap(googleMapController: googleMapController);
              },
            ),
          );
        },
      ),
    );
  }
}
