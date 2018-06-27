.class Lcom/appcelerator/analytics/APSAnalyticsService$1;
.super Ljava/lang/Object;
.source "APSAnalyticsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appcelerator/analytics/APSAnalyticsService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appcelerator/analytics/APSAnalyticsService;

.field final synthetic val$self:Lcom/appcelerator/analytics/APSAnalyticsService;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/appcelerator/analytics/APSAnalyticsService;ILcom/appcelerator/analytics/APSAnalyticsService;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->this$0:Lcom/appcelerator/analytics/APSAnalyticsService;

    iput p2, p0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->val$startId:I

    iput-object p3, p0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->val$self:Lcom/appcelerator/analytics/APSAnalyticsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 96
    const-string v24, "APSAnalyticsService"

    const-string v25, "Analytics Service Started"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/16 v22, 0x0

    .line 101
    .local v22, "retryCount":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->this$0:Lcom/appcelerator/analytics/APSAnalyticsService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/appcelerator/analytics/APSAnalyticsService;->access$000(Lcom/appcelerator/analytics/APSAnalyticsService;)Landroid/net/ConnectivityManager;

    move-result-object v24

    if-nez v24, :cond_1

    .line 102
    const-string v24, "APSAnalyticsService"

    const-string v25, "Connectivity manager not available."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->this$0:Lcom/appcelerator/analytics/APSAnalyticsService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->val$startId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/appcelerator/analytics/APSAnalyticsService;->stopSelf(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->this$0:Lcom/appcelerator/analytics/APSAnalyticsService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/appcelerator/analytics/APSAnalyticsService;->access$300(Lcom/appcelerator/analytics/APSAnalyticsService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v24

    if-nez v24, :cond_0

    const-string v24, "APSAnalyticsService"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 204
    const-string v24, "APSAnalyticsService"

    const-string v25, "Expected to be in a sending state. Sending was already false."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    :try_start_1
    new-instance v16, Lcom/appcelerator/analytics/APSAnalyticsModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->val$self:Lcom/appcelerator/analytics/APSAnalyticsService;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/appcelerator/analytics/APSAnalyticsModel;-><init>(Landroid/content/Context;)V

    .line 107
    .local v16, "model":Lcom/appcelerator/analytics/APSAnalyticsModel;
    invoke-virtual/range {v16 .. v16}, Lcom/appcelerator/analytics/APSAnalyticsModel;->hasEvents()Z

    move-result v24

    if-nez v24, :cond_6

    .line 108
    const-string v24, "APSAnalyticsService"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 109
    const-string v24, "APSAnalyticsService"

    const-string v25, "No events to send."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_2
    const-string v24, "APSAnalyticsService"

    const-string v25, "Stopping Analytics Service"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->this$0:Lcom/appcelerator/analytics/APSAnalyticsService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->val$startId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/appcelerator/analytics/APSAnalyticsService;->stopSelf(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->this$0:Lcom/appcelerator/analytics/APSAnalyticsService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/appcelerator/analytics/APSAnalyticsService;->access$300(Lcom/appcelerator/analytics/APSAnalyticsService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v24

    if-nez v24, :cond_0

    const-string v24, "APSAnalyticsService"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 204
    const-string v24, "APSAnalyticsService"

    const-string v25, "Expected to be in a sending state. Sending was already false."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    .local v5, "deleteEvents":Z
    .local v7, "eventIds":[I
    .local v8, "events":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lorg/json/JSONObject;>;"
    .local v11, "i":I
    .local v14, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .local v15, "len":I
    .local v19, "records":Lorg/json/JSONArray;
    :cond_3
    if-lez v22, :cond_4

    .line 180
    :try_start_2
    const-string v24, "APSAnalyticsService"

    const-string v25, "Failed to send anayltics events. Retrying in 15 seconds"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-wide/16 v24, 0x3a98

    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V

    .line 182
    const/4 v5, 0x0

    .line 185
    :cond_4
    if-eqz v5, :cond_5

    .line 186
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/appcelerator/analytics/APSAnalyticsModel;->deleteEvents([I)V

    .line 189
    :cond_5
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->clear()V

    .line 116
    .end local v5    # "deleteEvents":Z
    .end local v7    # "eventIds":[I
    .end local v8    # "events":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lorg/json/JSONObject;>;"
    .end local v11    # "i":I
    .end local v14    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v15    # "len":I
    .end local v19    # "records":Lorg/json/JSONArray;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/appcelerator/analytics/APSAnalyticsModel;->hasEvents()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->this$0:Lcom/appcelerator/analytics/APSAnalyticsService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/appcelerator/analytics/APSAnalyticsService;->access$100(Lcom/appcelerator/analytics/APSAnalyticsService;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 118
    const/16 v24, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/appcelerator/analytics/APSAnalyticsModel;->getEventsAsJSON(I)Ljava/util/LinkedHashMap;

    move-result-object v8

    .line 120
    .restart local v8    # "events":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lorg/json/JSONObject;>;"
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v15

    .line 121
    .restart local v15    # "len":I
    new-array v7, v15, [I

    .line 122
    .restart local v7    # "eventIds":[I
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 124
    .restart local v14    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v19, Lorg/json/JSONArray;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONArray;-><init>()V

    .line 126
    .restart local v19    # "records":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1
    if-ge v11, v15, :cond_8

    .line 127
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 130
    .local v12, "id":I
    aput v12, v7, v11

    .line 131
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 133
    const-string v24, "APSAnalyticsService"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 134
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/json/JSONObject;

    .line 135
    .local v17, "obj":Lorg/json/JSONObject;
    const-string v24, "APSAnalyticsService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Sending event: type = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "type"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", timestamp = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "ts"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v17    # "obj":Lorg/json/JSONObject;
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 138
    .end local v12    # "id":I
    :cond_8
    const/4 v5, 0x1

    .line 139
    .restart local v5    # "deleteEvents":Z
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v24

    if-lez v24, :cond_b

    .line 140
    const-string v24, "APSAnalyticsService"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 141
    const-string v24, "APSAnalyticsService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Sending "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " analytics events."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :cond_9
    :try_start_3
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 145
    .local v13, "jsonData":Ljava/lang/String;
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getAppGuid()Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_d

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsService;->access$200()Ljava/lang/String;

    move-result-object v18

    .line 148
    .local v18, "postUrl":Ljava/lang/String;
    :goto_2
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 149
    .local v10, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v6, Lorg/apache/http/entity/StringEntity;

    const-string v24, "UTF-8"

    move-object/from16 v0, v24

    invoke-direct {v6, v13, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v6, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v24, "text/json"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v10, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 153
    new-instance v9, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v9}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 154
    .local v9, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v24, 0x1388

    move/from16 v0, v24

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 156
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 158
    .local v4, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v24

    const-string v25, "http.protocol.expect-continue"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 160
    invoke-interface {v4, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v20

    .line 162
    .local v20, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v21

    .line 163
    .local v21, "responseCode":I
    const/16 v24, 0xc8

    move/from16 v0, v21

    move/from16 v1, v24

    if-lt v0, v1, :cond_a

    const/16 v24, 0x12b

    move/from16 v0, v21

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    .line 164
    :cond_a
    add-int/lit8 v22, v22, 0x1

    .line 172
    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .end local v6    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v9    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v10    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v13    # "jsonData":Ljava/lang/String;
    .end local v18    # "postUrl":Ljava/lang/String;
    .end local v20    # "response":Lorg/apache/http/HttpResponse;
    .end local v21    # "responseCode":I
    :cond_b
    :goto_3
    const/16 v19, 0x0

    .line 175
    const/16 v24, 0x5

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_3

    .line 176
    :try_start_4
    const-string v24, "APSAnalyticsService"

    const-string v25, "Failed to send analytics events after 5 attempts"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v5    # "deleteEvents":Z
    .end local v7    # "eventIds":[I
    .end local v8    # "events":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lorg/json/JSONObject;>;"
    .end local v11    # "i":I
    .end local v14    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v15    # "len":I
    .end local v19    # "records":Lorg/json/JSONArray;
    :cond_c
    :goto_4
    const-string v24, "APSAnalyticsService"

    const-string v25, "Stopping Analytics Service"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->this$0:Lcom/appcelerator/analytics/APSAnalyticsService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->val$startId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/appcelerator/analytics/APSAnalyticsService;->stopSelf(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->this$0:Lcom/appcelerator/analytics/APSAnalyticsService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/appcelerator/analytics/APSAnalyticsService;->access$300(Lcom/appcelerator/analytics/APSAnalyticsService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v24

    if-nez v24, :cond_0

    const-string v24, "APSAnalyticsService"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 204
    const-string v24, "APSAnalyticsService"

    const-string v25, "Expected to be in a sending state. Sending was already false."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    .restart local v5    # "deleteEvents":Z
    .restart local v7    # "eventIds":[I
    .restart local v8    # "events":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lorg/json/JSONObject;>;"
    .restart local v11    # "i":I
    .restart local v13    # "jsonData":Ljava/lang/String;
    .restart local v14    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v15    # "len":I
    .restart local v19    # "records":Lorg/json/JSONArray;
    :cond_d
    :try_start_5
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsService;->access$200()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getAppGuid()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v18

    goto/16 :goto_2

    .line 167
    .end local v13    # "jsonData":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 168
    .local v23, "t":Ljava/lang/Throwable;
    :try_start_6
    const-string v24, "APSAnalyticsService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Error posting events: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 199
    .end local v5    # "deleteEvents":Z
    .end local v7    # "eventIds":[I
    .end local v8    # "events":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lorg/json/JSONObject;>;"
    .end local v11    # "i":I
    .end local v14    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v15    # "len":I
    .end local v16    # "model":Lcom/appcelerator/analytics/APSAnalyticsModel;
    .end local v19    # "records":Lorg/json/JSONArray;
    .end local v23    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v23

    .line 200
    .restart local v23    # "t":Ljava/lang/Throwable;
    :try_start_7
    const-string v24, "APSAnalyticsService"

    const-string v25, "Unhandled exception in analytics thread: "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->this$0:Lcom/appcelerator/analytics/APSAnalyticsService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->val$startId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/appcelerator/analytics/APSAnalyticsService;->stopSelf(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->this$0:Lcom/appcelerator/analytics/APSAnalyticsService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/appcelerator/analytics/APSAnalyticsService;->access$300(Lcom/appcelerator/analytics/APSAnalyticsService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v24

    if-nez v24, :cond_0

    const-string v24, "APSAnalyticsService"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 204
    const-string v24, "APSAnalyticsService"

    const-string v25, "Expected to be in a sending state. Sending was already false."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 191
    .end local v23    # "t":Ljava/lang/Throwable;
    .restart local v16    # "model":Lcom/appcelerator/analytics/APSAnalyticsModel;
    :cond_e
    :try_start_8
    const-string v24, "APSAnalyticsService"

    const-string v25, "Network unavailable, can\'t send analytics"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    .line 203
    .end local v16    # "model":Lcom/appcelerator/analytics/APSAnalyticsModel;
    :catchall_0
    move-exception v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appcelerator/analytics/APSAnalyticsService$1;->this$0:Lcom/appcelerator/analytics/APSAnalyticsService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/appcelerator/analytics/APSAnalyticsService;->access$300(Lcom/appcelerator/analytics/APSAnalyticsService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v25

    const/16 v26, 0x1

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v25

    if-nez v25, :cond_f

    const-string v25, "APSAnalyticsService"

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 204
    const-string v25, "APSAnalyticsService"

    const-string v26, "Expected to be in a sending state. Sending was already false."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    throw v24
.end method
