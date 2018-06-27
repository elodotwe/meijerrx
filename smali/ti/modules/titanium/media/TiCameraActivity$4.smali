.class Lti/modules/titanium/media/TiCameraActivity$4;
.super Ljava/lang/Object;
.source "TiCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/TiCameraActivity;->switchCamera(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/TiCameraActivity;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/TiCameraActivity;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lti/modules/titanium/media/TiCameraActivity$4;->this$0:Lti/modules/titanium/media/TiCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lti/modules/titanium/media/TiCameraActivity$4;->this$0:Lti/modules/titanium/media/TiCameraActivity;

    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity$4;->this$0:Lti/modules/titanium/media/TiCameraActivity;

    invoke-static {v1}, Lti/modules/titanium/media/TiCameraActivity;->access$400(Lti/modules/titanium/media/TiCameraActivity;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-static {v0, v1}, Lti/modules/titanium/media/TiCameraActivity;->access$500(Lti/modules/titanium/media/TiCameraActivity;Landroid/view/SurfaceHolder;)V

    .line 687
    return-void
.end method
