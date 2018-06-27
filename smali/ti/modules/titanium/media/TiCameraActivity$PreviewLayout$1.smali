.class Lti/modules/titanium/media/TiCameraActivity$PreviewLayout$1;
.super Ljava/lang/Object;
.source "TiCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->prepareNewPreview(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout$1;->this$0:Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout$1;->this$0:Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->requestLayout()V

    .line 95
    iget-object v0, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout$1;->this$0:Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->invalidate()V

    .line 96
    return-void
.end method
