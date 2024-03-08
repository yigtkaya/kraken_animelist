package com.example.kraken_animelist

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "fetchAnimelist").setMethodCallHandler { call, result ->
            if (call.method == "fetchAnimelist") {
                // fetch animelist from the internet
                val animelist = fetchAnimelist()
                result.success(animelist)
            } else {
                result.notImplemented()
            }
        }
    }
}
