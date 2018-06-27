.class public Lti/modules/titanium/media/MediaModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "MediaModule.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/media/MediaModule$CameraResultHandler;
    }
.end annotation

.annotation runtime Lorg/appcelerator/titanium/ContextSpecific;
.end annotation


# static fields
.field public static final CAMERA_FLASH_AUTO:I = 0x2

.field public static final CAMERA_FLASH_OFF:I = 0x0

.field public static final CAMERA_FLASH_ON:I = 0x1

.field public static final CAMERA_FRONT:I = 0x0

.field public static final CAMERA_REAR:I = 0x1

.field private static final DEFAULT_VIBRATE_PATTERN:[J

.field public static final DEVICE_BUSY:I = 0x1

.field protected static final FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field public static final MEDIA_TYPE_PHOTO:Ljava/lang/String; = "public.image"

.field public static final MEDIA_TYPE_VIDEO:Ljava/lang/String; = "public.video"

.field public static final NO_CAMERA:I = 0x2

.field public static final NO_ERROR:I = 0x0

.field public static final NO_VIDEO:I = 0x3

.field protected static final PROP_AUTOHIDE:Ljava/lang/String; = "autohide"

.field protected static final PROP_AUTOSAVE:Ljava/lang/String; = "saveToPhotoGallery"

.field protected static final PROP_OVERLAY:Ljava/lang/String; = "overlay"

.field protected static final PROP_WHICH_CAMERA:Ljava/lang/String; = "whichCamera"

.field private static final TAG:Ljava/lang/String; = "TiMedia"

.field public static final UNKNOWN_ERROR:I = -0x1

.field public static final VIDEO_CONTROL_DEFAULT:I = 0x0

.field public static final VIDEO_CONTROL_EMBEDDED:I = 0x1

.field public static final VIDEO_CONTROL_FULLSCREEN:I = 0x2

.field public static final VIDEO_CONTROL_HIDDEN:I = 0x4

.field public static final VIDEO_CONTROL_NONE:I = 0x3

.field public static final VIDEO_FINISH_REASON_PLAYBACK_ENDED:I = 0x0

.field public static final VIDEO_FINISH_REASON_PLAYBACK_ERROR:I = 0x1

.field public static final VIDEO_FINISH_REASON_USER_EXITED:I = 0x2

.field public static final VIDEO_LOAD_STATE_PLAYABLE:I = 0x1

.field public static final VIDEO_LOAD_STATE_PLAYTHROUGH_OK:I = 0x2

.field public static final VIDEO_LOAD_STATE_STALLED:I = 0x4

.field public static final VIDEO_LOAD_STATE_UNKNOWN:I = 0x0

.field public static final VIDEO_PLAYBACK_STATE_INTERRUPTED:I = 0x3

.field public static final VIDEO_PLAYBACK_STATE_PAUSED:I = 0x2

.field public static final VIDEO_PLAYBACK_STATE_PLAYING:I = 0x1

.field public static final VIDEO_PLAYBACK_STATE_SEEKING_BACKWARD:I = 0x5

.field public static final VIDEO_PLAYBACK_STATE_SEEKING_FORWARD:I = 0x4

.field public static final VIDEO_PLAYBACK_STATE_STOPPED:I = 0x0

.field public static final VIDEO_SCALING_ASPECT_FILL:I = 0x1

.field public static final VIDEO_SCALING_ASPECT_FIT:I = 0x2

.field public static final VIDEO_SCALING_MODE_FILL:I = 0x3

.field public static final VIDEO_SCALING_NONE:I = 0x0

.field public static final VIDEO_TIME_OPTION_CLOSEST_SYNC:I = 0x2

.field public static final VIDEO_TIME_OPTION_NEAREST_KEYFRAME:I = 0x3

.field public static final VIDEO_TIME_OPTION_NEXT_SYNC:I = 0x1

.field public static final VIDEO_TIME_OPTION_PREVIOUS_SYNC:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lti/modules/titanium/media/MediaModule;->DEFAULT_VIBRATE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x64
        0xfa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 127
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 131
    invoke-direct {p0}, Lti/modules/titanium/media/MediaModule;-><init>()V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/MediaModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/MediaModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/MediaModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/MediaModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/MediaModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method protected static createDictForImage(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 912
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    aput-object p0, v1, v3

    .line 913
    .local v1, "parts":[Ljava/lang/String;
    invoke-static {v1, v3}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile([Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    .line 914
    .local v0, "imageData":Lorg/appcelerator/titanium/TiBlob;
    invoke-static {v0, p1}, Lti/modules/titanium/media/MediaModule;->createDictForImage(Lorg/appcelerator/titanium/TiBlob;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    return-object v2
.end method

.method protected static createDictForImage(Lorg/appcelerator/titanium/TiBlob;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 8
    .param p0, "imageData"    # Lorg/appcelerator/titanium/TiBlob;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 918
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 919
    .local v1, "d":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v1, v7, v6}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 921
    const/4 v4, -0x1

    .line 922
    .local v4, "width":I
    const/4 v2, -0x1

    .line 924
    .local v2, "height":I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 925
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 929
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 931
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 932
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 934
    const-string v5, "x"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    const-string v5, "y"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    const-string v5, "width"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    const-string v5, "height"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 940
    .local v0, "cropRect":Lorg/appcelerator/kroll/KrollDict;
    const-string v5, "x"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    const-string v5, "y"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const-string v5, "width"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    const-string v5, "height"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const-string v5, "cropRect"

    invoke-virtual {v1, v5, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string v5, "mediaType"

    const-string v6, "public.image"

    invoke-virtual {v1, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    const-string v5, "media"

    invoke-virtual {v1, v5, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    return-object v1
.end method

.method protected static createExternalStorageFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-static {v0}, Lti/modules/titanium/media/MediaModule;->createExternalStorageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static createExternalStorageFile(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 519
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    sget-object v6, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/TiApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 520
    .local v4, "pictureDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v5

    invoke-interface {v5}, Lorg/appcelerator/titanium/ITiAppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 521
    .local v0, "appPictureDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 522
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 523
    const-string v5, "TiMedia"

    const-string v6, "Failed to create external storage directory."

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_0
    return-object v3

    .line 527
    :cond_0
    if-nez p0, :cond_1

    const-string v2, ".jpg"

    .line 530
    .local v2, "ext":Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiFileHelper;->getInstance()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v2, v6}, Lorg/appcelerator/titanium/util/TiFileHelper;->getTempFile(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "imageFile":Ljava/io/File;
    goto :goto_0

    .end local v2    # "ext":Ljava/lang/String;
    .end local v3    # "imageFile":Ljava/io/File;
    :cond_1
    move-object v2, p0

    .line 527
    goto :goto_1

    .line 532
    .restart local v2    # "ext":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 533
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "TiMedia"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create image file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static createGalleryImageFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-static {v0}, Lti/modules/titanium/media/MediaModule;->createGalleryImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static createGalleryImageFile(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 541
    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 542
    .local v4, "pictureDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v5

    invoke-interface {v5}, Lorg/appcelerator/titanium/ITiAppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 543
    .local v0, "appPictureDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 544
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 545
    const-string v5, "TiMedia"

    const-string v6, "Failed to create application gallery directory."

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_0
    return-object v3

    .line 549
    :cond_0
    if-nez p0, :cond_1

    const-string v2, ".jpg"

    .line 552
    .local v2, "ext":Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiFileHelper;->getInstance()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v2, v6}, Lorg/appcelerator/titanium/util/TiFileHelper;->getTempFile(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "imageFile":Ljava/io/File;
    goto :goto_0

    .end local v2    # "ext":Ljava/lang/String;
    .end local v3    # "imageFile":Ljava/io/File;
    :cond_1
    move-object v2, p0

    .line 549
    goto :goto_1

    .line 554
    .restart local v2    # "ext":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 555
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "TiMedia"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create gallery image file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLastImageId(Landroid/app/Activity;)I
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    .line 147
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    .line 148
    .local v2, "imageColumns":[Ljava/lang/String;
    const-string v8, "_id DESC"

    .line 149
    .local v8, "imageOrderBy":Ljava/lang/String;
    const/4 v3, 0x0

    .line 150
    .local v3, "imageWhere":Ljava/lang/String;
    const/4 v4, 0x0

    .line 151
    .local v4, "imageArguments":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 152
    .local v7, "imageCursor":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 153
    const/4 v6, -0x1

    .line 160
    :cond_0
    :goto_0
    return v6

    .line 155
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 157
    .local v6, "id":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private hasCameraPermission()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 302
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v1

    .line 305
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 306
    .local v0, "currentActivity":Landroid/app/Activity;
    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasStoragePermission()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 313
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v1

    .line 316
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 317
    .local v0, "currentActivity":Landroid/app/Activity;
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchCameraActivity(Lorg/appcelerator/kroll/KrollDict;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 10
    .param p1, "cameraOptions"    # Lorg/appcelerator/kroll/KrollDict;
    .param p2, "overLayProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 241
    const/4 v7, 0x0

    .line 242
    .local v7, "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v2, 0x0

    .line 243
    .local v2, "cancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v3, 0x0

    .line 244
    .local v3, "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v6, 0x0

    .line 245
    .local v6, "saveToPhotoGallery":Z
    const/4 v1, 0x1

    .line 247
    .local v1, "autohide":Z
    const/4 v4, 0x0

    .line 248
    .local v4, "flashMode":I
    const/4 v8, 0x1

    .line 250
    .local v8, "whichCamera":I
    const-string v9, "success"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 251
    const-string v9, "success"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v7, Lorg/appcelerator/kroll/KrollFunction;

    .line 253
    .restart local v7    # "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_0
    const-string v9, "cancel"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 254
    const-string v9, "cancel"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v2, Lorg/appcelerator/kroll/KrollFunction;

    .line 256
    .restart local v2    # "cancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_1
    const-string v9, "error"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 257
    const-string v9, "error"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v3, Lorg/appcelerator/kroll/KrollFunction;

    .line 259
    .restart local v3    # "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_2
    const-string v9, "saveToPhotoGallery"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 260
    const-string v9, "saveToPhotoGallery"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 262
    :cond_3
    const-string v9, "autohide"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 263
    const-string v9, "autohide"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 265
    :cond_4
    const-string v9, "cameraFlashMode"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 266
    const-string v9, "cameraFlashMode"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 268
    :cond_5
    const-string v9, "whichCamera"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 269
    const-string v9, "whichCamera"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 272
    :cond_6
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v9

    sput-object v9, Lti/modules/titanium/media/TiCameraActivity;->callbackContext:Lorg/appcelerator/kroll/KrollObject;

    .line 273
    sput-object v7, Lti/modules/titanium/media/TiCameraActivity;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 274
    sput-object v2, Lti/modules/titanium/media/TiCameraActivity;->cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 275
    sput-object v3, Lti/modules/titanium/media/TiCameraActivity;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 276
    sput-boolean v6, Lti/modules/titanium/media/TiCameraActivity;->saveToPhotoGallery:Z

    .line 277
    sput-boolean v1, Lti/modules/titanium/media/TiCameraActivity;->autohide:Z

    .line 278
    sput-object p2, Lti/modules/titanium/media/TiCameraActivity;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 279
    sput v8, Lti/modules/titanium/media/TiCameraActivity;->whichCamera:I

    .line 280
    invoke-static {v4}, Lti/modules/titanium/media/TiCameraActivity;->setFlashMode(I)V

    .line 283
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v9

    invoke-virtual {v9}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 284
    .local v0, "activity":Landroid/app/Activity;
    new-instance v5, Landroid/content/Intent;

    const-class v9, Lti/modules/titanium/media/TiCameraActivity;

    invoke-direct {v5, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 286
    return-void
.end method

.method private launchNativeCamera(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 13
    .param p1, "cameraOptions"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 166
    const/4 v10, 0x0

    .line 167
    .local v10, "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v2, 0x0

    .line 168
    .local v2, "cancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v3, 0x0

    .line 169
    .local v3, "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v9, 0x0

    .line 171
    .local v9, "saveToPhotoGallery":Z
    const-string v11, "success"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 172
    const-string v11, "success"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v10, Lorg/appcelerator/kroll/KrollFunction;

    .line 174
    .restart local v10    # "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_0
    const-string v11, "cancel"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 175
    const-string v11, "cancel"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v2, Lorg/appcelerator/kroll/KrollFunction;

    .line 177
    .restart local v2    # "cancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_1
    const-string v11, "error"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 178
    const-string v11, "error"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v3, Lorg/appcelerator/kroll/KrollFunction;

    .line 180
    .restart local v3    # "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_2
    const-string v11, "saveToPhotoGallery"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 181
    const-string v11, "saveToPhotoGallery"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 187
    :cond_3
    const/4 v5, 0x0

    .line 189
    .local v5, "imageFile":Ljava/io/File;
    if-eqz v9, :cond_5

    .line 190
    invoke-static {}, Lti/modules/titanium/media/MediaModule;->createGalleryImageFile()Ljava/io/File;

    move-result-object v5

    .line 196
    :goto_0
    if-nez v5, :cond_6

    .line 197
    if-eqz v3, :cond_4

    .line 198
    new-instance v7, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v7}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 199
    .local v7, "response":Lorg/appcelerator/kroll/KrollDict;
    const/4 v11, 0x2

    const-string v12, "Unable to create file for storage"

    invoke-virtual {v7, v11, v12}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v11

    invoke-interface {v3, v11, v7}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 237
    .end local v7    # "response":Lorg/appcelerator/kroll/KrollDict;
    :cond_4
    :goto_1
    return-void

    .line 192
    :cond_5
    invoke-static {}, Lti/modules/titanium/media/MediaModule;->createExternalStorageFile()Ljava/io/File;

    move-result-object v5

    goto :goto_0

    .line 205
    :cond_6
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getIsCameraSupported()Z

    move-result v11

    if-nez v11, :cond_8

    .line 206
    if-eqz v3, :cond_7

    .line 207
    new-instance v7, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v7}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 208
    .restart local v7    # "response":Lorg/appcelerator/kroll/KrollDict;
    const/4 v11, -0x1

    const-string v12, "Camera Not Supported"

    invoke-virtual {v7, v11, v12}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v11

    invoke-interface {v3, v11, v7}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 211
    .end local v7    # "response":Lorg/appcelerator/kroll/KrollDict;
    :cond_7
    const-string v11, "TiMedia"

    const-string v12, "Camera not supported"

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 217
    :cond_8
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 218
    .local v4, "fileUri":Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v6, "intent":Landroid/content/Intent;
    const-string v11, "output"

    invoke-virtual {v6, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 222
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v11

    invoke-virtual {v11}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "activity":Landroid/app/Activity;
    move-object v1, v0

    .line 223
    check-cast v1, Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 225
    .local v1, "activitySupport":Lorg/appcelerator/titanium/util/TiActivitySupport;
    new-instance v8, Lti/modules/titanium/media/MediaModule$CameraResultHandler;

    invoke-direct {v8, p0}, Lti/modules/titanium/media/MediaModule$CameraResultHandler;-><init>(Lti/modules/titanium/media/MediaModule;)V

    .line 226
    .local v8, "resultHandler":Lti/modules/titanium/media/MediaModule$CameraResultHandler;
    iput-object v5, v8, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    .line 227
    iput-object v10, v8, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 228
    iput-object v3, v8, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 229
    iput-object v2, v8, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 230
    iput-object v6, v8, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cameraIntent:Landroid/content/Intent;

    .line 231
    iput-boolean v9, v8, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->saveToPhotoGallery:Z

    .line 232
    iput-object v1, v8, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 233
    invoke-direct {p0, v0}, Lti/modules/titanium/media/MediaModule;->getLastImageId(Landroid/app/Activity;)I

    move-result v11

    iput v11, v8, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->lastImageId:I

    .line 234
    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method


# virtual methods
.method createDictForImage(II[B)Lorg/appcelerator/kroll/KrollDict;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 953
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 955
    .local v1, "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "x"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    const-string v2, "y"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    const-string v2, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    const-string v2, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 961
    .local v0, "cropRect":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "x"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    const-string v2, "y"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    const-string v2, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    const-string v2, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    const-string v2, "cropRect"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    const-string v2, "mediaType"

    const-string v3, "public.image"

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    const-string v2, "media"

    const-string v3, "image/png"

    invoke-static {p3, v3}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    return-object v1
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1147
    const-string v0, "Ti.Media"

    return-object v0
.end method

.method public getAvailableCameras()[I
    .locals 5

    .prologue
    .line 1115
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 1116
    .local v0, "cameraCount":I
    if-nez v0, :cond_1

    .line 1117
    const/4 v3, 0x0

    .line 1140
    :cond_0
    return-object v3

    .line 1120
    :cond_1
    new-array v3, v0, [I

    .line 1122
    .local v3, "result":[I
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1124
    .local v1, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1125
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1126
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    packed-switch v4, :pswitch_data_0

    .line 1136
    const/4 v4, -0x1

    aput v4, v3, v2

    .line 1124
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1128
    :pswitch_0
    const/4 v4, 0x0

    aput v4, v3, v2

    goto :goto_1

    .line 1131
    :pswitch_1
    const/4 v4, 0x1

    aput v4, v3, v2

    goto :goto_1

    .line 1126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCameraFlashMode()I
    .locals 1

    .prologue
    .line 813
    sget v0, Lti/modules/titanium/media/TiCameraActivity;->cameraFlashMode:I

    return v0
.end method

.method public getIsCameraSupported()Z
    .locals 1

    .prologue
    .line 1108
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 508
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public hasCameraPermissions()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 290
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v1

    .line 293
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 294
    .local v0, "currentActivity":Landroid/app/Activity;
    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideCamera()V
    .locals 2

    .prologue
    .line 492
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    if-eqz v0, :cond_0

    .line 493
    invoke-static {}, Lti/modules/titanium/media/TiCameraActivity;->hide()V

    .line 498
    :goto_0
    return-void

    .line 495
    :cond_0
    const-string v0, "TiMedia"

    const-string v1, "Camera preview is not open, unable to hide"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public openPhotoGallery(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 13
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 819
    const/4 v11, 0x0

    .line 820
    .local v11, "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v8, 0x0

    .line 821
    .local v8, "cancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v9, 0x0

    .line 823
    .local v9, "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v11, Lorg/appcelerator/kroll/KrollFunction;

    .line 826
    .restart local v11    # "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_0
    const-string v0, "cancel"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    const-string v0, "cancel"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "cancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v8, Lorg/appcelerator/kroll/KrollFunction;

    .line 829
    .restart local v8    # "cancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_1
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 830
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v9, Lorg/appcelerator/kroll/KrollFunction;

    .line 833
    .restart local v9    # "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_2
    move-object v5, v11

    .line 834
    .local v5, "fSuccessCallback":Lorg/appcelerator/kroll/KrollFunction;
    move-object v3, v8

    .line 835
    .local v3, "fCancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    move-object v4, v9

    .line 837
    .local v4, "fErrorCallback":Lorg/appcelerator/kroll/KrollFunction;
    const-string v0, "TiMedia"

    const-string v1, "openPhotoGallery called"

    const-string v12, "DEBUG_MODE"

    invoke-static {v0, v1, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    .local v6, "activity":Landroid/app/Activity;
    move-object v7, v6

    .line 840
    check-cast v7, Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 842
    .local v7, "activitySupport":Lorg/appcelerator/titanium/util/TiActivitySupport;
    new-instance v10, Lorg/appcelerator/titanium/util/TiIntentWrapper;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-direct {v10, v0}, Lorg/appcelerator/titanium/util/TiIntentWrapper;-><init>(Landroid/content/Intent;)V

    .line 843
    .local v10, "galleryIntent":Lorg/appcelerator/titanium/util/TiIntentWrapper;
    invoke-virtual {v10}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    invoke-virtual {v10}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    invoke-virtual {v10}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    const-string v0, "GALLERY"

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->createActivityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->setWindowId(Ljava/lang/String;)V

    .line 848
    invoke-interface {v7}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v2

    .line 849
    .local v2, "code":I
    invoke-virtual {v10}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v12

    new-instance v0, Lti/modules/titanium/media/MediaModule$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/media/MediaModule$1;-><init>(Lti/modules/titanium/media/MediaModule;ILorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;)V

    invoke-interface {v7, v12, v2, v0}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 909
    return-void
.end method

.method public previewImage(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 16
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 975
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 976
    .local v1, "activity":Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 977
    const-string v13, "TiMedia"

    const-string v14, "Unable to get current activity for previewImage."

    const-string v15, "DEBUG_MODE"

    invoke-static {v13, v14, v15}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :goto_0
    return-void

    .line 981
    :cond_0
    const/4 v12, 0x0

    .line 982
    .local v12, "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v4, 0x0

    .line 983
    .local v4, "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v8, 0x0

    .line 985
    .local v8, "image":Lorg/appcelerator/titanium/TiBlob;
    const-string v13, "success"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 986
    const-string v13, "success"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v12, Lorg/appcelerator/kroll/KrollFunction;

    .line 988
    .restart local v12    # "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_1
    const-string v13, "error"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 989
    const-string v13, "error"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v4, Lorg/appcelerator/kroll/KrollFunction;

    .line 991
    .restart local v4    # "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_2
    const-string v13, "image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 992
    const-string v13, "image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "image":Lorg/appcelerator/titanium/TiBlob;
    check-cast v8, Lorg/appcelerator/titanium/TiBlob;

    .line 995
    .restart local v8    # "image":Lorg/appcelerator/titanium/TiBlob;
    :cond_3
    if-nez v8, :cond_4

    .line 996
    if-eqz v4, :cond_4

    .line 997
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v13

    const/4 v14, -0x1

    const-string v15, "Missing image property"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v14

    invoke-interface {v4, v13, v14}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 1001
    :cond_4
    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiBlob;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/io/TiBaseFile;

    .line 1003
    .local v5, "f":Lorg/appcelerator/titanium/io/TiBaseFile;
    move-object v7, v12

    .line 1004
    .local v7, "fSuccessCallback":Lorg/appcelerator/kroll/KrollFunction;
    move-object v6, v4

    .line 1006
    .local v6, "fErrorCallback":Lorg/appcelerator/kroll/KrollFunction;
    const-string v13, "TiMedia"

    const-string v14, "openPhotoGallery called"

    const-string v15, "DEBUG_MODE"

    invoke-static {v13, v14, v15}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 1008
    check-cast v2, Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 1010
    .local v2, "activitySupport":Lorg/appcelerator/titanium/util/TiActivitySupport;
    new-instance v9, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v9, "intent":Landroid/content/Intent;
    new-instance v11, Lorg/appcelerator/titanium/util/TiIntentWrapper;

    invoke-direct {v11, v9}, Lorg/appcelerator/titanium/util/TiIntentWrapper;-><init>(Landroid/content/Intent;)V

    .line 1012
    .local v11, "previewIntent":Lorg/appcelerator/titanium/util/TiIntentWrapper;
    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v10

    .line 1014
    .local v10, "mimeType":Ljava/lang/String;
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_5

    .line 1015
    invoke-virtual {v5}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v9, v13, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1020
    :goto_1
    const-string v13, "PREVIEW"

    invoke-static {v13}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->createActivityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->setWindowId(Ljava/lang/String;)V

    .line 1022
    invoke-interface {v2}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v3

    .line 1023
    .local v3, "code":I
    new-instance v13, Lti/modules/titanium/media/MediaModule$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3, v7, v6}, Lti/modules/titanium/media/MediaModule$2;-><init>(Lti/modules/titanium/media/MediaModule;ILorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;)V

    invoke-interface {v2, v9, v3, v13}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    goto/16 :goto_0

    .line 1017
    .end local v3    # "code":I
    :cond_5
    invoke-virtual {v5}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public requestCameraPermissions(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 5
    .param p1, "permissionCallback"    # Lorg/appcelerator/kroll/KrollFunction;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->hasCameraPermissions()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    :goto_0
    return-void

    .line 356
    :cond_0
    sget-object v2, Lorg/appcelerator/titanium/TiBaseActivity;->cameraCallbackContext:Lorg/appcelerator/kroll/KrollObject;

    if-nez v2, :cond_1

    .line 357
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    sput-object v2, Lorg/appcelerator/titanium/TiBaseActivity;->cameraCallbackContext:Lorg/appcelerator/kroll/KrollObject;

    .line 359
    :cond_1
    sput-object p1, Lorg/appcelerator/titanium/TiBaseActivity;->cameraPermissionCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, "permissions":[Ljava/lang/String;
    invoke-direct {p0}, Lti/modules/titanium/media/MediaModule;->hasCameraPermission()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lti/modules/titanium/media/MediaModule;->hasStoragePermission()Z

    move-result v2

    if-nez v2, :cond_2

    .line 362
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .end local v1    # "permissions":[Ljava/lang/String;
    const-string v2, "android.permission.CAMERA"

    aput-object v2, v1, v3

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    .line 370
    .restart local v1    # "permissions":[Ljava/lang/String;
    :goto_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 371
    .local v0, "currentActivity":Landroid/app/Activity;
    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 363
    .end local v0    # "currentActivity":Landroid/app/Activity;
    :cond_2
    invoke-direct {p0}, Lti/modules/titanium/media/MediaModule;->hasCameraPermission()Z

    move-result v2

    if-nez v2, :cond_3

    .line 364
    new-array v1, v4, [Ljava/lang/String;

    .end local v1    # "permissions":[Ljava/lang/String;
    const-string v2, "android.permission.CAMERA"

    aput-object v2, v1, v3

    .restart local v1    # "permissions":[Ljava/lang/String;
    goto :goto_1

    .line 366
    :cond_3
    new-array v1, v4, [Ljava/lang/String;

    .end local v1    # "permissions":[Ljava/lang/String;
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    .restart local v1    # "permissions":[Ljava/lang/String;
    goto :goto_1
.end method

.method public saveToPhotoGallery(Ljava/lang/Object;Ljava/util/HashMap;)V
    .locals 22
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "callbackargs"    # Ljava/util/HashMap;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 382
    const/16 v16, 0x0

    .line 383
    .local v16, "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v8, 0x0

    .line 385
    .local v8, "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v6, 0x0

    .line 388
    .local v6, "callbackDict":Lorg/appcelerator/kroll/KrollDict;
    if-eqz p2, :cond_1

    .line 389
    new-instance v6, Lorg/appcelerator/kroll/KrollDict;

    .end local v6    # "callbackDict":Lorg/appcelerator/kroll/KrollDict;
    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 390
    .restart local v6    # "callbackDict":Lorg/appcelerator/kroll/KrollDict;
    const-string v20, "success"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 391
    const-string v20, "success"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v16, Lorg/appcelerator/kroll/KrollFunction;

    .line 393
    .restart local v16    # "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_0
    const-string v20, "error"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 394
    const-string v20, "error"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v8, Lorg/appcelerator/kroll/KrollFunction;

    .line 399
    .restart local v8    # "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/appcelerator/titanium/TiBlob;

    move/from16 v20, v0

    if-nez v20, :cond_2

    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/appcelerator/titanium/TiFileProxy;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    :cond_2
    const/16 v19, 0x1

    .line 400
    .local v19, "validType":Z
    :goto_0
    if-nez v19, :cond_5

    .line 401
    if-eqz v8, :cond_3

    .line 402
    new-instance v15, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v15}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 403
    .local v15, "response":Lorg/appcelerator/kroll/KrollDict;
    const/16 v20, -0x1

    const-string v21, "Invalid type passed as argument"

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0, v15}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 486
    .end local v15    # "response":Lorg/appcelerator/kroll/KrollDict;
    .end local p1    # "arg":Ljava/lang/Object;
    :cond_3
    :goto_1
    return-void

    .line 399
    .end local v19    # "validType":Z
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    .line 409
    .restart local v19    # "validType":Z
    :cond_5
    const/16 v18, 0x0

    .line 412
    .local v18, "theBlob":Lorg/appcelerator/titanium/TiBlob;
    :try_start_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/appcelerator/titanium/TiFileProxy;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 413
    check-cast p1, Lorg/appcelerator/titanium/TiFileProxy;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v18

    .line 418
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lorg/appcelerator/titanium/TiBlob;->getWidth()I

    move-result v20

    if-eqz v20, :cond_6

    invoke-virtual/range {v18 .. v18}, Lorg/appcelerator/titanium/TiBlob;->getHeight()I

    move-result v20

    if-nez v20, :cond_8

    .line 419
    :cond_6
    if-eqz v8, :cond_3

    .line 420
    new-instance v15, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v15}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 421
    .restart local v15    # "response":Lorg/appcelerator/kroll/KrollDict;
    const/16 v20, -0x1

    const-string v21, "Could not decode bitmap from argument"

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0, v15}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 479
    .end local v15    # "response":Lorg/appcelerator/kroll/KrollDict;
    :catch_0
    move-exception v17

    .line 480
    .local v17, "t":Ljava/lang/Throwable;
    if-eqz v8, :cond_3

    .line 481
    new-instance v15, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v15}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 482
    .restart local v15    # "response":Lorg/appcelerator/kroll/KrollDict;
    const/16 v20, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0, v15}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto :goto_1

    .line 415
    .end local v15    # "response":Lorg/appcelerator/kroll/KrollDict;
    .end local v17    # "t":Ljava/lang/Throwable;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_7
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    move-object/from16 v18, v0

    goto :goto_2

    .line 427
    .end local p1    # "arg":Ljava/lang/Object;
    :cond_8
    const/4 v3, 0x0

    .line 428
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 429
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    const/4 v9, 0x0

    .line 430
    .local v9, "extension":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lorg/appcelerator/titanium/TiBlob;->getType()I

    move-result v20

    if-nez v20, :cond_a

    .line 431
    invoke-virtual/range {v18 .. v18}, Lorg/appcelerator/titanium/TiBlob;->getImage()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 432
    .local v10, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 433
    const-string v9, ".png"

    .line 447
    .end local v10    # "image":Landroid/graphics/Bitmap;
    :goto_3
    new-instance v3, Ljava/io/BufferedInputStream;

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    invoke-virtual/range {v18 .. v18}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 449
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    invoke-static {v9}, Lti/modules/titanium/media/MediaModule;->createGalleryImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 450
    .local v11, "imageFile":Ljava/io/File;
    new-instance v4, Ljava/io/BufferedOutputStream;

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 451
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    const/16 v20, 0x1fa0

    move/from16 v0, v20

    new-array v5, v0, [B

    .line 452
    .local v5, "buf":[B
    const/4 v12, 0x0

    .line 454
    .local v12, "len":I
    :goto_4
    invoke-virtual {v3, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v12

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v12, v0, :cond_b

    .line 455
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v5, v0, v12}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_4

    .line 435
    .end local v5    # "buf":[B
    .end local v11    # "imageFile":Ljava/io/File;
    .end local v12    # "len":I
    .restart local v10    # "image":Landroid/graphics/Bitmap;
    :cond_9
    const-string v9, ".jpg"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 439
    .end local v10    # "image":Landroid/graphics/Bitmap;
    :cond_a
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v14

    .line 440
    .local v14, "mimetype":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x2e

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".jpg"

    move-object/from16 v0, v21

    invoke-static {v14, v0}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getFileExtensionFromMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    goto :goto_3

    .line 441
    .end local v14    # "mimetype":Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 442
    .restart local v17    # "t":Ljava/lang/Throwable;
    const/4 v9, 0x0

    goto :goto_3

    .line 457
    .end local v17    # "t":Ljava/lang/Throwable;
    .restart local v5    # "buf":[B
    .restart local v11    # "imageFile":Ljava/io/File;
    .restart local v12    # "len":I
    :cond_b
    if-eqz v3, :cond_c

    .line 458
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 459
    const/4 v3, 0x0

    .line 461
    :cond_c
    if-eqz v4, :cond_d

    .line 462
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 463
    const/4 v4, 0x0

    .line 466
    :cond_d
    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v13, "mediaScanIntent":Landroid/content/Intent;
    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 468
    .local v7, "contentUri":Landroid/net/Uri;
    invoke-virtual {v13, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 469
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 470
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual {v2, v13}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 473
    if-eqz v16, :cond_3

    .line 474
    new-instance v15, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v15}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 475
    .restart local v15    # "response":Lorg/appcelerator/kroll/KrollDict;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v15}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method

.method public setCameraFlashMode(I)V
    .locals 0
    .param p1, "flashMode"    # I

    .prologue
    .line 806
    invoke-static {p1}, Lti/modules/titanium/media/TiCameraActivity;->setFlashMode(I)V

    .line 807
    return-void
.end method

.method public showCamera(Ljava/util/HashMap;)V
    .locals 5
    .param p1, "options"    # Ljava/util/HashMap;

    .prologue
    .line 327
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->hasCameraPermissions()Z

    move-result v2

    if-nez v2, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const/4 v0, 0x0

    .line 331
    .local v0, "cameraOptions":Lorg/appcelerator/kroll/KrollDict;
    if-eqz p1, :cond_2

    instance-of v2, p1, Ljava/util/HashMap;

    if-nez v2, :cond_3

    .line 332
    :cond_2
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    const-string v2, "TiMedia"

    const-string v3, "showCamera called with invalid options"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    :cond_3
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0    # "cameraOptions":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 340
    .restart local v0    # "cameraOptions":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "overlay"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 342
    .local v1, "overlay":Ljava/lang/Object;
    if-eqz v1, :cond_4

    instance-of v2, v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v2, :cond_4

    .line 343
    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v1    # "overlay":Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lti/modules/titanium/media/MediaModule;->launchCameraActivity(Lorg/appcelerator/kroll/KrollDict;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 345
    .restart local v1    # "overlay":Ljava/lang/Object;
    :cond_4
    invoke-direct {p0, v0}, Lti/modules/titanium/media/MediaModule;->launchNativeCamera(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method public switchCamera(I)V
    .locals 3
    .param p1, "whichCamera"    # I

    .prologue
    .line 1094
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    .line 1096
    .local v0, "activity":Lti/modules/titanium/media/TiCameraActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lti/modules/titanium/media/TiCameraActivity;->isPreviewRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1097
    :cond_0
    const-string v1, "TiMedia"

    const-string v2, "Camera preview is not open, unable to switch camera."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :goto_0
    return-void

    .line 1101
    :cond_1
    invoke-virtual {v0, p1}, Lti/modules/titanium/media/TiCameraActivity;->switchCamera(I)V

    goto :goto_0
.end method

.method public takePicture()V
    .locals 2

    .prologue
    .line 1084
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    if-eqz v0, :cond_0

    .line 1085
    invoke-static {}, Lti/modules/titanium/media/TiCameraActivity;->takePicture()V

    .line 1089
    :goto_0
    return-void

    .line 1087
    :cond_0
    const-string v0, "TiMedia"

    const-string v1, "Camera preview is not open, unable to take photo"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public takeScreenshot(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 9
    .param p1, "callback"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1056
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1058
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 1059
    const-string v3, "TiMedia"

    const-string v4, "Could not get current activity for takeScreenshot."

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v8, v4, v6

    invoke-interface {p1, v3, v4}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1065
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1

    .line 1068
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1070
    .local v2, "w":Landroid/view/Window;
    :goto_2
    invoke-virtual {v2}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1071
    invoke-virtual {v2}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    move-result-object v2

    goto :goto_2

    .line 1074
    :cond_3
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-static {v8, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->viewToImage(Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    .line 1075
    .local v1, "image":Lorg/appcelerator/kroll/KrollDict;
    if-eqz p1, :cond_0

    .line 1076
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-interface {p1, v3, v4}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public vibrate([J)V
    .locals 3
    .param p1, "pattern"    # [J
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 137
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 138
    :cond_0
    sget-object p1, Lti/modules/titanium/media/MediaModule;->DEFAULT_VIBRATE_PATTERN:[J

    .line 140
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 141
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_2

    .line 142
    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 144
    :cond_2
    return-void
.end method
