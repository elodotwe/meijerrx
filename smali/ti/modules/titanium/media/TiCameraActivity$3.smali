.class final Lti/modules/titanium/media/TiCameraActivity$3;
.super Ljava/lang/Object;
.source "TiCameraActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/media/TiCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 545
    :try_start_0
    sget-boolean v5, Lti/modules/titanium/media/TiCameraActivity;->saveToPhotoGallery:Z

    invoke-static {p1, v5}, Lti/modules/titanium/media/TiCameraActivity;->access$300([BZ)Ljava/io/File;

    move-result-object v0

    .line 546
    .local v0, "imageFile":Ljava/io/File;
    sget-object v5, Lti/modules/titanium/media/TiCameraActivity;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v5, :cond_0

    .line 547
    new-instance v4, Lorg/appcelerator/titanium/io/TiFile;

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v0, v5, v6}, Lorg/appcelerator/titanium/io/TiFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 548
    .local v4, "theFile":Lorg/appcelerator/titanium/io/TiFile;
    invoke-static {v4}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    .line 549
    .local v3, "theBlob":Lorg/appcelerator/titanium/TiBlob;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lti/modules/titanium/media/MediaModule;->createDictForImage(Lorg/appcelerator/titanium/TiBlob;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    .line 550
    .local v1, "response":Lorg/appcelerator/kroll/KrollDict;
    sget-object v5, Lti/modules/titanium/media/TiCameraActivity;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    sget-object v6, Lti/modules/titanium/media/TiCameraActivity;->callbackContext:Lorg/appcelerator/kroll/KrollObject;

    invoke-interface {v5, v6, v1}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .end local v0    # "imageFile":Ljava/io/File;
    .end local v1    # "response":Lorg/appcelerator/kroll/KrollDict;
    .end local v3    # "theBlob":Lorg/appcelerator/titanium/TiBlob;
    .end local v4    # "theFile":Lorg/appcelerator/titanium/io/TiFile;
    :cond_0
    :goto_0
    sget-boolean v5, Lti/modules/titanium/media/TiCameraActivity;->autohide:Z

    if-eqz v5, :cond_1

    .line 562
    sget-object v5, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    invoke-virtual {v5}, Lti/modules/titanium/media/TiCameraActivity;->finish()V

    .line 566
    :goto_1
    return-void

    .line 552
    :catch_0
    move-exception v2

    .line 553
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v5, Lti/modules/titanium/media/TiCameraActivity;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v5, :cond_0

    .line 554
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 555
    .restart local v1    # "response":Lorg/appcelerator/kroll/KrollDict;
    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 556
    sget-object v5, Lti/modules/titanium/media/TiCameraActivity;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    sget-object v6, Lti/modules/titanium/media/TiCameraActivity;->callbackContext:Lorg/appcelerator/kroll/KrollObject;

    invoke-interface {v5, v6, v1}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto :goto_0

    .line 564
    .end local v1    # "response":Lorg/appcelerator/kroll/KrollDict;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_1
.end method
