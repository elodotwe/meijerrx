.class public Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;
.super Landroid/support/v4/app/Fragment;
.source "TiUIActionBarTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabFragment"
.end annotation


# instance fields
.field private tab:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public getTab()Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;->tab:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;->tab:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;->tab:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->getContentView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public setTab(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;)V
    .locals 0
    .param p1, "tab"    # Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    .prologue
    .line 34
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;->tab:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    .line 35
    return-void
.end method
