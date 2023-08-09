extension SoriyaStringExtension on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
  bool get isNotNullOrEmpty => !isNullOrEmpty;

  String? get last {
    if (this == null || this == "null") return null;
    return this!.substring(this!.length - 1);
  }

  String? get first {
    if (this == null || this == "null") return null;
    return this![0];
  }
}
