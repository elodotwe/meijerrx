.class Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$1;
.super Landroid/support/v4/view/ViewPager;
.source "TiUIActionBarTabGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;-><init>(Lti/modules/titanium/ui/TabGroupProxy;Lorg/appcelerator/titanium/TiBaseActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 123
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$1;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-direct {p0, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 131
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$1;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->access$000(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 139
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$1;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->access$102(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;Z)Z

    .line 140
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$1;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->access$200(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)V

    .line 141
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 126
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$1;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->access$000(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
