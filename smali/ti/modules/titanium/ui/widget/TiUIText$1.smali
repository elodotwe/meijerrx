.class Lti/modules/titanium/ui/widget/TiUIText$1;
.super Ljava/lang/Object;
.source "TiUIText.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIText;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIText;

.field final synthetic val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIText;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIText$1;->this$0:Lti/modules/titanium/ui/widget/TiUIText;

    iput-object p2, p0, Lti/modules/titanium/ui/widget/TiUIText$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

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
    .line 112
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->firePostLayoutEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 113
    return-void
.end method
