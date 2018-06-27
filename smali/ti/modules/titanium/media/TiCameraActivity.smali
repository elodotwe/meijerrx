.class public Lti/modules/titanium/media/TiCameraActivity;
.super Lorg/appcelerator/titanium/TiBaseActivity;
.source "TiCameraActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiCameraActivity"

.field public static autohide:Z

.field private static backCameraId:I

.field public static callbackContext:Lorg/appcelerator/kroll/KrollObject;

.field private static camera:Landroid/hardware/Camera;

.field public static cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

.field public static cameraFlashMode:I

.field public static cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

.field public static errorCallback:Lorg/appcelerator/kroll/KrollFunction;

.field private static frontCameraId:I

.field static jpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private static optimalPreviewSize:Landroid/hardware/Camera$Size;

.field public static overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field public static saveToPhotoGallery:Z

.field static shutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field public static successCallback:Lorg/appcelerator/kroll/KrollFunction;

.field private static supportedPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field public static whichCamera:I


# instance fields
.field private cameraLayout:Landroid/widget/FrameLayout;

.field private currentRotation:I

.field private localOverlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field private preview:Landroid/view/SurfaceView;

.field private previewLayout:Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

.field private previewRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    .line 56
    sput v0, Lti/modules/titanium/media/TiCameraActivity;->frontCameraId:I

    .line 57
    sput v0, Lti/modules/titanium/media/TiCameraActivity;->backCameraId:I

    .line 65
    sput-object v3, Lti/modules/titanium/media/TiCameraActivity;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 66
    sput-object v3, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    .line 70
    sput-boolean v1, Lti/modules/titanium/media/TiCameraActivity;->saveToPhotoGallery:Z

    .line 71
    sput v2, Lti/modules/titanium/media/TiCameraActivity;->whichCamera:I

    .line 72
    sput v1, Lti/modules/titanium/media/TiCameraActivity;->cameraFlashMode:I

    .line 73
    sput-boolean v2, Lti/modules/titanium/media/TiCameraActivity;->autohide:Z

    .line 527
    new-instance v0, Lti/modules/titanium/media/TiCameraActivity$2;

    invoke-direct {v0}, Lti/modules/titanium/media/TiCameraActivity$2;-><init>()V

    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 540
    new-instance v0, Lti/modules/titanium/media/TiCameraActivity$3;

    invoke-direct {v0}, Lti/modules/titanium/media/TiCameraActivity$3;-><init>()V

    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiBaseActivity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/TiCameraActivity;->localOverlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/media/TiCameraActivity;->previewRunning:Z

    .line 75
    return-void
.end method

.method static synthetic access$000()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->optimalPreviewSize:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method static synthetic access$002(Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 50
    sput-object p0, Lti/modules/titanium/media/TiCameraActivity;->optimalPreviewSize:Landroid/hardware/Camera$Size;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->supportedPreviewSizes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lti/modules/titanium/media/TiCameraActivity;->getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300([BZ)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1}, Lti/modules/titanium/media/TiCameraActivity;->writeToFile([BZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/media/TiCameraActivity;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/TiCameraActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lti/modules/titanium/media/TiCameraActivity;->preview:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$500(Lti/modules/titanium/media/TiCameraActivity;Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/media/TiCameraActivity;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lti/modules/titanium/media/TiCameraActivity;->startPreview(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method private checkWhichCameraAsDefault()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 573
    invoke-static {}, Lti/modules/titanium/media/TiCameraActivity;->getFrontCameraId()I

    .line 574
    invoke-static {}, Lti/modules/titanium/media/TiCameraActivity;->getBackCameraId()I

    .line 575
    sget v0, Lti/modules/titanium/media/TiCameraActivity;->backCameraId:I

    if-ne v0, v1, :cond_0

    sget v0, Lti/modules/titanium/media/TiCameraActivity;->frontCameraId:I

    if-eq v0, v1, :cond_0

    .line 576
    const/4 v0, 0x0

    sput v0, Lti/modules/titanium/media/TiCameraActivity;->whichCamera:I

    .line 580
    :goto_0
    return-void

    .line 578
    :cond_0
    const/4 v0, 0x1

    sput v0, Lti/modules/titanium/media/TiCameraActivity;->whichCamera:I

    goto :goto_0
.end method

.method private static getBackCameraId()I
    .locals 5

    .prologue
    .line 601
    sget v3, Lti/modules/titanium/media/TiCameraActivity;->backCameraId:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 602
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 603
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 604
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 605
    .local v2, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 606
    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_1

    .line 607
    sput v1, Lti/modules/titanium/media/TiCameraActivity;->backCameraId:I

    .line 613
    .end local v2    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    sget v3, Lti/modules/titanium/media/TiCameraActivity;->backCameraId:I

    return v3

    .line 603
    .restart local v2    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getFrontCameraId()I
    .locals 5

    .prologue
    .line 584
    sget v3, Lti/modules/titanium/media/TiCameraActivity;->frontCameraId:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 585
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 586
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 587
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 588
    .local v2, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 589
    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 590
    sput v1, Lti/modules/titanium/media/TiCameraActivity;->frontCameraId:I

    .line 596
    .end local v2    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    sget v3, Lti/modules/titanium/media/TiCameraActivity;->frontCameraId:I

    return v3

    .line 586
    .restart local v2    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getOptimalPictureSize(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p0, :cond_1

    .line 434
    const/4 v1, 0x0

    .line 447
    :cond_0
    return-object v1

    .line 436
    :cond_1
    const/4 v1, 0x0

    .line 438
    .local v1, "optimalSize":Landroid/hardware/Camera$Size;
    const-wide/16 v2, 0x0

    .line 440
    .local v2, "resolution":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 441
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    int-to-long v6, v5

    cmp-long v5, v6, v2

    if-lez v5, :cond_2

    .line 442
    move-object v1, v4

    .line 443
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    int-to-long v2, v5

    goto :goto_0
.end method

.method private static getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 16
    .param p1, "w"    # I
    .param p2, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 400
    .local v10, "targetRatio":D
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_1

    .line 401
    move/from16 v0, p1

    int-to-double v12, v0

    move/from16 v0, p2

    int-to-double v14, v0

    div-double v10, v12, v14

    .line 405
    :goto_0
    if-nez p0, :cond_2

    .line 406
    const/4 v3, 0x0

    .line 420
    :cond_0
    return-object v3

    .line 403
    :cond_1
    move/from16 v0, p2

    int-to-double v12, v0

    move/from16 v0, p1

    int-to-double v14, v0

    div-double v10, v12, v14

    goto :goto_0

    .line 408
    :cond_2
    const/4 v3, 0x0

    .line 409
    .local v3, "optimalSize":Landroid/hardware/Camera$Size;
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 412
    .local v4, "minAspectDiff":D
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 413
    .local v8, "size":Landroid/hardware/Camera$Size;
    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    int-to-double v12, v9

    iget v9, v8, Landroid/hardware/Camera$Size;->height:I

    int-to-double v14, v9

    div-double v6, v12, v14

    .line 414
    .local v6, "ratio":D
    sub-double v12, v6, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpg-double v9, v12, v4

    if-gez v9, :cond_3

    .line 415
    move-object v3, v8

    .line 416
    sub-double v12, v6, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    goto :goto_1
.end method

.method public static hide()V
    .locals 2

    .prologue
    .line 523
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lti/modules/titanium/media/TiCameraActivity;->setResult(I)V

    .line 524
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiCameraActivity;->finish()V

    .line 525
    return-void
.end method

.method private static onError(ILjava/lang/String;)V
    .locals 3
    .param p0, "code"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 452
    sget-object v1, Lti/modules/titanium/media/TiCameraActivity;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-nez v1, :cond_0

    .line 453
    const-string v1, "TiCameraActivity"

    invoke-static {v1, p1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :goto_0
    return-void

    .line 457
    :cond_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 458
    .local v0, "dict":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v0, p0, p1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 459
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v1, Lti/modules/titanium/media/TiCameraActivity;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->callbackContext:Lorg/appcelerator/kroll/KrollObject;

    invoke-interface {v1, v2, v0}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private openCamera()V
    .locals 1

    .prologue
    .line 618
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Lti/modules/titanium/media/TiCameraActivity;->openCamera(I)V

    .line 619
    return-void
.end method

.method private openCamera(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    const/4 v1, 0x0

    .line 623
    iget-boolean v0, p0, Lti/modules/titanium/media/TiCameraActivity;->previewRunning:Z

    if-eqz v0, :cond_0

    .line 624
    invoke-direct {p0}, Lti/modules/titanium/media/TiCameraActivity;->stopPreview()V

    .line 627
    :cond_0
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 628
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 629
    sput-object v1, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    .line 632
    :cond_1
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_2

    .line 633
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    .line 638
    :goto_0
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_3

    .line 639
    const/4 v0, -0x1

    const-string v1, "Unable to access the camera."

    invoke-static {v0, v1}, Lti/modules/titanium/media/TiCameraActivity;->onError(ILjava/lang/String;)V

    .line 640
    invoke-virtual {p0}, Lti/modules/titanium/media/TiCameraActivity;->finish()V

    .line 647
    :goto_1
    return-void

    .line 635
    :cond_2
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    goto :goto_0

    .line 644
    :cond_3
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->supportedPreviewSizes:Ljava/util/List;

    .line 646
    sput-object v1, Lti/modules/titanium/media/TiCameraActivity;->optimalPreviewSize:Landroid/hardware/Camera$Size;

    goto :goto_1
.end method

.method public static setFlashMode(I)V
    .locals 4
    .param p0, "cameraFlashMode"    # I

    .prologue
    .line 240
    sput p0, Lti/modules/titanium/media/TiCameraActivity;->cameraFlashMode:I

    .line 241
    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    .line 243
    :try_start_0
    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 244
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    if-nez p0, :cond_2

    .line 245
    const-string v2, "off"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 251
    :cond_0
    :goto_0
    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 256
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    :cond_1
    :goto_1
    return-void

    .line 246
    .restart local v0    # "p":Landroid/hardware/Camera$Parameters;
    :cond_2
    const/4 v2, 0x1

    if-ne p0, v2, :cond_3

    .line 247
    const-string v2, "on"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    .line 253
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "TiCameraActivity"

    const-string v3, "Could not set flash mode"

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 248
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "p":Landroid/hardware/Camera$Parameters;
    :cond_3
    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    .line 249
    :try_start_1
    const-string v2, "auto"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private startPreview(Landroid/view/SurfaceHolder;)V
    .locals 16
    .param p1, "previewHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 278
    sget-object v13, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    if-nez v13, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/TiCameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getRotation()I

    move-result v11

    .line 284
    .local v11, "rotation":I
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/media/TiCameraActivity;->currentRotation:I

    if-ne v13, v11, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lti/modules/titanium/media/TiCameraActivity;->previewRunning:Z

    if-nez v13, :cond_0

    .line 288
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lti/modules/titanium/media/TiCameraActivity;->previewRunning:Z

    if-eqz v13, :cond_3

    .line 290
    :try_start_0
    sget-object v13, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v13}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    :cond_3
    :goto_1
    const/high16 v1, -0x80000000

    .line 298
    .local v1, "cameraId":I
    sget v13, Lti/modules/titanium/media/TiCameraActivity;->whichCamera:I

    if-nez v13, :cond_6

    .line 299
    invoke-static {}, Lti/modules/titanium/media/TiCameraActivity;->getFrontCameraId()I

    move-result v1

    .line 303
    :goto_2
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 304
    .local v5, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v1, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 306
    move-object/from16 v0, p0

    iput v11, v0, Lti/modules/titanium/media/TiCameraActivity;->currentRotation:I

    .line 309
    const/4 v2, 0x0

    .local v2, "degrees":I
    const/4 v3, 0x0

    .line 312
    .local v3, "degrees2":I
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/media/TiCameraActivity;->currentRotation:I

    packed-switch v13, :pswitch_data_0

    .line 320
    :goto_3
    iget v13, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 321
    iget v13, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v13, v2

    rem-int/lit16 v9, v13, 0x168

    .line 322
    .local v9, "result":I
    rsub-int v13, v9, 0x168

    rem-int/lit16 v9, v13, 0x168

    .line 328
    :goto_4
    sget-object v13, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v13}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 329
    .local v6, "param":Landroid/hardware/Camera$Parameters;
    iget v13, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 330
    iget v13, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v13, v3

    add-int/lit16 v13, v13, 0x168

    rem-int/lit16 v10, v13, 0x168

    .line 335
    .local v10, "result2":I
    :goto_5
    sget-object v13, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v13, v9}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 336
    invoke-virtual {v6, v10}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 339
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v12

    .line 340
    .local v12, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "continuous-picture"

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 341
    const-string v13, "continuous-picture"

    invoke-virtual {v6, v13}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 348
    :cond_4
    :goto_6
    sget-object v13, Lti/modules/titanium/media/TiCameraActivity;->optimalPreviewSize:Landroid/hardware/Camera$Size;

    if-eqz v13, :cond_5

    .line 349
    sget-object v13, Lti/modules/titanium/media/TiCameraActivity;->optimalPreviewSize:Landroid/hardware/Camera$Size;

    iget v13, v13, Landroid/hardware/Camera$Size;->width:I

    sget-object v14, Lti/modules/titanium/media/TiCameraActivity;->optimalPreviewSize:Landroid/hardware/Camera$Size;

    iget v14, v14, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v13, v14}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 350
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v7

    .line 351
    .local v7, "pictSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-static {v7}, Lti/modules/titanium/media/TiCameraActivity;->getOptimalPictureSize(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 352
    .local v8, "pictureSize":Landroid/hardware/Camera$Size;
    if-eqz v8, :cond_5

    .line 353
    iget v13, v8, Landroid/hardware/Camera$Size;->width:I

    iget v14, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v13, v14}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 356
    .end local v7    # "pictSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v8    # "pictureSize":Landroid/hardware/Camera$Size;
    :cond_5
    sget-object v13, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v13, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 359
    :try_start_1
    sget-object v13, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 360
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lti/modules/titanium/media/TiCameraActivity;->previewRunning:Z

    .line 361
    sget-object v13, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v13}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 362
    :catch_0
    move-exception v4

    .line 363
    .local v4, "e":Ljava/lang/Exception;
    const/4 v13, -0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to setup preview surface: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lti/modules/titanium/media/TiCameraActivity;->onError(ILjava/lang/String;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/TiCameraActivity;->finish()V

    goto/16 :goto_0

    .line 301
    .end local v2    # "degrees":I
    .end local v3    # "degrees2":I
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v6    # "param":Landroid/hardware/Camera$Parameters;
    .end local v9    # "result":I
    .end local v10    # "result2":I
    .end local v12    # "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-static {}, Lti/modules/titanium/media/TiCameraActivity;->getBackCameraId()I

    move-result v1

    goto/16 :goto_2

    .line 313
    .restart local v2    # "degrees":I
    .restart local v3    # "degrees2":I
    .restart local v5    # "info":Landroid/hardware/Camera$CameraInfo;
    :pswitch_0
    const/4 v3, 0x0

    move v2, v3

    goto/16 :goto_3

    .line 314
    :pswitch_1
    const/16 v3, 0xb4

    move v2, v3

    goto/16 :goto_3

    .line 315
    :pswitch_2
    const/16 v2, 0x5a

    const/16 v3, 0x10e

    goto/16 :goto_3

    .line 316
    :pswitch_3
    const/16 v2, 0x10e

    const/16 v3, 0x5a

    goto/16 :goto_3

    .line 324
    :cond_7
    iget v13, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v13, v2

    add-int/lit16 v13, v13, 0x168

    rem-int/lit16 v9, v13, 0x168

    .restart local v9    # "result":I
    goto/16 :goto_4

    .line 332
    .restart local v6    # "param":Landroid/hardware/Camera$Parameters;
    :cond_8
    iget v13, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v13, v3

    rem-int/lit16 v10, v13, 0x168

    .restart local v10    # "result2":I
    goto/16 :goto_5

    .line 342
    .restart local v12    # "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    const-string v13, "auto"

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 343
    const-string v13, "auto"

    invoke-virtual {v6, v13}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 344
    :cond_a
    const-string v13, "macro"

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 345
    const-string v13, "macro"

    invoke-virtual {v6, v13}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 291
    .end local v1    # "cameraId":I
    .end local v2    # "degrees":I
    .end local v3    # "degrees2":I
    .end local v5    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v6    # "param":Landroid/hardware/Camera$Parameters;
    .end local v9    # "result":I
    .end local v10    # "result2":I
    .end local v12    # "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v13

    goto/16 :goto_1

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private stopPreview()V
    .locals 1

    .prologue
    .line 371
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/media/TiCameraActivity;->previewRunning:Z

    if-nez v0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/media/TiCameraActivity;->previewRunning:Z

    goto :goto_0
.end method

.method public static takePicture()V
    .locals 6

    .prologue
    .line 496
    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "focusMode":Ljava/lang/String;
    const-string v2, "edof"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fixed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "infinity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 499
    new-instance v0, Lti/modules/titanium/media/TiCameraActivity$1;

    invoke-direct {v0}, Lti/modules/titanium/media/TiCameraActivity$1;-><init>()V

    .line 510
    .local v0, "focusCallback":Landroid/hardware/Camera$AutoFocusCallback;
    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 514
    .end local v0    # "focusCallback":Landroid/hardware/Camera$AutoFocusCallback;
    :goto_0
    return-void

    .line 512
    :cond_0
    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    sget-object v3, Lti/modules/titanium/media/TiCameraActivity;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    const/4 v4, 0x0

    sget-object v5, Lti/modules/titanium/media/TiCameraActivity;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0
.end method

.method private static writeToFile([BZ)Ljava/io/File;
    .locals 8
    .param p0, "data"    # [B
    .param p1, "saveToGallery"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 468
    const/4 v2, 0x0

    .line 469
    .local v2, "imageFile":Ljava/io/File;
    if-eqz p1, :cond_1

    .line 470
    :try_start_0
    invoke-static {}, Lti/modules/titanium/media/MediaModule;->createGalleryImageFile()Ljava/io/File;

    move-result-object v2

    .line 476
    :goto_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 477
    .local v3, "imageOut":Ljava/io/FileOutputStream;
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 478
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 480
    if-eqz p1, :cond_0

    .line 481
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .local v4, "mediaScanIntent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 483
    .local v1, "contentUri":Landroid/net/Uri;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 484
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 485
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 487
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v4    # "mediaScanIntent":Landroid/content/Intent;
    :cond_0
    return-object v2

    .line 473
    .end local v3    # "imageOut":Ljava/io/FileOutputStream;
    :cond_1
    const-string v6, "tia"

    const-string v7, ".jpg"

    invoke-static {v6, v7}, Lorg/appcelerator/titanium/io/TiFileFactory;->createDataFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 489
    :catch_0
    move-exception v5

    .line 490
    .local v5, "t":Ljava/lang/Throwable;
    throw v5
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 385
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 386
    return-void
.end method

.method public isPreviewRunning()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lti/modules/titanium/media/TiCameraActivity;->previewRunning:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 695
    sget-object v1, Lti/modules/titanium/media/TiCameraActivity;->cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_0

    .line 696
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 697
    .local v0, "response":Lorg/appcelerator/kroll/KrollDict;
    const/4 v1, -0x1

    const-string v2, "User cancelled the request"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 698
    sget-object v1, Lti/modules/titanium/media/TiCameraActivity;->cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->callbackContext:Lorg/appcelerator/kroll/KrollObject;

    invoke-interface {v1, v2, v0}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 700
    .end local v0    # "response":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onBackPressed()V

    .line 701
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 137
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/TiCameraActivity;->setFullscreen(Z)V

    .line 139
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-direct {p0}, Lti/modules/titanium/media/TiCameraActivity;->checkWhichCameraAsDefault()V

    .line 145
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->preview:Landroid/view/SurfaceView;

    .line 146
    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->preview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 147
    .local v0, "previewHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 148
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 151
    sget-object v1, Lti/modules/titanium/media/TiCameraActivity;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iput-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->localOverlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 154
    new-instance v1, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

    invoke-direct {v1, p0}, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->previewLayout:Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

    .line 155
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->cameraLayout:Landroid/widget/FrameLayout;

    .line 156
    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->cameraLayout:Landroid/widget/FrameLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 157
    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->cameraLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lti/modules/titanium/media/TiCameraActivity;->previewLayout:Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->cameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/TiCameraActivity;->setContentView(Landroid/view/View;)V

    .line 162
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 706
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 709
    const/4 v0, 0x1

    .line 712
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/TiBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 260
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onPause()V

    .line 262
    invoke-direct {p0}, Lti/modules/titanium/media/TiCameraActivity;->stopPreview()V

    .line 263
    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->previewLayout:Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

    iget-object v2, p0, Lti/modules/titanium/media/TiCameraActivity;->preview:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->removeView(Landroid/view/View;)V

    .line 264
    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->cameraLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lti/modules/titanium/media/TiCameraActivity;->localOverlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 267
    :try_start_0
    sget-object v1, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 268
    const/4 v1, 0x0

    sput-object v1, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    sput-object v4, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    .line 274
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TiCameraActivity"

    const-string v2, "Camera is not open, unable to release"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 196
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onResume()V

    .line 197
    sget-object v3, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 199
    sget v3, Lti/modules/titanium/media/TiCameraActivity;->whichCamera:I

    if-nez v3, :cond_2

    .line 200
    invoke-static {}, Lti/modules/titanium/media/TiCameraActivity;->getFrontCameraId()I

    move-result v3

    invoke-direct {p0, v3}, Lti/modules/titanium/media/TiCameraActivity;->openCamera(I)V

    .line 206
    :cond_0
    :goto_0
    sget-object v3, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v3, :cond_1

    .line 207
    sget v3, Lti/modules/titanium/media/TiCameraActivity;->cameraFlashMode:I

    invoke-static {v3}, Lti/modules/titanium/media/TiCameraActivity;->setFlashMode(I)V

    .line 209
    :cond_1
    sget-object v3, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    if-nez v3, :cond_3

    .line 236
    :goto_1
    return-void

    .line 203
    :cond_2
    invoke-direct {p0}, Lti/modules/titanium/media/TiCameraActivity;->openCamera()V

    goto :goto_0

    .line 215
    :cond_3
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_4

    .line 216
    invoke-virtual {p0}, Lti/modules/titanium/media/TiCameraActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 217
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_4

    .line 218
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    :cond_4
    :goto_2
    sput-object p0, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    .line 226
    iget-object v3, p0, Lti/modules/titanium/media/TiCameraActivity;->previewLayout:Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

    iget-object v4, p0, Lti/modules/titanium/media/TiCameraActivity;->preview:Landroid/view/SurfaceView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v3, p0, Lti/modules/titanium/media/TiCameraActivity;->localOverlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 229
    .local v1, "overlayView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 231
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_5

    .line 232
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 234
    :cond_5
    iget-object v3, p0, Lti/modules/titanium/media/TiCameraActivity;->cameraLayout:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 221
    .end local v1    # "overlayView":Landroid/view/View;
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "previewHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lti/modules/titanium/media/TiCameraActivity;->startPreview(Landroid/view/SurfaceHolder;)V

    .line 167
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "previewHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 172
    :try_start_0
    sget-object v1, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    invoke-virtual {p0}, Lti/modules/titanium/media/TiCameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lti/modules/titanium/media/TiCameraActivity;->currentRotation:I

    .line 180
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to setup preview surface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lti/modules/titanium/media/TiCameraActivity;->onError(ILjava/lang/String;)V

    .line 175
    const/4 v1, 0x0

    sput-object v1, Lti/modules/titanium/media/TiCameraActivity;->cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 176
    invoke-virtual {p0}, Lti/modules/titanium/media/TiCameraActivity;->finish()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "previewHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 186
    invoke-direct {p0}, Lti/modules/titanium/media/TiCameraActivity;->stopPreview()V

    .line 187
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 189
    const/4 v0, 0x0

    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    .line 191
    :cond_0
    return-void
.end method

.method protected switchCamera(I)V
    .locals 4
    .param p1, "whichCamera"    # I

    .prologue
    .line 651
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 652
    .local v0, "front":Z
    :goto_0
    const/high16 v1, -0x80000000

    .line 654
    .local v1, "frontId":I
    if-eqz v0, :cond_2

    .line 655
    invoke-static {}, Lti/modules/titanium/media/TiCameraActivity;->getFrontCameraId()I

    move-result v1

    .line 656
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    .line 657
    const-string v2, "TiCameraActivity"

    const-string v3, "switchCamera cancelled because this device has no front camera."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    :goto_1
    return-void

    .line 651
    .end local v0    # "front":Z
    .end local v1    # "frontId":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 663
    .restart local v0    # "front":Z
    .restart local v1    # "frontId":I
    :cond_2
    sput p1, Lti/modules/titanium/media/TiCameraActivity;->whichCamera:I

    .line 665
    if-eqz v0, :cond_3

    .line 666
    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiCameraActivity;->openCamera(I)V

    .line 671
    :goto_2
    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 681
    iget-object v2, p0, Lti/modules/titanium/media/TiCameraActivity;->previewLayout:Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

    new-instance v3, Lti/modules/titanium/media/TiCameraActivity$4;

    invoke-direct {v3, p0}, Lti/modules/titanium/media/TiCameraActivity$4;-><init>(Lti/modules/titanium/media/TiCameraActivity;)V

    invoke-virtual {v2, v3}, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->prepareNewPreview(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 668
    :cond_3
    invoke-direct {p0}, Lti/modules/titanium/media/TiCameraActivity;->openCamera()V

    goto :goto_2
.end method
