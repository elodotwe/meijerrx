.class public final Lcom/google/zxing/client/android/history/HistoryManager;
.super Ljava/lang/Object;
.source "HistoryManager.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final COUNT_COLUMN:[Ljava/lang/String;

.field private static final EXPORT_DATE_TIME_FORMAT:Ljava/text/DateFormat;

.field private static final ID_COL_PROJECTION:[Ljava/lang/String;

.field private static final ID_DETAIL_COL_PROJECTION:[Ljava/lang/String;

.field private static final MAX_ITEMS:I = 0x1f4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const-class v0, Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/history/HistoryManager;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "text"

    aput-object v1, v0, v3

    const-string v1, "display"

    aput-object v1, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "details"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/history/HistoryManager;->COLUMNS:[Ljava/lang/String;

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "COUNT(1)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/zxing/client/android/history/HistoryManager;->COUNT_COLUMN:[Ljava/lang/String;

    .line 67
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/zxing/client/android/history/HistoryManager;->ID_COL_PROJECTION:[Ljava/lang/String;

    .line 68
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v0, v3

    const-string v1, "details"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/zxing/client/android/history/HistoryManager;->ID_DETAIL_COL_PROJECTION:[Ljava/lang/String;

    .line 69
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/history/HistoryManager;->EXPORT_DATE_TIME_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/zxing/client/android/history/HistoryManager;->activity:Landroid/app/Activity;

    .line 75
    return-void
.end method

.method private static close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 336
    if-eqz p0, :cond_0

    .line 337
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 339
    :cond_0
    if-eqz p1, :cond_1

    .line 340
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 342
    :cond_1
    return-void
.end method

.method private deletePrevious(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 216
    new-instance v1, Lcom/google/zxing/client/android/history/DBHelper;

    iget-object v2, p0, Lcom/google/zxing/client/android/history/HistoryManager;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/zxing/client/android/history/DBHelper;-><init>(Landroid/content/Context;)V

    .line 217
    .local v1, "helper":Landroid/database/sqlite/SQLiteOpenHelper;
    const/4 v0, 0x0

    .line 219
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 220
    const-string v2, "history"

    const-string v3, "text=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-static {v6, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 224
    return-void

    .line 222
    :catchall_0
    move-exception v2

    invoke-static {v6, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method private static massageHistoryField(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 332
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\""

    const-string v1, "\"\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static saveHistory(Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .param p0, "history"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 305
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "BarcodeScanner"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 306
    .local v0, "bsRoot":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v7, "History"

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 307
    .local v2, "historyRoot":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_1

    .line 308
    sget-object v7, Lcom/google/zxing/client/android/history/HistoryManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t make dir "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    :goto_0
    return-object v6

    .line 311
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "history-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".csv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 312
    .local v1, "historyFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 314
    .local v4, "out":Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    .local v5, "out":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v5, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 316
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 321
    if-eqz v5, :cond_0

    .line 323
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v7

    goto :goto_0

    .line 317
    .end local v5    # "out":Ljava/io/OutputStreamWriter;
    .restart local v4    # "out":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v3

    .line 318
    .local v3, "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v7, Lcom/google/zxing/client/android/history/HistoryManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t access file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " due to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    if-eqz v4, :cond_0

    .line 323
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 324
    :catch_2
    move-exception v7

    goto/16 :goto_0

    .line 321
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_2

    .line 323
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 326
    :cond_2
    :goto_3
    throw v6

    .line 324
    :catch_3
    move-exception v7

    goto :goto_3

    .line 321
    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    .restart local v5    # "out":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStreamWriter;
    .restart local v4    # "out":Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 317
    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    .restart local v5    # "out":Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStreamWriter;
    .restart local v4    # "out":Ljava/io/OutputStreamWriter;
    goto :goto_1
.end method


# virtual methods
.method public addHistoryItem(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;)V
    .locals 9
    .param p1, "result"    # Lcom/google/zxing/Result;
    .param p2, "handler"    # Lcom/google/zxing/client/android/result/ResultHandler;

    .prologue
    const/4 v8, 0x0

    .line 154
    iget-object v4, p0, Lcom/google/zxing/client/android/history/HistoryManager;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "SAVE_HISTORY"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lcom/google/zxing/client/android/result/ResultHandler;->areContentsSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v4, p0, Lcom/google/zxing/client/android/history/HistoryManager;->activity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 160
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "preferences_remember_duplicates"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 161
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/zxing/client/android/history/HistoryManager;->deletePrevious(Ljava/lang/String;)V

    .line 164
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "text"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v4, "format"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v4, "display"

    invoke-virtual {p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v4, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    new-instance v1, Lcom/google/zxing/client/android/history/DBHelper;

    iget-object v4, p0, Lcom/google/zxing/client/android/history/HistoryManager;->activity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/google/zxing/client/android/history/DBHelper;-><init>(Landroid/content/Context;)V

    .line 171
    .local v1, "helper":Landroid/database/sqlite/SQLiteOpenHelper;
    const/4 v0, 0x0

    .line 173
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 175
    const-string v4, "history"

    const-string v5, "timestamp"

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-static {v8, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v8, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
.end method

.method public addHistoryItemDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "itemID"    # Ljava/lang/String;
    .param p2, "itemDetails"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v11, Lcom/google/zxing/client/android/history/DBHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/history/HistoryManager;->activity:Landroid/app/Activity;

    invoke-direct {v11, v2}, Lcom/google/zxing/client/android/history/DBHelper;-><init>(Landroid/content/Context;)V

    .line 185
    .local v11, "helper":Landroid/database/sqlite/SQLiteOpenHelper;
    const/4 v1, 0x0

    .line 186
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 188
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 189
    const-string v2, "history"

    sget-object v3, Lcom/google/zxing/client/android/history/HistoryManager;->ID_DETAIL_COL_PROJECTION:[Ljava/lang/String;

    const-string v4, "text=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "timestamp DESC"

    const-string v9, "1"

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 197
    const/4 v14, 0x0

    .line 198
    .local v14, "oldID":Ljava/lang/String;
    const/4 v13, 0x0

    .line 199
    .local v13, "oldDetails":Ljava/lang/String;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 201
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 204
    :cond_0
    if-nez v13, :cond_1

    move-object/from16 v12, p2

    .line 205
    .local v12, "newDetails":Ljava/lang/String;
    :goto_0
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v15, "values":Landroid/content/ContentValues;
    const-string v2, "details"

    invoke-virtual {v15, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "history"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    invoke-virtual {v1, v2, v15, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-static {v10, v1}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 213
    return-void

    .line 204
    .end local v12    # "newDetails":Ljava/lang/String;
    .end local v15    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    goto :goto_0

    .line 211
    .end local v13    # "oldDetails":Ljava/lang/String;
    .end local v14    # "oldID":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v10, v1}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method buildHistory()Ljava/lang/CharSequence;
    .locals 14

    .prologue
    .line 260
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 261
    .local v10, "historyText":Ljava/lang/StringBuilder;
    new-instance v9, Lcom/google/zxing/client/android/history/DBHelper;

    iget-object v1, p0, Lcom/google/zxing/client/android/history/HistoryManager;->activity:Landroid/app/Activity;

    invoke-direct {v9, v1}, Lcom/google/zxing/client/android/history/DBHelper;-><init>(Landroid/content/Context;)V

    .line 262
    .local v9, "helper":Landroid/database/sqlite/SQLiteOpenHelper;
    const/4 v0, 0x0

    .line 263
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 265
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 266
    const-string v1, "history"

    sget-object v2, Lcom/google/zxing/client/android/history/HistoryManager;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 271
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const/16 v1, 0x22

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/android/history/HistoryManager;->massageHistoryField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const/16 v1, 0x22

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/android/history/HistoryManager;->massageHistoryField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const/16 v1, 0x22

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/android/history/HistoryManager;->massageHistoryField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const/16 v1, 0x22

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/android/history/HistoryManager;->massageHistoryField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 280
    .local v12, "timestamp":J
    const/16 v1, 0x22

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/android/history/HistoryManager;->EXPORT_DATE_TIME_FORMAT:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/android/history/HistoryManager;->massageHistoryField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const/16 v1, 0x22

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/android/history/HistoryManager;->massageHistoryField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 289
    .end local v12    # "timestamp":J
    :catchall_0
    move-exception v1

    invoke-static {v8, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    :cond_0
    invoke-static {v8, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v10
.end method

.method public buildHistoryItem(I)Lcom/google/zxing/client/android/history/HistoryItem;
    .locals 13
    .param p1, "number"    # I

    .prologue
    .line 115
    new-instance v12, Lcom/google/zxing/client/android/history/DBHelper;

    iget-object v3, p0, Lcom/google/zxing/client/android/history/HistoryManager;->activity:Landroid/app/Activity;

    invoke-direct {v12, v3}, Lcom/google/zxing/client/android/history/DBHelper;-><init>(Landroid/content/Context;)V

    .line 116
    .local v12, "helper":Landroid/database/sqlite/SQLiteOpenHelper;
    const/4 v0, 0x0

    .line 117
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 119
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 120
    const-string v1, "history"

    sget-object v2, Lcom/google/zxing/client/android/history/HistoryManager;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 121
    add-int/lit8 v3, p1, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->move(I)Z

    .line 122
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "text":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 124
    .local v10, "display":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 125
    .local v11, "format":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 126
    .local v6, "timestamp":J
    const/4 v3, 0x4

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 127
    .local v9, "details":Ljava/lang/String;
    new-instance v1, Lcom/google/zxing/Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v11}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 128
    .local v1, "result":Lcom/google/zxing/Result;
    new-instance v3, Lcom/google/zxing/client/android/history/HistoryItem;

    invoke-direct {v3, v1, v10, v9}, Lcom/google/zxing/client/android/history/HistoryItem;-><init>(Lcom/google/zxing/Result;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-static {v8, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v3

    .end local v1    # "result":Lcom/google/zxing/Result;
    .end local v2    # "text":Ljava/lang/String;
    .end local v6    # "timestamp":J
    .end local v9    # "details":Ljava/lang/String;
    .end local v10    # "display":Ljava/lang/String;
    .end local v11    # "format":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-static {v8, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method public buildHistoryItems()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/client/android/history/HistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v12, Lcom/google/zxing/client/android/history/DBHelper;

    iget-object v3, p0, Lcom/google/zxing/client/android/history/HistoryManager;->activity:Landroid/app/Activity;

    invoke-direct {v12, v3}, Lcom/google/zxing/client/android/history/DBHelper;-><init>(Landroid/content/Context;)V

    .line 93
    .local v12, "helper":Landroid/database/sqlite/SQLiteOpenHelper;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v13, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/client/android/history/HistoryItem;>;"
    const/4 v0, 0x0

    .line 95
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 97
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 98
    const-string v1, "history"

    sget-object v2, Lcom/google/zxing/client/android/history/HistoryManager;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 99
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "text":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 102
    .local v10, "display":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 103
    .local v11, "format":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 104
    .local v6, "timestamp":J
    const/4 v3, 0x4

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, "details":Ljava/lang/String;
    new-instance v1, Lcom/google/zxing/Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v11}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 106
    .local v1, "result":Lcom/google/zxing/Result;
    new-instance v3, Lcom/google/zxing/client/android/history/HistoryItem;

    invoke-direct {v3, v1, v10, v9}, Lcom/google/zxing/client/android/history/HistoryItem;-><init>(Lcom/google/zxing/Result;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    .end local v1    # "result":Lcom/google/zxing/Result;
    .end local v2    # "text":Ljava/lang/String;
    .end local v6    # "timestamp":J
    .end local v9    # "details":Ljava/lang/String;
    .end local v10    # "display":Ljava/lang/String;
    .end local v11    # "format":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-static {v8, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3

    :cond_0
    invoke-static {v8, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
    return-object v13
.end method

.method clearHistory()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 294
    new-instance v1, Lcom/google/zxing/client/android/history/DBHelper;

    iget-object v2, p0, Lcom/google/zxing/client/android/history/HistoryManager;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/zxing/client/android/history/DBHelper;-><init>(Landroid/content/Context;)V

    .line 295
    .local v1, "helper":Landroid/database/sqlite/SQLiteOpenHelper;
    const/4 v0, 0x0

    .line 297
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 298
    const-string v2, "history"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-static {v5, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 302
    return-void

    .line 300
    :catchall_0
    move-exception v2

    invoke-static {v5, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method public deleteHistoryItem(I)V
    .locals 10
    .param p1, "number"    # I

    .prologue
    .line 135
    new-instance v9, Lcom/google/zxing/client/android/history/DBHelper;

    iget-object v1, p0, Lcom/google/zxing/client/android/history/HistoryManager;->activity:Landroid/app/Activity;

    invoke-direct {v9, v1}, Lcom/google/zxing/client/android/history/DBHelper;-><init>(Landroid/content/Context;)V

    .line 136
    .local v9, "helper":Landroid/database/sqlite/SQLiteOpenHelper;
    const/4 v0, 0x0

    .line 137
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 139
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 140
    const-string v1, "history"

    sget-object v2, Lcom/google/zxing/client/android/history/HistoryManager;->ID_COL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 144
    add-int/lit8 v1, p1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->move(I)Z

    .line 145
    const-string v1, "history"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-static {v8, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 149
    return-void

    .line 147
    :catchall_0
    move-exception v1

    invoke-static {v8, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public hasHistoryItems()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 78
    new-instance v9, Lcom/google/zxing/client/android/history/DBHelper;

    iget-object v1, p0, Lcom/google/zxing/client/android/history/HistoryManager;->activity:Landroid/app/Activity;

    invoke-direct {v9, v1}, Lcom/google/zxing/client/android/history/DBHelper;-><init>(Landroid/content/Context;)V

    .line 79
    .local v9, "helper":Landroid/database/sqlite/SQLiteOpenHelper;
    const/4 v0, 0x0

    .line 80
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 82
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    const-string v1, "history"

    sget-object v2, Lcom/google/zxing/client/android/history/HistoryManager;->COUNT_COLUMN:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 84
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 85
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 87
    :goto_0
    invoke-static {v8, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    return v1

    :cond_0
    move v1, v10

    .line 85
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v1

    invoke-static {v8, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public trimHistory()V
    .locals 10

    .prologue
    .line 227
    new-instance v9, Lcom/google/zxing/client/android/history/DBHelper;

    iget-object v1, p0, Lcom/google/zxing/client/android/history/HistoryManager;->activity:Landroid/app/Activity;

    invoke-direct {v9, v1}, Lcom/google/zxing/client/android/history/DBHelper;-><init>(Landroid/content/Context;)V

    .line 228
    .local v9, "helper":Landroid/database/sqlite/SQLiteOpenHelper;
    const/4 v0, 0x0

    .line 229
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 231
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 232
    const-string v1, "history"

    sget-object v2, Lcom/google/zxing/client/android/history/HistoryManager;->ID_COL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 236
    const/16 v1, 0x1f4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->move(I)Z

    .line 237
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "history"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v1

    invoke-static {v8, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    :cond_0
    invoke-static {v8, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->close(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 243
    return-void
.end method
