.class Lti/modules/titanium/ui/widget/TiUIScrollableView$3;
.super Ljava/lang/Object;
.source "TiUIScrollableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIScrollableView;->buildPagingControl(Landroid/content/Context;)Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$3;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$3;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$000(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$3;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->movePrevious()V

    .line 240
    :cond_0
    return-void
.end method
