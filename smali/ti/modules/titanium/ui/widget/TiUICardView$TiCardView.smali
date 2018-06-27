.class public Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;
.super Landroid/support/v7/widget/CardView;
.source "TiUICardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUICardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TiCardView"
.end annotation


# instance fields
.field private layout:Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUICardView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUICardView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "arrangement"    # Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .prologue
    const/4 v2, -0x1

    .line 46
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->this$0:Lti/modules/titanium/ui/widget/TiUICardView;

    .line 47
    invoke-direct {p0, p2}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v1, Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;

    invoke-direct {v1, p1, p2, p3}, Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;-><init>(Lti/modules/titanium/ui/widget/TiUICardView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->layout:Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;

    .line 50
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->layout:Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;

    invoke-virtual {v1, v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->layout:Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;

    invoke-super {p0, v1, v0}, Landroid/support/v7/widget/CardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    return-void
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;)Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;

    .prologue
    .line 41
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->layout:Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 64
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->layout:Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void
.end method

.method public getLayout()Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->layout:Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 69
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/CardView;->onLayout(ZIIII)V

    .line 70
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->this$0:Lti/modules/titanium/ui/widget/TiUICardView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUICardView;->access$100(Lti/modules/titanium/ui/widget/TiUICardView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->this$0:Lti/modules/titanium/ui/widget/TiUICardView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUICardView;->access$200(Lti/modules/titanium/ui/widget/TiUICardView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    const-string v1, "postlayout"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->this$0:Lti/modules/titanium/ui/widget/TiUICardView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUICardView;->access$300(Lti/modules/titanium/ui/widget/TiUICardView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    const-string v1, "postlayout"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 73
    :cond_0
    return-void
.end method
