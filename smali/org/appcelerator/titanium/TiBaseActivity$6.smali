.class Lorg/appcelerator/titanium/TiBaseActivity$6;
.super Landroid/view/OrientationEventListener;
.source "TiBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/TiBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/TiBaseActivity;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/content/Context;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 674
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity$6;->this$0:Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 677
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity$6;->this$0:Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 678
    .local v0, "rotation":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    sget v1, Lorg/appcelerator/titanium/TiBaseActivity;->previousOrientation:I

    if-eq v0, v1, :cond_2

    .line 680
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/TiBaseActivity;->callOrientationChangedListener(Landroid/app/Activity;)V

    .line 685
    :cond_1
    :goto_0
    return-void

    .line 681
    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_3
    sget v1, Lorg/appcelerator/titanium/TiBaseActivity;->previousOrientation:I

    if-eq v0, v1, :cond_1

    .line 683
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/TiBaseActivity;->callOrientationChangedListener(Landroid/app/Activity;)V

    goto :goto_0
.end method
