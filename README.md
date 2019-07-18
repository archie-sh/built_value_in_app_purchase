# built_value_in_app_purchase

[built_value](https://pub.dev/packages/built_value) models that match google's in_app_purchase models with parsing included.

## Getting Started
Import
```dart
import 'package:built_value_in_app_purchase/built_value_in_app_purchase.dart'
    as built_value_purchase_details;
```
Use
```dart
built_value_purchase_details.PurchaseDetails.fromCustomFactory(
                action.purchaseDetails);
```

Don't forget to register the serializers. 
