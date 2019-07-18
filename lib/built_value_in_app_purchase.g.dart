// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_value_in_app_purchase;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IAPSource _$GooglePlay = const IAPSource._('GooglePlay');
const IAPSource _$AppStore = const IAPSource._('AppStore');

IAPSource _$iAPSourceValueOf(String name) {
  switch (name) {
    case 'GooglePlay':
      return _$GooglePlay;
    case 'AppStore':
      return _$AppStore;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<IAPSource> _$iAPSourceValues =
    new BuiltSet<IAPSource>(const <IAPSource>[
  _$GooglePlay,
  _$AppStore,
]);

const PurchaseStatus _$pending = const PurchaseStatus._('pending');
const PurchaseStatus _$purchased = const PurchaseStatus._('purchased');
const PurchaseStatus _$error = const PurchaseStatus._('error');

PurchaseStatus _$purchaseStatusValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$pending;
    case 'purchased':
      return _$purchased;
    case 'error':
      return _$error;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PurchaseStatus> _$purchaseStatusValues =
    new BuiltSet<PurchaseStatus>(const <PurchaseStatus>[
  _$pending,
  _$purchased,
  _$error,
]);

Serializer<PurchaseDetails> _$purchaseDetailsSerializer =
    new _$PurchaseDetailsSerializer();
Serializer<PurchaseVerificationData> _$purchaseVerificationDataSerializer =
    new _$PurchaseVerificationDataSerializer();
Serializer<IAPSource> _$iAPSourceSerializer = new _$IAPSourceSerializer();
Serializer<PurchaseStatus> _$purchaseStatusSerializer =
    new _$PurchaseStatusSerializer();
Serializer<IAPError> _$iAPErrorSerializer = new _$IAPErrorSerializer();

class _$PurchaseDetailsSerializer
    implements StructuredSerializer<PurchaseDetails> {
  @override
  final Iterable<Type> types = const [PurchaseDetails, _$PurchaseDetails];
  @override
  final String wireName = 'PurchaseDetails';

  @override
  Iterable<Object> serialize(Serializers serializers, PurchaseDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'purchaseID',
      serializers.serialize(object.purchaseID,
          specifiedType: const FullType(String)),
      'productID',
      serializers.serialize(object.productID,
          specifiedType: const FullType(String)),
      'transactionDate',
      serializers.serialize(object.transactionDate,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(PurchaseStatus)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(IAPError)),
    ];
    if (object.purchaseVerificationData != null) {
      result
        ..add('purchaseVerificationData')
        ..add(serializers.serialize(object.purchaseVerificationData,
            specifiedType: const FullType(PurchaseVerificationData)));
    }
    return result;
  }

  @override
  PurchaseDetails deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PurchaseDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'purchaseID':
          result.purchaseID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'productID':
          result.productID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'purchaseVerificationData':
          result.purchaseVerificationData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PurchaseVerificationData))
              as PurchaseVerificationData);
          break;
        case 'transactionDate':
          result.transactionDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(PurchaseStatus)) as PurchaseStatus;
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
              specifiedType: const FullType(IAPError)) as IAPError);
          break;
      }
    }

    return result.build();
  }
}

class _$PurchaseVerificationDataSerializer
    implements StructuredSerializer<PurchaseVerificationData> {
  @override
  final Iterable<Type> types = const [
    PurchaseVerificationData,
    _$PurchaseVerificationData
  ];
  @override
  final String wireName = 'PurchaseVerificationData';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PurchaseVerificationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.localVerificationData != null) {
      result
        ..add('localVerificationData')
        ..add(serializers.serialize(object.localVerificationData,
            specifiedType: const FullType(String)));
    }
    if (object.serverVerificationData != null) {
      result
        ..add('serverVerificationData')
        ..add(serializers.serialize(object.serverVerificationData,
            specifiedType: const FullType(String)));
    }
    if (object.transactionDate != null) {
      result
        ..add('transactionDate')
        ..add(serializers.serialize(object.transactionDate,
            specifiedType: const FullType(String)));
    }
    if (object.source != null) {
      result
        ..add('source')
        ..add(serializers.serialize(object.source,
            specifiedType: const FullType(IAPSource)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(PurchaseStatus)));
    }
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(IAPError)));
    }
    return result;
  }

  @override
  PurchaseVerificationData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PurchaseVerificationDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'localVerificationData':
          result.localVerificationData = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serverVerificationData':
          result.serverVerificationData = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transactionDate':
          result.transactionDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(IAPSource)) as IAPSource;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(PurchaseStatus)) as PurchaseStatus;
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
              specifiedType: const FullType(IAPError)) as IAPError);
          break;
      }
    }

    return result.build();
  }
}

class _$IAPSourceSerializer implements PrimitiveSerializer<IAPSource> {
  @override
  final Iterable<Type> types = const <Type>[IAPSource];
  @override
  final String wireName = 'IAPSource';

  @override
  Object serialize(Serializers serializers, IAPSource object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  IAPSource deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IAPSource.valueOf(serialized as String);
}

class _$PurchaseStatusSerializer
    implements PrimitiveSerializer<PurchaseStatus> {
  @override
  final Iterable<Type> types = const <Type>[PurchaseStatus];
  @override
  final String wireName = 'PurchaseStatus';

  @override
  Object serialize(Serializers serializers, PurchaseStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  PurchaseStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PurchaseStatus.valueOf(serialized as String);
}

class _$IAPErrorSerializer implements StructuredSerializer<IAPError> {
  @override
  final Iterable<Type> types = const [IAPError, _$IAPError];
  @override
  final String wireName = 'IAPError';

  @override
  Iterable<Object> serialize(Serializers serializers, IAPError object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.source != null) {
      result
        ..add('source')
        ..add(serializers.serialize(object.source,
            specifiedType: const FullType(IAPSource)));
    }
    if (object.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(object.code,
            specifiedType: const FullType(String)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.details != null) {
      result
        ..add('details')
        ..add(serializers.serialize(object.details,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  IAPError deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IAPErrorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(IAPSource)) as IAPSource;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'details':
          result.details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PurchaseDetails extends PurchaseDetails {
  @override
  final String purchaseID;
  @override
  final String productID;
  @override
  final PurchaseVerificationData purchaseVerificationData;
  @override
  final String transactionDate;
  @override
  final PurchaseStatus status;
  @override
  final IAPError error;

  factory _$PurchaseDetails([void Function(PurchaseDetailsBuilder) updates]) =>
      (new PurchaseDetailsBuilder()..update(updates)).build();

  _$PurchaseDetails._(
      {this.purchaseID,
      this.productID,
      this.purchaseVerificationData,
      this.transactionDate,
      this.status,
      this.error})
      : super._() {
    if (purchaseID == null) {
      throw new BuiltValueNullFieldError('PurchaseDetails', 'purchaseID');
    }
    if (productID == null) {
      throw new BuiltValueNullFieldError('PurchaseDetails', 'productID');
    }
    if (transactionDate == null) {
      throw new BuiltValueNullFieldError('PurchaseDetails', 'transactionDate');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('PurchaseDetails', 'status');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('PurchaseDetails', 'error');
    }
  }

  @override
  PurchaseDetails rebuild(void Function(PurchaseDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PurchaseDetailsBuilder toBuilder() =>
      new PurchaseDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurchaseDetails &&
        purchaseID == other.purchaseID &&
        productID == other.productID &&
        purchaseVerificationData == other.purchaseVerificationData &&
        transactionDate == other.transactionDate &&
        status == other.status &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, purchaseID.hashCode), productID.hashCode),
                    purchaseVerificationData.hashCode),
                transactionDate.hashCode),
            status.hashCode),
        error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PurchaseDetails')
          ..add('purchaseID', purchaseID)
          ..add('productID', productID)
          ..add('purchaseVerificationData', purchaseVerificationData)
          ..add('transactionDate', transactionDate)
          ..add('status', status)
          ..add('error', error))
        .toString();
  }
}

class PurchaseDetailsBuilder
    implements Builder<PurchaseDetails, PurchaseDetailsBuilder> {
  _$PurchaseDetails _$v;

  String _purchaseID;
  String get purchaseID => _$this._purchaseID;
  set purchaseID(String purchaseID) => _$this._purchaseID = purchaseID;

  String _productID;
  String get productID => _$this._productID;
  set productID(String productID) => _$this._productID = productID;

  PurchaseVerificationDataBuilder _purchaseVerificationData;
  PurchaseVerificationDataBuilder get purchaseVerificationData =>
      _$this._purchaseVerificationData ??=
          new PurchaseVerificationDataBuilder();
  set purchaseVerificationData(
          PurchaseVerificationDataBuilder purchaseVerificationData) =>
      _$this._purchaseVerificationData = purchaseVerificationData;

  String _transactionDate;
  String get transactionDate => _$this._transactionDate;
  set transactionDate(String transactionDate) =>
      _$this._transactionDate = transactionDate;

  PurchaseStatus _status;
  PurchaseStatus get status => _$this._status;
  set status(PurchaseStatus status) => _$this._status = status;

  IAPErrorBuilder _error;
  IAPErrorBuilder get error => _$this._error ??= new IAPErrorBuilder();
  set error(IAPErrorBuilder error) => _$this._error = error;

  PurchaseDetailsBuilder();

  PurchaseDetailsBuilder get _$this {
    if (_$v != null) {
      _purchaseID = _$v.purchaseID;
      _productID = _$v.productID;
      _purchaseVerificationData = _$v.purchaseVerificationData?.toBuilder();
      _transactionDate = _$v.transactionDate;
      _status = _$v.status;
      _error = _$v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PurchaseDetails other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PurchaseDetails;
  }

  @override
  void update(void Function(PurchaseDetailsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PurchaseDetails build() {
    _$PurchaseDetails _$result;
    try {
      _$result = _$v ??
          new _$PurchaseDetails._(
              purchaseID: purchaseID,
              productID: productID,
              purchaseVerificationData: _purchaseVerificationData?.build(),
              transactionDate: transactionDate,
              status: status,
              error: error.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'purchaseVerificationData';
        _purchaseVerificationData?.build();

        _$failedField = 'error';
        error.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PurchaseDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PurchaseVerificationData extends PurchaseVerificationData {
  @override
  final String localVerificationData;
  @override
  final String serverVerificationData;
  @override
  final String transactionDate;
  @override
  final IAPSource source;
  @override
  final PurchaseStatus status;
  @override
  final IAPError error;

  factory _$PurchaseVerificationData(
          [void Function(PurchaseVerificationDataBuilder) updates]) =>
      (new PurchaseVerificationDataBuilder()..update(updates)).build();

  _$PurchaseVerificationData._(
      {this.localVerificationData,
      this.serverVerificationData,
      this.transactionDate,
      this.source,
      this.status,
      this.error})
      : super._();

  @override
  PurchaseVerificationData rebuild(
          void Function(PurchaseVerificationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PurchaseVerificationDataBuilder toBuilder() =>
      new PurchaseVerificationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurchaseVerificationData &&
        localVerificationData == other.localVerificationData &&
        serverVerificationData == other.serverVerificationData &&
        transactionDate == other.transactionDate &&
        source == other.source &&
        status == other.status &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, localVerificationData.hashCode),
                        serverVerificationData.hashCode),
                    transactionDate.hashCode),
                source.hashCode),
            status.hashCode),
        error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PurchaseVerificationData')
          ..add('localVerificationData', localVerificationData)
          ..add('serverVerificationData', serverVerificationData)
          ..add('transactionDate', transactionDate)
          ..add('source', source)
          ..add('status', status)
          ..add('error', error))
        .toString();
  }
}

class PurchaseVerificationDataBuilder
    implements
        Builder<PurchaseVerificationData, PurchaseVerificationDataBuilder> {
  _$PurchaseVerificationData _$v;

  String _localVerificationData;
  String get localVerificationData => _$this._localVerificationData;
  set localVerificationData(String localVerificationData) =>
      _$this._localVerificationData = localVerificationData;

  String _serverVerificationData;
  String get serverVerificationData => _$this._serverVerificationData;
  set serverVerificationData(String serverVerificationData) =>
      _$this._serverVerificationData = serverVerificationData;

  String _transactionDate;
  String get transactionDate => _$this._transactionDate;
  set transactionDate(String transactionDate) =>
      _$this._transactionDate = transactionDate;

  IAPSource _source;
  IAPSource get source => _$this._source;
  set source(IAPSource source) => _$this._source = source;

  PurchaseStatus _status;
  PurchaseStatus get status => _$this._status;
  set status(PurchaseStatus status) => _$this._status = status;

  IAPErrorBuilder _error;
  IAPErrorBuilder get error => _$this._error ??= new IAPErrorBuilder();
  set error(IAPErrorBuilder error) => _$this._error = error;

  PurchaseVerificationDataBuilder();

  PurchaseVerificationDataBuilder get _$this {
    if (_$v != null) {
      _localVerificationData = _$v.localVerificationData;
      _serverVerificationData = _$v.serverVerificationData;
      _transactionDate = _$v.transactionDate;
      _source = _$v.source;
      _status = _$v.status;
      _error = _$v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PurchaseVerificationData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PurchaseVerificationData;
  }

  @override
  void update(void Function(PurchaseVerificationDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PurchaseVerificationData build() {
    _$PurchaseVerificationData _$result;
    try {
      _$result = _$v ??
          new _$PurchaseVerificationData._(
              localVerificationData: localVerificationData,
              serverVerificationData: serverVerificationData,
              transactionDate: transactionDate,
              source: source,
              status: status,
              error: _error?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PurchaseVerificationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$IAPError extends IAPError {
  @override
  final IAPSource source;
  @override
  final String code;
  @override
  final String message;
  @override
  final String details;

  factory _$IAPError([void Function(IAPErrorBuilder) updates]) =>
      (new IAPErrorBuilder()..update(updates)).build();

  _$IAPError._({this.source, this.code, this.message, this.details})
      : super._();

  @override
  IAPError rebuild(void Function(IAPErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IAPErrorBuilder toBuilder() => new IAPErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IAPError &&
        source == other.source &&
        code == other.code &&
        message == other.message &&
        details == other.details;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, source.hashCode), code.hashCode), message.hashCode),
        details.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IAPError')
          ..add('source', source)
          ..add('code', code)
          ..add('message', message)
          ..add('details', details))
        .toString();
  }
}

class IAPErrorBuilder implements Builder<IAPError, IAPErrorBuilder> {
  _$IAPError _$v;

  IAPSource _source;
  IAPSource get source => _$this._source;
  set source(IAPSource source) => _$this._source = source;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _details;
  String get details => _$this._details;
  set details(String details) => _$this._details = details;

  IAPErrorBuilder();

  IAPErrorBuilder get _$this {
    if (_$v != null) {
      _source = _$v.source;
      _code = _$v.code;
      _message = _$v.message;
      _details = _$v.details;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IAPError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IAPError;
  }

  @override
  void update(void Function(IAPErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IAPError build() {
    final _$result = _$v ??
        new _$IAPError._(
            source: source, code: code, message: message, details: details);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
