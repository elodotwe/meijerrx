.class Lti/modules/titanium/geolocation/TiLocation$1;
.super Landroid/os/AsyncTask;
.source "TiLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/geolocation/TiLocation;->getLookUpTask()Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/geolocation/TiLocation;


# direct methods
.method constructor <init>(Lti/modules/titanium/geolocation/TiLocation;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lti/modules/titanium/geolocation/TiLocation$1;->this$0:Lti/modules/titanium/geolocation/TiLocation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 24
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 222
    const/4 v10, 0x0

    .line 223
    .local v10, "geocodeResponseHandler":Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;
    const/4 v8, 0x0

    .line 225
    .local v8, "event":Lorg/appcelerator/kroll/KrollDict;
    const/16 v21, 0x0

    :try_start_0
    aget-object v20, p1, v21

    check-cast v20, Ljava/lang/String;

    .line 226
    .local v20, "url":Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v5, p1, v21

    check-cast v5, Ljava/lang/String;

    .line 227
    .local v5, "direction":Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v21, p1, v21

    move-object/from16 v0, v21

    check-cast v0, Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;

    move-object v10, v0

    .line 229
    const-string v21, "TiLocation"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "GEO URL ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "DEBUG_MODE"

    invoke-static/range {v21 .. v23}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v4, 0x0

    .line 232
    .local v4, "connection":Ljava/net/HttpURLConnection;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    .local v18, "result":Ljava/lang/StringBuilder;
    :try_start_1
    new-instance v14, Ljava/net/URL;

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 235
    .local v14, "mURL":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 236
    const-string v21, "Expect"

    const-string v22, "100-continue"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 238
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 239
    .local v17, "responseCode":I
    const/16 v21, 0xc8

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 240
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 241
    .local v11, "in":Ljava/io/InputStream;
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 243
    .local v15, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "line":Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 244
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 249
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "mURL":Ljava/net/URL;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .end local v17    # "responseCode":I
    :catch_0
    move-exception v6

    .line 250
    .local v6, "e":Ljava/lang/Exception;
    const/16 v16, 0x0

    .line 252
    .local v16, "response":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 253
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    const-string v21, "TiLocation"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "received Geo ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "DEBUG_MODE"

    invoke-static/range {v21 .. v23}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 258
    if-eqz v16, :cond_1

    .line 260
    :try_start_3
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 261
    .local v12, "jsonObject":Lorg/json/JSONObject;
    const-string v21, "success"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 262
    const-string v21, "forward"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/geolocation/TiLocation$1;->this$0:Lti/modules/titanium/geolocation/TiLocation;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v12}, Lti/modules/titanium/geolocation/TiLocation;->access$000(Lti/modules/titanium/geolocation/TiLocation;Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v8

    .line 268
    :goto_2
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 285
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "direction":Ljava/lang/String;
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v16    # "response":Ljava/lang/String;
    .end local v18    # "result":Ljava/lang/StringBuilder;
    .end local v20    # "url":Ljava/lang/String;
    :cond_1
    :goto_3
    if-eqz v10, :cond_3

    .line 286
    if-nez v8, :cond_2

    .line 287
    new-instance v8, Lorg/appcelerator/kroll/KrollDict;

    .end local v8    # "event":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v8}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 288
    .restart local v8    # "event":Lorg/appcelerator/kroll/KrollDict;
    const/16 v21, -0x1

    const-string v22, "Error obtaining geolocation"

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 290
    :cond_2
    invoke-interface {v10, v8}, Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;->handleGeocodeResponse(Lorg/appcelerator/kroll/KrollDict;)V

    .line 293
    :cond_3
    const/16 v21, -0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    return-object v21

    .line 246
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "direction":Ljava/lang/String;
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "mURL":Ljava/net/URL;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "responseCode":I
    .restart local v18    # "result":Ljava/lang/StringBuilder;
    .restart local v20    # "url":Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v16

    .line 252
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v13    # "line":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "response":Ljava/lang/String;
    :goto_4
    if-eqz v4, :cond_0

    .line 253
    :try_start_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 281
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "direction":Ljava/lang/String;
    .end local v14    # "mURL":Ljava/net/URL;
    .end local v16    # "response":Ljava/lang/String;
    .end local v17    # "responseCode":I
    .end local v18    # "result":Ljava/lang/StringBuilder;
    .end local v20    # "url":Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 282
    .local v19, "t":Ljava/lang/Throwable;
    :goto_5
    const-string v21, "TiLocation"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error retrieving geocode information ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "DEBUG_MODE"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_3

    .line 248
    .end local v19    # "t":Ljava/lang/Throwable;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "direction":Ljava/lang/String;
    .restart local v14    # "mURL":Ljava/net/URL;
    .restart local v17    # "responseCode":I
    .restart local v18    # "result":Ljava/lang/StringBuilder;
    .restart local v20    # "url":Ljava/lang/String;
    :cond_5
    const/16 v16, 0x0

    .restart local v16    # "response":Ljava/lang/String;
    goto :goto_4

    .line 252
    .end local v14    # "mURL":Ljava/net/URL;
    .end local v16    # "response":Ljava/lang/String;
    .end local v17    # "responseCode":I
    :catchall_0
    move-exception v21

    if-eqz v4, :cond_6

    .line 253
    :try_start_6
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v21
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 266
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    .restart local v16    # "response":Ljava/lang/String;
    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/geolocation/TiLocation$1;->this$0:Lti/modules/titanium/geolocation/TiLocation;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v12}, Lti/modules/titanium/geolocation/TiLocation;->access$100(Lti/modules/titanium/geolocation/TiLocation;Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v8

    goto :goto_2

    .line 271
    :cond_8
    new-instance v9, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v9}, Lorg/appcelerator/kroll/KrollDict;-><init>()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 272
    .end local v8    # "event":Lorg/appcelerator/kroll/KrollDict;
    .local v9, "event":Lorg/appcelerator/kroll/KrollDict;
    :try_start_8
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unable to resolve message: Code ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "errorcode"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 273
    .local v7, "errorCode":Ljava/lang/String;
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0, v7}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    move-object v8, v9

    .end local v9    # "event":Lorg/appcelerator/kroll/KrollDict;
    .restart local v8    # "event":Lorg/appcelerator/kroll/KrollDict;
    goto/16 :goto_3

    .line 276
    .end local v7    # "errorCode":Ljava/lang/String;
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v6

    .line 277
    .local v6, "e":Lorg/json/JSONException;
    :goto_6
    :try_start_9
    const-string v21, "TiLocation"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error converting geo response to JSONObject ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "DEBUG_MODE"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    .line 281
    .end local v6    # "e":Lorg/json/JSONException;
    .end local v8    # "event":Lorg/appcelerator/kroll/KrollDict;
    .restart local v9    # "event":Lorg/appcelerator/kroll/KrollDict;
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    :catch_3
    move-exception v19

    move-object v8, v9

    .end local v9    # "event":Lorg/appcelerator/kroll/KrollDict;
    .restart local v8    # "event":Lorg/appcelerator/kroll/KrollDict;
    goto/16 :goto_5

    .line 276
    .end local v8    # "event":Lorg/appcelerator/kroll/KrollDict;
    .restart local v9    # "event":Lorg/appcelerator/kroll/KrollDict;
    :catch_4
    move-exception v6

    move-object v8, v9

    .end local v9    # "event":Lorg/appcelerator/kroll/KrollDict;
    .restart local v8    # "event":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lti/modules/titanium/geolocation/TiLocation$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
