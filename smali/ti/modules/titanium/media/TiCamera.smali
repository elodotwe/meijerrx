.class public Lti/modules/titanium/media/TiCamera;
.super Ljava/lang/Object;
.source "TiCamera.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiCamera"

.field private static camera:Landroid/hardware/Camera;


# instance fields
.field jpegCallback:Landroid/hardware/Camera$PictureCallback;

.field rawCallback:Landroid/hardware/Camera$PictureCallback;

.field shutterCallback:Landroid/hardware/Camera$ShutterCallback;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lti/modules/titanium/media/TiCamera$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiCamera$1;-><init>(Lti/modules/titanium/media/TiCamera;)V

    iput-object v0, p0, Lti/modules/titanium/media/TiCamera;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 49
    new-instance v0, Lti/modules/titanium/media/TiCamera$2;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiCamera$2;-><init>(Lti/modules/titanium/media/TiCamera;)V

    iput-object v0, p0, Lti/modules/titanium/media/TiCamera;->rawCallback:Landroid/hardware/Camera$PictureCallback;

    .line 57
    new-instance v0, Lti/modules/titanium/media/TiCamera$3;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiCamera$3;-><init>(Lti/modules/titanium/media/TiCamera;)V

    iput-object v0, p0, Lti/modules/titanium/media/TiCamera;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 28
    sget-object v0, Lti/modules/titanium/media/TiCamera;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 29
    const-string v0, "TiCamera"

    const-string v1, "Camera created."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    sput-object v0, Lti/modules/titanium/media/TiCamera;->camera:Landroid/hardware/Camera;

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lti/modules/titanium/media/TiCamera;->camera:Landroid/hardware/Camera;

    return-object v0
.end method
