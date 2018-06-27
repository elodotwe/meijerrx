.class Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$2;
.super Ljava/lang/Object;
.source "TiUIActionBarTabGroup.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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
.method constructor <init>(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$2;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 162
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 159
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$2;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->access$300(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$2;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->access$300(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 156
    :cond_0
    return-void
.end method
