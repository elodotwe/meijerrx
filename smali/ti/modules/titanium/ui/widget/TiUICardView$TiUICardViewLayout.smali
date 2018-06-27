.class public Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;
.super Lorg/appcelerator/titanium/view/TiCompositeLayout;
.source "TiUICardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUICardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TiUICardViewLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUICardView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUICardView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "arrangement"    # Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .prologue
    .line 35
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;->this$0:Lti/modules/titanium/ui/widget/TiUICardView;

    .line 36
    invoke-static {p1}, Lti/modules/titanium/ui/widget/TiUICardView;->access$000(Lti/modules/titanium/ui/widget/TiUICardView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 37
    return-void
.end method
