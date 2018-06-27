.class final Lti/modules/titanium/media/TiCameraActivity$1;
.super Ljava/lang/Object;
.source "TiCameraActivity.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/TiCameraActivity;->takePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 503
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    const/4 v1, 0x0

    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {p2, v0, v1, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 504
    if-nez p1, :cond_0

    .line 505
    const-string v0, "TiCameraActivity"

    const-string v1, "Unable to focus."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 508
    return-void
.end method
