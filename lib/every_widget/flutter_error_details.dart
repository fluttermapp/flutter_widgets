//!FlutterErrorDetails

import 'package:flutter/material.dart';

void main() {
  try {
    // Try to do something!
  } catch (error) {
    // Catch & report error.
    FlutterError.reportError(FlutterErrorDetails(
      exception: error,
      library: 'Flutter test framework',
      context: ErrorSummary('while running async test code'),
    ));
  }
}