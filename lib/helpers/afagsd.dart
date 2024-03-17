import 'dart:async' show Future;

import 'package:adapty_flutter/adapty_flutter.dart';

class Dfsdfasdfaafas {
  void Function(AdaptyError)? onDfsdfasdfaafasErrorOccurred;
  void Function(Object)? onLearAdaUnknownErrorOccurred;

  final learAdaAdapty = Adapty();

  static final Dfsdfasdfaafas _learAdaInstance = Dfsdfasdfaafas._internal();

  factory Dfsdfasdfaafas() {
    return _learAdaInstance;
  }

  Dfsdfasdfaafas._internal();

  Future<AdaptyProfile?> safagfag() async {
    try {
      final ocev = await learAdaAdapty.getProfile();
      return ocev;
    } on AdaptyError catch (adaptyError) {
      onDfsdfasdfaafasErrorOccurred?.call(adaptyError);
    } catch (e) {
      onLearAdaUnknownErrorOccurred?.call(e);
    }
    return null;
  }

  Future<void> sdgdgbfhdsg() async {
    try {
      learAdaAdapty.setLogLevel(AdaptyLogLevel.verbose);
      learAdaAdapty.activate();
    } on AdaptyError catch (adaptyError) {
      onDfsdfasdfaafasErrorOccurred?.call(adaptyError);
    } catch (e) {
      onLearAdaUnknownErrorOccurred?.call(e);
    }
  }

  Future<AdaptyPaywall?> jhkgjfhdgsbfng(
    String learAdaPaywallId,
  ) async {
    try {
      final learAdaocev = await learAdaAdapty.getPaywall(
        placementId: learAdaPaywallId,
        loadTimeout: const Duration(seconds: 5),
      );
      return learAdaocev;
    } on AdaptyError catch (adaptyError) {
      onDfsdfasdfaafasErrorOccurred?.call(adaptyError);
    } catch (e) {
      onLearAdaUnknownErrorOccurred?.call(e);
    }

    return null;
  }

  Future<List<AdaptyPaywallProduct>?> hgfhdgsbfngmh(
    AdaptyPaywall learAdaPaywall,
  ) async {
    try {
      final learAdaocev =
          await learAdaAdapty.getPaywallProducts(paywall: learAdaPaywall);
      return learAdaocev;
    } on AdaptyError catch (adaptyError) {
      onDfsdfasdfaafasErrorOccurred?.call(adaptyError);
    } catch (e) {
      onLearAdaUnknownErrorOccurred?.call(e);
    }

    return null;
  }

  Future<AdaptyProfile?> khgjfhdgsdhfjgh(
      AdaptyPaywallProduct learAdaProduct) async {
    try {
      final learAdaocev =
          await learAdaAdapty.makePurchase(product: learAdaProduct);
      return learAdaocev;
    } on AdaptyError catch (adaptyError) {
      onDfsdfasdfaafasErrorOccurred?.call(adaptyError);
    } catch (e) {
      onLearAdaUnknownErrorOccurred?.call(e);
    }

    return null;
  }

  Future<AdaptyProfile?> adfsgfasd() async {
    try {
      final learAdaocev = await learAdaAdapty.restorePurchases();

      return learAdaocev;
    } on AdaptyError catch (adaptyError) {
      onDfsdfasdfaafasErrorOccurred?.call(adaptyError);
    } catch (e) {
      onLearAdaUnknownErrorOccurred?.call(e);
    }

    return null;
  }

  Future<bool> liukytjrhgsdv() async {
    try {
      final learAdaProfile = await learAdaAdapty.getProfile();
      if (learAdaProfile.accessLevels['premium']?.isActive ?? false) {
        return true;
      }
    } on AdaptyError catch (adaptyError) {
      onDfsdfasdfaafasErrorOccurred?.call(adaptyError);
    } catch (e) {
      onLearAdaUnknownErrorOccurred?.call(e);
    }

    return false;
  }
}
