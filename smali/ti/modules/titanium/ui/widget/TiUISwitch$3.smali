.class Lti/modules/titanium/ui/widget/TiUISwitch$3;
.super Ljava/lang/Object;
.source "TiUISwitch.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUISwitch;->setStyle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUISwitch;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUISwitch;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUISwitch$3;->this$0:Lti/modules/titanium/ui/widget/TiUISwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUISwitch$3;->this$0:Lti/modules/titanium/ui/widget/TiUISwitch;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUISwitch;->access$200(Lti/modules/titanium/ui/widget/TiUISwitch;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->firePostLayoutEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 265
    return-void
.end method
