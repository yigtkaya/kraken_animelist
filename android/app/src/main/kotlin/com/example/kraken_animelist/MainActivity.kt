package com.example.kraken_animelist

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.DelicateCoroutinesApi
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.BufferedReader
import java.lang.Exception
import java.net.HttpURLConnection
import java.net.URL

@OptIn(DelicateCoroutinesApi::class)
class MainActivity: FlutterActivity() {
    private val ANIME_CHANNEL = "fetchAnimeList"
    private val CHARACTER_CHANNEL = "fetchCharacterList"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, ANIME_CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "fetchAnimeList") {
                fetchAnimeList(result)
            } else {
                result.notImplemented()
            }
        }

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHARACTER_CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "fetchCharacterList") {
                val id = call.arguments as Int
                fetchCharacterList(id, result)
            } else {
                result.notImplemented()
            }
        }
    }
    private fun fetchCharacterList(id: Int, result: MethodChannel.Result) {
        GlobalScope.launch(Dispatchers.IO) {
            try {
                val url = URL("https://api.example.com/characters/$id")
                val connection = url.openConnection() as HttpURLConnection
                connection.requestMethod = "GET"

                val inputStream = connection.inputStream
                val response = inputStream.bufferedReader().use(BufferedReader::readText)

                withContext(Dispatchers.Main) {
                    result.success(response)
                }
            } catch (e: Exception) {
                withContext(Dispatchers.Main) {
                    result.error("FETCH_ERROR", "Failed to fetch character list", e.toString())
                }
            }
        }
    }
    private fun fetchAnimeList(result: MethodChannel.Result) {
        // This will execute in a background thread
        // You can also use the default Dispatcher
        GlobalScope.launch(Dispatchers.IO) {
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
