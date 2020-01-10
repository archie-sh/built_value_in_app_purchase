library built_value_in_app_purchase;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart' as IAPPlugin;

part 'built_value_in_app_purchase.g.dart';

abstract class PurchaseDetails
    implements Built<PurchaseDetails, PurchaseDetailsBuilder> {
  static Serializer<PurchaseDetails> get serializer =>
      _$purchaseDetailsSerializer;

  PurchaseDetails._();

  factory PurchaseDetails([updates(PurchaseDetailsBuilder b)]) =
      _$PurchaseDetails;

  factory PurchaseDetails.fromCustomFactory(
          IAPPlugin.PurchaseDetails iAPPurchaseDetails) =>
      PurchaseDetails((b) => b
        ..purchaseID = iAPPurchaseDetails.purchaseID
        ..productID = iAPPurchaseDetails.productID
        ..purchaseVerificationData.replace(PurchaseVerificationData().rebuild(
            (b) => b
              ..localVerificationData =
                  iAPPurchaseDetails.verificationData?.localVerificationData
              ..serverVerificationData =
                  iAPPurchaseDetails.verificationData?.serverVerificationData
              ..source = iAPPurchaseDetails.verificationData?.source != null
                  ? IAPSource.valueOf(
                      describeEnum(iAPPurchaseDetails.verificationData.source))
                  : null))
        ..transactionDate = iAPPurchaseDetails.transactionDate
        ..status = iAPPurchaseDetails.status != null
            ? PurchaseStatus.valueOf(describeEnum(iAPPurchaseDetails.status))
            : null
        ..error.replace(IAPError().rebuild((b) => b
          ..source = iAPPurchaseDetails.error?.source != null
              ? IAPSource.valueOf(describeEnum(iAPPurchaseDetails.error.source))
              : null
          ..code = iAPPurchaseDetails.error?.code
          ..message = iAPPurchaseDetails.error?.message
          ..details = iAPPurchaseDetails.error?.details?.toString())));

  String get purchaseID;

  String get productID;

  @nullable
  PurchaseVerificationData get purchaseVerificationData;

  String get transactionDate;

  PurchaseStatus get status;

  IAPError get error;
}

abstract class PurchaseVerificationData
    implements
        Built<PurchaseVerificationData, PurchaseVerificationDataBuilder> {
  static Serializer<PurchaseVerificationData> get serializer =>
      _$purchaseVerificationDataSerializer;

  PurchaseVerificationData._();

  factory PurchaseVerificationData(
          [updates(PurchaseVerificationDataBuilder b)]) =
      _$PurchaseVerificationData;

  @nullable
  String get localVerificationData;

  @nullable
  String get serverVerificationData;

  @nullable
  String get transactionDate;

  @nullable
  IAPSource get source;

  @nullable
  PurchaseStatus get status;

  @nullable
  IAPError get error;
}

class IAPSource extends EnumClass {
  const IAPSource._(String name) : super(name);

  static Serializer<IAPSource> get serializer => _$iAPSourceSerializer;

  static const IAPSource GooglePlay = _$GooglePlay;
  static const IAPSource AppStore = _$AppStore;

  static BuiltSet<IAPSource> get values => _$iAPSourceValues;

  static IAPSource valueOf(String name) => _$iAPSourceValueOf(name);
}

class PurchaseStatus extends EnumClass {
  const PurchaseStatus._(String name) : super(name);

  static Serializer<PurchaseStatus> get serializer =>
      _$purchaseStatusSerializer;

  static const PurchaseStatus pending = _$pending;
  static const PurchaseStatus purchased = _$purchased;
  static const PurchaseStatus error = _$error;

  static BuiltSet<PurchaseStatus> get values => _$purchaseStatusValues;

  static PurchaseStatus valueOf(String name) => _$purchaseStatusValueOf(name);
}

abstract class IAPError implements Built<IAPError, IAPErrorBuilder> {
  static Serializer<IAPError> get serializer => _$iAPErrorSerializer;

  IAPError._();

  factory IAPError([updates(IAPErrorBuilder b)]) = _$IAPError;

  @nullable
  IAPSource get source;

  @nullable
  String get code;

  @nullable
  String get message;

  @nullable
  String get details;
}

class Platform extends EnumClass {
  const Platform._(String name) : super(name);

  static const Platform ios = _$ios;
  static const Platform android = _$android;

  static BuiltSet<Platform> get values => _$platformValues;

  static Platform valueOf(String name) => _$platformValueOf(name);
}
