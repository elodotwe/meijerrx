.class public Lcom/appcelerator/analytics/APSAnalyticsModel;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "APSAnalyticsModel.java"


# static fields
.field private static final APP_VERSION:Ljava/lang/String; = "AppVersion"

.field private static final DB_NAME:Ljava/lang/String; = "appcAnalytics.db"

.field private static final DB_VERSION:I = 0x4

.field private static final ENROLLED:Ljava/lang/String; = "Enrolled"

.field private static final SEQUENCE:Ljava/lang/String; = "Seq"

.field private static final TAG:Ljava/lang/String; = "APSAnalyticsModel"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-string v0, "appcAnalytics.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    return-void
.end method

.method private getProps(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 298
    .local v0, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 301
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/appcelerator/analytics/APSAnalyticsModel;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select Value from Props where Name = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "sql":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 308
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 313
    :cond_0
    if-eqz v0, :cond_1

    .line 314
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 316
    :cond_1
    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 321
    .end local v4    # "sql":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v3

    .line 310
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v5, "APSAnalyticsModel"

    const-string v6, "Error retrieving events to send as JSON: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    if-eqz v0, :cond_3

    .line 314
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 316
    :cond_3
    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 313
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    .line 314
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 316
    :cond_4
    if-eqz v1, :cond_5

    .line 317
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v5
.end method

.method private updateProps(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update Props set Value = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' where Name = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 282
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/appcelerator/analytics/APSAnalyticsModel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 283
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v3, "APSAnalyticsModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error marking enrolled :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 287
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v3
.end method


# virtual methods
.method protected addEvent(Lcom/appcelerator/analytics/APSAnalyticsEvent;)Ljava/lang/String;
    .locals 11
    .param p1, "event"    # Lcom/appcelerator/analytics/APSAnalyticsEvent;

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 68
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->createEventId()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "eventID":Ljava/lang/String;
    const-string v9, "APSAnalyticsModel"

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v9, "add Analytics Event to db: event="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n timestamp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventTimestamp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n mid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventMid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n sid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventSid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n aguid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventAppGuid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n isJSON="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->mustExpandPayload()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n payload="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventPayload()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v9, "APSAnalyticsModel"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v1, 0x0

    .line 78
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v9, "Seq"

    invoke-direct {p0, v9}, Lcom/appcelerator/analytics/APSAnalyticsModel;->getProps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 81
    .local v5, "sequence":I
    :try_start_0
    invoke-virtual {p0}, Lcom/appcelerator/analytics/APSAnalyticsModel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 82
    const-string v6, "insert into Events(EventId, Event, Timestamp, MID, SID, AppGUID, isJSON, Payload, Seq) values(?,?,?,?,?,?,?,?,?)"

    .line 83
    .local v6, "sql":Ljava/lang/String;
    const/16 v9, 0x9

    new-array v0, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v0, v9

    const/4 v9, 0x1

    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v9, 0x2

    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventTimestamp()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v9, 0x3

    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventMid()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v9, 0x4

    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventSid()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v9, 0x5

    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventAppGuid()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v9, 0x6

    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->mustExpandPayload()Z

    move-result v10

    if-eqz v10, :cond_2

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v9

    const/4 v7, 0x7

    invoke-virtual {p1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getEventPayload()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    const/16 v7, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    .line 86
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 95
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v6    # "sql":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p1, v5}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->setEventSeq(I)V

    .line 97
    const-string v7, "Seq"

    add-int/lit8 v8, v5, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/appcelerator/analytics/APSAnalyticsModel;->updateProps(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v3

    .restart local v6    # "sql":Ljava/lang/String;
    :cond_2
    move v7, v8

    .line 83
    goto :goto_0

    .line 87
    .end local v6    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v7, "APSAnalyticsModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error adding event: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 90
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v7

    if-eqz v1, :cond_3

    .line 91
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v7
.end method

.method protected deleteEvents([I)V
    .locals 7
    .param p1, "records"    # [I

    .prologue
    .line 104
    array-length v4, p1

    if-lez v4, :cond_3

    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/appcelerator/analytics/APSAnalyticsModel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 109
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "delete from Events where _id in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 111
    if-lez v2, :cond_0

    .line 112
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_0
    aget v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string v4, "APSAnalyticsModel"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    const-string v4, "APSAnalyticsModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete Analytics Event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_2
    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 129
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    return-void

    .line 121
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v4, "APSAnalyticsModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error deleting events :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 124
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_4

    .line 125
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v4
.end method

.method protected getDBVersion()I
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x4

    return v0
.end method

.method protected getEventsAsJSON(I)Ljava/util/LinkedHashMap;
    .locals 14
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 164
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 166
    .local v7, "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lorg/json/JSONObject;>;"
    const/4 v2, 0x0

    .line 167
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 169
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/appcelerator/analytics/APSAnalyticsModel;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 171
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "select _id, EventId, Event, Timestamp, MID, SID, AppGUID, isJSON, Payload, Seq from Events  order by Timestamp asc limit "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 174
    .local v9, "sql":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v2, v9, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 176
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 177
    const/4 v12, 0x0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 178
    .local v4, "id":I
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 179
    .local v6, "json":Lorg/json/JSONObject;
    const-string v12, "ver"

    const-string v13, "3"

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v12, "id"

    const/4 v13, 0x1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v12, "event"

    const/4 v13, 0x2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v12, "ts"

    const/4 v13, 0x3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v12, "mid"

    const/4 v13, 0x4

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v12, "sid"

    const/4 v13, 0x5

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v12, "aguid"

    const/4 v13, 0x6

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const/4 v12, 0x7

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-ne v12, v10, :cond_2

    move v5, v10

    .line 187
    .local v5, "isJSON":Z
    :goto_1
    const/16 v12, 0x8

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "data":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 189
    const-string v12, "data"

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    :goto_2
    const/16 v12, 0x9

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 194
    .local v8, "seq":I
    const-string v12, "seq"

    invoke-virtual {v6, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 198
    .end local v1    # "data":Ljava/lang/String;
    .end local v4    # "id":I
    .end local v5    # "isJSON":Z
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v8    # "seq":I
    .end local v9    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 199
    .local v3, "e":Lorg/json/JSONException;
    :try_start_1
    const-string v10, "APSAnalyticsModel"

    const-string v11, "Error creating JSON."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_0
    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 211
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_3
    return-object v7

    .restart local v4    # "id":I
    .restart local v6    # "json":Lorg/json/JSONObject;
    .restart local v9    # "sql":Ljava/lang/String;
    :cond_2
    move v5, v11

    .line 186
    goto :goto_1

    .line 191
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v5    # "isJSON":Z
    :cond_3
    :try_start_2
    const-string v12, "data"

    invoke-virtual {v6, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 200
    .end local v1    # "data":Ljava/lang/String;
    .end local v4    # "id":I
    .end local v5    # "isJSON":Z
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v9    # "sql":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 201
    .local v3, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v10, "APSAnalyticsModel"

    const-string v11, "Error retrieving events to send as JSON: "

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    if-eqz v0, :cond_4

    .line 204
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_4
    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    .line 203
    .end local v3    # "e":Landroid/database/SQLException;
    .restart local v9    # "sql":Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_6

    .line 204
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_6
    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    .line 203
    .end local v9    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v10

    if-eqz v0, :cond_7

    .line 204
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_7
    if-eqz v2, :cond_8

    .line 207
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    throw v10
.end method

.method protected getLastTimestampForEventType(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 220
    .local v3, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 221
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 223
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/appcelerator/analytics/APSAnalyticsModel;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select _id, Timestamp from Events where Event=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(^\')|(\'$)"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " order by Timestamp desc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "sql":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v5, "APSAnalyticsModel"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    const-string v5, "APSAnalyticsModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get the most recent timestamp for event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", timestamp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_0
    if-eqz v0, :cond_1

    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_1
    if-eqz v1, :cond_2

    .line 244
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 248
    .end local v4    # "sql":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v3

    .line 237
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v5, "APSAnalyticsModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error retrieving timpestamp for event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    if-eqz v0, :cond_3

    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_3
    if-eqz v1, :cond_2

    .line 244
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 240
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_4
    if-eqz v1, :cond_5

    .line 244
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v5
.end method

.method protected hasEvents()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 133
    const/4 v3, 0x0

    .line 135
    .local v3, "result":Z
    const/4 v1, 0x0

    .line 136
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 138
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/appcelerator/analytics/APSAnalyticsModel;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 140
    const-string v4, "select exists(select _id from Events)"

    .line 142
    .local v4, "sql":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 145
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    .line 150
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_1
    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 158
    .end local v4    # "sql":Ljava/lang/String;
    :cond_2
    :goto_1
    return v3

    .restart local v4    # "sql":Ljava/lang/String;
    :cond_3
    move v3, v5

    .line 145
    goto :goto_0

    .line 147
    .end local v4    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v5, "APSAnalyticsModel"

    const-string v6, "Error determining if there are events to send: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    if-eqz v0, :cond_4

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_4
    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 150
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_5
    if-eqz v1, :cond_6

    .line 154
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v5
.end method

.method protected markEnrolled()V
    .locals 2

    .prologue
    .line 326
    const-string v0, "Enrolled"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/appcelerator/analytics/APSAnalyticsModel;->updateProps(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method protected needsEnrollEvent()Z
    .locals 5

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 255
    .local v2, "result":Z
    const/4 v1, 0x0

    .line 256
    .local v1, "needsEnroll":Ljava/lang/String;
    const/4 v0, 0x0

    .line 258
    .local v0, "appVersion":Ljava/lang/String;
    const-string v3, "Enrolled"

    invoke-direct {p0, v3}, Lcom/appcelerator/analytics/APSAnalyticsModel;->getProps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 261
    if-nez v2, :cond_0

    .line 262
    const-string v3, "AppVersion"

    invoke-direct {p0, v3}, Lcom/appcelerator/analytics/APSAnalyticsModel;->getProps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 265
    :goto_0
    if-eqz v2, :cond_0

    .line 266
    const-string v3, "AppVersion"

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/appcelerator/analytics/APSAnalyticsModel;->updateProps(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v3, "Seq"

    const-string v4, "0"

    invoke-direct {p0, v3, v4}, Lcom/appcelerator/analytics/APSAnalyticsModel;->updateProps(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    return v2

    .line 264
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 41
    const-string v1, "APSAnalyticsModel"

    const-string v2, "Creating Database appcAnalytics.db"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v0, "create table Events (  _id INTEGER PRIMARY KEY AUTOINCREMENT,   EventId TEXT,   Event TEXT,   Timestamp TEXT,   MID TEXT,   SID TEXT,   AppGUID TEXT,   isJSON INTEGER,   Payload TEXT,  Seq INTEGER );"

    .line 46
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    const-string v0, "create table Props (  _id INTEGER PRIMARY KEY,   Name TEXT,   Value TEXT );"

    .line 49
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    const-string v0, "insert into Props(Name, Value) values (\'Enrolled\', \'0\')"

    .line 52
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert into Props(Name, Value) values (\'AppVersion\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "insert into Props(Name, Value) values (\'Seq\', \'0\')"

    .line 58
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 64
    return-void
.end method
