package com.example.kraken_animelist

import io.flutter.embedding.android.FlutterActivity
import android.os.AsyncTask
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.DelicateCoroutinesApi
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.BufferedReader
import java.lang.Exception
import java.net.HttpURLConnection
import java.net.URL

@OptIn(DelicateCoroutinesApi::class)
class MainActivity: FlutterActivity() {
    private val CHANNEL = "fetchAnimeList"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "fetchAnimeList") {
                // fetch animelist from the internet asynchronously
                fetchAnimeList(result)
            } else {
                result.notImplemented()
            }
        }
    }

    private fun fetchAnimeList(result: MethodChannel.Result) {
        // Launch a coroutine in the IO context
        // This will execute in a background thread
        // You can also use the default Dispatcher if needed: kotlinx.coroutines.Dispatchers.Default
        kotlinx.coroutines.GlobalScope.launch(Dispatchers.IO) {
            try {
                val url = URL("https://api.jikan.moe/v4/top/anime")
                val connection = url.openConnection() as HttpURLConnection
                connection.requestMethod = "GET"

                val inputStream = connection.inputStream
                val response = inputStream.bufferedReader().use(BufferedReader::readText)

                // Use withContext to switch back to the main thread
                withContext(Dispatchers.Main) {
                    result.success(response)
                }
            } catch (e: Exception) {
                // Use withContext to switch back to the main thread
                withContext(Dispatchers.Main) {
                    result.error("FETCH_ERROR", "Failed to fetch anime list", e.toString())
                }
            }
        }
    }
}
