@file:OptIn(DelicateCoroutinesApi::class)

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
import java.io.InputStreamReader
import java.lang.Exception
import java.net.HttpURLConnection
import java.net.URL

class MainActivity: FlutterActivity() {
    private val ANIME_CHANNEL = "fetchAnimeList"
    private val CHARACTER_CHANNEL = "fetchCharacterList"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, ANIME_CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "fetchAnimeList" -> {
                    val page = call.arguments as Int
                    fetchAnimeList(page, result)
                }
                "fetchCharacterList" -> {
                    val id = call.arguments as Int
                    fetchCharacterList(id, result)
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }

    private fun fetchCharacterList(id: Int, result: MethodChannel.Result) {
        GlobalScope.launch(Dispatchers.IO) {
            try {
                val url = URL("https://api.jikan.moe/v4/anime/$id/characters")
                val connection = url.openConnection() as HttpURLConnection
                connection.requestMethod = "GET"

                val inputStream = BufferedReader(InputStreamReader(connection.inputStream))
                val response = inputStream.use(BufferedReader::readText)

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

    private fun fetchAnimeList(page: Int, result: MethodChannel.Result) {
        GlobalScope.launch(Dispatchers.IO) {
            try {
                val url = URL("https://api.jikan.moe/v4/top/anime?page=$page")
                val connection = url.openConnection() as HttpURLConnection
                connection.requestMethod = "GET"

                val inputStream = BufferedReader(InputStreamReader(connection.inputStream))
                val response = inputStream.use(BufferedReader::readText)

                withContext(Dispatchers.Main) {
                    result.success(response)
                }
            } catch (e: Exception) {
                withContext(Dispatchers.Main) {
                    result.error("FETCH_ERROR", "Failed to fetch anime list", e.toString())
                }
            }
        }
    }
}
