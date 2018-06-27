.class Lti/modules/titanium/media/TiThumbnailRetriever$1;
.super Landroid/os/AsyncTask;
.source "TiThumbnailRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/TiThumbnailRetriever;->getBitmapTask()Landroid/os/AsyncTask;
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
.field final synthetic this$0:Lti/modules/titanium/media/TiThumbnailRetriever;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/TiThumbnailRetriever;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lti/modules/titanium/media/TiThumbnailRetriever$1;->this$0:Lti/modules/titanium/media/TiThumbnailRetriever;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private setDataSource(Landroid/net/Uri;Landroid/media/MediaMetadataRetriever;)I
    .locals 11
    .param p1, "mUri"    # Landroid/net/Uri;
    .param p2, "mMediaMetadataRetriever"    # Landroid/media/MediaMetadataRetriever;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 148
    const/4 v9, 0x0

    .line 149
    .local v9, "returnCode":I
    if-nez p1, :cond_0

    move v0, v10

    .line 186
    :goto_0
    return v0

    .line 154
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    const/4 v6, 0x0

    .line 158
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///android_asset/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, "path":Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 160
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    if-eqz v6, :cond_1

    .line 167
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v8    # "path":Ljava/lang/String;
    :cond_1
    :goto_1
    move v0, v9

    .line 186
    goto :goto_0

    .line 162
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 163
    .local v7, "ex":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v0, "TiMediaMetadataRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    const/4 v9, -0x1

    .line 166
    if-eqz v6, :cond_1

    .line 167
    :try_start_4
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 179
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v7    # "ex":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    .line 180
    .local v7, "ex":Ljava/io/IOException;
    const-string v0, "TiMediaMetadataRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v10

    .line 181
    goto :goto_0

    .line 166
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 167
    :try_start_5
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_2
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    .line 182
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_2
    move-exception v7

    .line 183
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "TiMediaMetadataRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v10

    .line 184
    goto/16 :goto_0

    .line 171
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_6
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRedirectUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 173
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 21
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 92
    const/4 v12, 0x0

    .line 93
    .local v12, "mThumbnailResponseHandler":Lti/modules/titanium/media/TiThumbnailRetriever$ThumbnailResponseHandler;
    const/4 v11, 0x0

    .line 94
    .local v11, "mMediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    const/4 v6, 0x0

    .line 95
    .local v6, "event":Lorg/appcelerator/kroll/KrollDict;
    const/16 v18, 0x0

    aget-object v13, p1, v18

    check-cast v13, Landroid/net/Uri;

    .line 96
    .local v13, "mUri":Landroid/net/Uri;
    const/16 v18, 0x1

    aget-object v18, p1, v18

    check-cast v18, [I

    move-object/from16 v5, v18

    check-cast v5, [I

    .line 97
    .local v5, "arrayOfTimes":[I
    const/16 v18, 0x2

    aget-object v18, p1, v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 98
    .local v14, "option":I
    const/16 v18, 0x3

    aget-object v12, p1, v18

    .end local v12    # "mThumbnailResponseHandler":Lti/modules/titanium/media/TiThumbnailRetriever$ThumbnailResponseHandler;
    check-cast v12, Lti/modules/titanium/media/TiThumbnailRetriever$ThumbnailResponseHandler;

    .line 99
    .restart local v12    # "mThumbnailResponseHandler":Lti/modules/titanium/media/TiThumbnailRetriever$ThumbnailResponseHandler;
    const/16 v18, 0x4

    aget-object v11, p1, v18

    .end local v11    # "mMediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    check-cast v11, Landroid/media/MediaMetadataRetriever;

    .line 102
    .restart local v11    # "mMediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11}, Lti/modules/titanium/media/TiThumbnailRetriever$1;->setDataSource(Landroid/net/Uri;Landroid/media/MediaMetadataRetriever;)I

    move-result v15

    .line 103
    .local v15, "response":I
    if-gez v15, :cond_0

    .line 105
    const/16 v18, 0x0

    .line 133
    .end local v15    # "response":I
    :goto_0
    return-object v18

    .line 108
    .restart local v15    # "response":I
    :cond_0
    move-object v4, v5

    .local v4, "arr$":[I
    array-length v9, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    move-object v7, v6

    .end local v6    # "event":Lorg/appcelerator/kroll/KrollDict;
    .local v7, "event":Lorg/appcelerator/kroll/KrollDict;
    :goto_1
    if-ge v8, v9, :cond_3

    :try_start_1
    aget v16, v4, v8

    .line 110
    .local v16, "sec":I
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/TiThumbnailRetriever$1;->isCancelled()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 111
    const/16 v18, 0x0

    move-object v6, v7

    .end local v7    # "event":Lorg/appcelerator/kroll/KrollDict;
    .restart local v6    # "event":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_0

    .line 114
    .end local v6    # "event":Lorg/appcelerator/kroll/KrollDict;
    .restart local v7    # "event":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1, v14, v11}, Lti/modules/titanium/media/TiThumbnailRetriever$1;->getFrameAtTime(Landroid/net/Uri;IILandroid/media/MediaMetadataRetriever;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 115
    .local v10, "mBitmapFrame":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_2

    .line 116
    new-instance v6, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v6}, Lorg/appcelerator/kroll/KrollDict;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    .end local v7    # "event":Lorg/appcelerator/kroll/KrollDict;
    .restart local v6    # "event":Lorg/appcelerator/kroll/KrollDict;
    :try_start_2
    const-string v18, "time"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v18, "code"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v18, "success"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v18, "image"

    invoke-static {v10}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :goto_2
    invoke-interface {v12, v6}, Lti/modules/titanium/media/TiThumbnailRetriever$ThumbnailResponseHandler;->handleThumbnailResponse(Lorg/appcelerator/kroll/KrollDict;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    add-int/lit8 v8, v8, 0x1

    move-object v7, v6

    .end local v6    # "event":Lorg/appcelerator/kroll/KrollDict;
    .restart local v7    # "event":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1

    .line 122
    :cond_2
    :try_start_3
    new-instance v6, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v6}, Lorg/appcelerator/kroll/KrollDict;-><init>()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 123
    .end local v7    # "event":Lorg/appcelerator/kroll/KrollDict;
    .restart local v6    # "event":Lorg/appcelerator/kroll/KrollDict;
    const/16 v18, -0x1

    :try_start_4
    const-string v19, "Error getting Thumbnail"

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 130
    .end local v4    # "arr$":[I
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "mBitmapFrame":Landroid/graphics/Bitmap;
    .end local v15    # "response":I
    .end local v16    # "sec":I
    :catch_0
    move-exception v17

    .line 131
    .local v17, "t":Ljava/lang/Throwable;
    :goto_3
    const-string v18, "TiMediaMetadataRetriever"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error retrieving thumbnail ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "DEBUG_MODE"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 133
    .end local v17    # "t":Ljava/lang/Throwable;
    :goto_4
    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    goto/16 :goto_0

    .end local v6    # "event":Lorg/appcelerator/kroll/KrollDict;
    .restart local v4    # "arr$":[I
    .restart local v7    # "event":Lorg/appcelerator/kroll/KrollDict;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v15    # "response":I
    :cond_3
    move-object v6, v7

    .line 132
    .end local v7    # "event":Lorg/appcelerator/kroll/KrollDict;
    .restart local v6    # "event":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_4

    .line 130
    .end local v6    # "event":Lorg/appcelerator/kroll/KrollDict;
    .restart local v7    # "event":Lorg/appcelerator/kroll/KrollDict;
    :catch_1
    move-exception v17

    move-object v6, v7

    .end local v7    # "event":Lorg/appcelerator/kroll/KrollDict;
    .restart local v6    # "event":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lti/modules/titanium/media/TiThumbnailRetriever$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime(Landroid/net/Uri;IILandroid/media/MediaMetadataRetriever;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "mUri"    # Landroid/net/Uri;
    .param p2, "sec"    # I
    .param p3, "option"    # I
    .param p4, "mMediaMetadataRetriever"    # Landroid/media/MediaMetadataRetriever;

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 140
    const v1, 0xf4240

    mul-int/2addr v1, p2

    int-to-long v2, v1

    invoke-virtual {p4, v2, v3, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
