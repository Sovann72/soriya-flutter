extension SoriyaObjectExtension on Object? {
  bool get isNull {
    return this == null;
  }

  bool get isNotNull {
    return this != null;
  }
}
