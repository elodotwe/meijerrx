.class public Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;
.super Lorg/appcelerator/titanium/view/TiCompositeLayout;
.source "TiUIScrollableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIScrollableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TiViewPagerLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 563
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .line 564
    invoke-static {p1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$900(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 565
    const/4 v0, 0x1

    .line 568
    .local v0, "focusable":Z
    invoke-static {p1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$1000(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->isListViewParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    const/4 v0, 0x0

    .line 571
    :cond_0
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->setFocusable(Z)V

    .line 572
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->setFocusableInTouchMode(Z)V

    .line 573
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->setDescendantFocusability(I)V

    .line 574
    return-void
.end method

.method private isListViewParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Z
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 577
    instance-of v1, p1, Lti/modules/titanium/ui/widget/listview/ListItemProxy;

    if-eqz v1, :cond_0

    .line 578
    const/4 v1, 0x1

    .line 584
    :goto_0
    return v1

    .line 580
    :cond_0
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    .line 581
    .local v0, "parent":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-nez v0, :cond_1

    .line 582
    const/4 v1, 0x0

    goto :goto_0

    .line 584
    :cond_1
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->isListViewParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 603
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 616
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 605
    :pswitch_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->movePrevious()V

    .line 606
    const/4 v0, 0x1

    .line 607
    goto :goto_0

    .line 610
    :pswitch_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->moveNext()V

    .line 611
    const/4 v0, 0x1

    goto :goto_0

    .line 616
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 603
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 592
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$500(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$1100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->showPager()V

    .line 595
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
