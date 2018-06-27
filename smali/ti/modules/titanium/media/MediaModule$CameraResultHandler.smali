.class public Lti/modules/titanium/media/MediaModule$CameraResultHandler;
.super Ljava/lang/Object;
.source "MediaModule.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/media/MediaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CameraResultHandler"
.end annotation


# instance fields
.field protected activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;

.field protected cameraIntent:Landroid/content/Intent;

.field protected cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

.field protected code:I

.field protected errorCallback:Lorg/appcelerator/kroll/KrollFunction;

.field protected imageFile:Ljava/io/File;

.field protected lastImageId:I

.field protected saveToPhotoGallery:Z

.field protected successCallback:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic this$0:Lti/modules/titanium/media/MediaModule;

.field private validFileCreated:Z


# direct methods
.method protected constructor <init>(Lti/modules/titanium/media/MediaModule;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkAndDeleteDuplicate(Landroid/app/Activity;)V
    .locals 23
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 593
    move-object/from16 v0, p0

    iget v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->lastImageId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 594
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 595
    .local v4, "imageColumns":[Ljava/lang/String;
    const-string v15, "_id DESC"

    .line 596
    .local v15, "imageOrderBy":Ljava/lang/String;
    const-string v16, "_id>?"

    .line 597
    .local v16, "imageWhere":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->lastImageId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 598
    .local v6, "imageArguments":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id>?"

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 599
    .local v14, "imageCursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    .line 600
    .local v18, "refPath":Ljava/lang/String;
    if-nez v14, :cond_1

    .line 601
    const-string v2, "TiMedia"

    const-string v3, "Could not load image cursor. Can not check and delete duplicates"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .end local v4    # "imageColumns":[Ljava/lang/String;
    .end local v6    # "imageArguments":[Ljava/lang/String;
    .end local v14    # "imageCursor":Landroid/database/Cursor;
    .end local v15    # "imageOrderBy":Ljava/lang/String;
    .end local v16    # "imageWhere":Ljava/lang/String;
    .end local v18    # "refPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 604
    .restart local v4    # "imageColumns":[Ljava/lang/String;
    .restart local v6    # "imageArguments":[Ljava/lang/String;
    .restart local v14    # "imageCursor":Landroid/database/Cursor;
    .restart local v15    # "imageOrderBy":Ljava/lang/String;
    .restart local v16    # "imageWhere":Ljava/lang/String;
    .restart local v18    # "refPath":Ljava/lang/String;
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 606
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->validFileCreated:Z

    if-nez v2, :cond_2

    .line 608
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 613
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->saveToPhotoGallery:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lti/modules/titanium/media/MediaModule;->createGalleryImageFile()Ljava/io/File;

    move-result-object v2

    :goto_2
    move-object/from16 v0, p0

    iput-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    .line 616
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->validFileCreated:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 618
    .local v10, "compareLength":J
    :cond_3
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 619
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 620
    .local v9, "id":I
    const-string v2, "_data"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 622
    .local v17, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->validFileCreated:Z

    if-nez v2, :cond_4

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    if-eqz v2, :cond_4

    .line 626
    :try_start_1
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    .local v20, "srcFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 628
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->validFileCreated:Z

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v10

    .line 637
    .end local v20    # "srcFile":Ljava/io/File;
    :cond_4
    :goto_4
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 638
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 639
    .local v8, "compareFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 641
    .local v12, "fileLength":J
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-nez v2, :cond_8

    .line 643
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/16 v21, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v7, v21

    invoke-virtual {v2, v3, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 644
    .local v19, "result":I
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_7

    .line 645
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 646
    const-string v2, "TiMedia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting possible duplicate at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "DEBUG_MODE"

    invoke-static {v2, v3, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 613
    .end local v8    # "compareFile":Ljava/io/File;
    .end local v9    # "id":I
    .end local v10    # "compareLength":J
    .end local v12    # "fileLength":J
    .end local v17    # "path":Ljava/lang/String;
    .end local v19    # "result":I
    :cond_5
    invoke-static {}, Lti/modules/titanium/media/MediaModule;->createExternalStorageFile()Ljava/io/File;

    move-result-object v2

    goto/16 :goto_2

    .line 616
    :cond_6
    const-wide/16 v10, 0x0

    goto/16 :goto_3

    .line 649
    .restart local v8    # "compareFile":Ljava/io/File;
    .restart local v9    # "id":I
    .restart local v10    # "compareLength":J
    .restart local v12    # "fileLength":J
    .restart local v17    # "path":Ljava/lang/String;
    .restart local v19    # "result":I
    :cond_7
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 650
    const-string v2, "TiMedia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete possible duplicate at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "DEBUG_MODE"

    invoke-static {v2, v3, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 654
    .end local v19    # "result":I
    :cond_8
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 655
    const-string v2, "TiMedia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring file as not a duplicate at path "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ". Different Sizes "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "DEBUG_MODE"

    invoke-static {v2, v3, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 661
    .end local v8    # "compareFile":Ljava/io/File;
    .end local v9    # "id":I
    .end local v10    # "compareLength":J
    .end local v12    # "fileLength":J
    .end local v17    # "path":Ljava/lang/String;
    :cond_9
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 631
    .restart local v9    # "id":I
    .restart local v10    # "compareLength":J
    .restart local v17    # "path":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_4

    .line 609
    .end local v9    # "id":I
    .end local v10    # "compareLength":J
    .end local v17    # "path":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p1, "source"    # Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 667
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 668
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 669
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    const/16 v4, 0x1fa0

    new-array v2, v4, [B

    .line 670
    .local v2, "buf":[B
    const/4 v3, 0x0

    .line 672
    .local v3, "len":I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 673
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 676
    :cond_0
    if-eqz v0, :cond_1

    .line 677
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 678
    const/4 v0, 0x0

    .line 680
    :cond_1
    if-eqz v1, :cond_2

    .line 681
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 682
    const/4 v1, 0x0

    .line 684
    :cond_2
    return-void
.end method

.method private validateFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 577
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 578
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 580
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 581
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v2, v4, :cond_0

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v4, :cond_1

    .line 582
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Could not decode the bitmap from imageFile"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .end local v0    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 585
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "TiMedia"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    throw v1

    .line 588
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    return-void
.end method


# virtual methods
.method public onError(Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 788
    iget v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->code:I

    if-eq p2, v1, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 792
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 794
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "TiMedia"

    invoke-static {v1, v0, p3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_0

    .line 797
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v2, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v2}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    const/4 v4, -0x1

    invoke-static {v3, v4, v0}, Lti/modules/titanium/media/MediaModule;->access$000(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    .line 696
    iget v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->code:I

    if-ne p2, v7, :cond_0

    .line 697
    if-ne p3, v10, :cond_2

    .line 699
    const/4 v7, 0x1

    iput-boolean v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->validFileCreated:Z

    .line 701
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->validateFile()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    invoke-direct {p0, p1}, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->checkAndDeleteDuplicate(Landroid/app/Activity;)V

    .line 710
    :try_start_1
    invoke-direct {p0}, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->validateFile()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 721
    iget-boolean v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->saveToPhotoGallery:Z

    if-nez v7, :cond_1

    .line 724
    :try_start_2
    const-string v7, "tia"

    const-string v8, ".jpg"

    invoke-static {v7, v8}, Lorg/appcelerator/titanium/io/TiFileFactory;->createDataFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 725
    .local v1, "dataFile":Ljava/io/File;
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-direct {p0, v7, v1}, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 726
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 727
    iput-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 747
    .end local v1    # "dataFile":Ljava/io/File;
    :goto_1
    :try_start_3
    new-instance v6, Lorg/appcelerator/titanium/io/TiFile;

    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    iget-object v8, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lorg/appcelerator/titanium/io/TiFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 748
    .local v6, "theFile":Lorg/appcelerator/titanium/io/TiFile;
    invoke-static {v6}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v5

    .line 749
    .local v5, "theBlob":Lorg/appcelerator/titanium/TiBlob;
    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lti/modules/titanium/media/MediaModule;->createDictForImage(Lorg/appcelerator/titanium/TiBlob;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    .line 750
    .local v3, "response":Lorg/appcelerator/kroll/KrollDict;
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v7, :cond_0

    .line 751
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v8, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v8}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 784
    .end local v3    # "response":Lorg/appcelerator/kroll/KrollDict;
    .end local v5    # "theBlob":Lorg/appcelerator/titanium/TiBlob;
    .end local v6    # "theFile":Lorg/appcelerator/titanium/io/TiFile;
    :cond_0
    :goto_2
    return-void

    .line 702
    :catch_0
    move-exception v4

    .line 703
    .local v4, "t":Ljava/lang/Throwable;
    iput-boolean v8, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->validFileCreated:Z

    goto :goto_0

    .line 711
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 712
    .restart local v4    # "t":Ljava/lang/Throwable;
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v7, :cond_0

    .line 713
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 714
    .restart local v3    # "response":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v10, v7}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 715
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v8, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v8}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto :goto_2

    .line 729
    .end local v3    # "response":Lorg/appcelerator/kroll/KrollDict;
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v4

    .line 730
    .restart local v4    # "t":Ljava/lang/Throwable;
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v7, :cond_0

    .line 731
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 732
    .restart local v3    # "response":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v10, v7}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 733
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v8, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v8}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto :goto_2

    .line 739
    .end local v3    # "response":Lorg/appcelerator/kroll/KrollDict;
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 740
    .local v2, "mediaScanIntent":Landroid/content/Intent;
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 741
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 742
    invoke-virtual {p1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 753
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "mediaScanIntent":Landroid/content/Intent;
    :catch_3
    move-exception v4

    .line 754
    .restart local v4    # "t":Ljava/lang/Throwable;
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v7, :cond_0

    .line 755
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 756
    .restart local v3    # "response":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v10, v7}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 757
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v8, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v8}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto :goto_2

    .line 764
    .end local v3    # "response":Lorg/appcelerator/kroll/KrollDict;
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    if-eqz v7, :cond_3

    .line 765
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 767
    :cond_3
    if-nez p3, :cond_4

    .line 768
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v7, :cond_0

    .line 769
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 770
    .restart local v3    # "response":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v3, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 771
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v8, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v8}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 775
    .end local v3    # "response":Lorg/appcelerator/kroll/KrollDict;
    :cond_4
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v7, :cond_0

    .line 776
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 777
    .restart local v3    # "response":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v3, v10, v9}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 778
    iget-object v7, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v8, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v8}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto/16 :goto_2
.end method

.method public run()V
    .locals 3

    .prologue
    .line 689
    iget-object v0, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;

    invoke-interface {v0}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v0

    iput v0, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->code:I

    .line 690
    iget-object v0, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;

    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cameraIntent:Landroid/content/Intent;

    iget v2, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->code:I

    invoke-interface {v0, v1, v2, p0}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 691
    return-void
.end method
