.class public Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
.super Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;
.source "TiUIActionBarTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUIActionBarTab"


# instance fields
.field tab:Landroid/support/v7/app/ActionBar$Tab;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/TabProxy;Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 4
    .param p1, "proxy"    # Lti/modules/titanium/ui/TabProxy;
    .param p2, "tab"    # Landroid/support/v7/app/ActionBar$Tab;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;-><init>(Lti/modules/titanium/ui/TabProxy;)V

    .line 54
    iput-object p2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->tab:Landroid/support/v7/app/ActionBar$Tab;

    .line 56
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/TabProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 60
    invoke-virtual {p2, p0}, Landroid/support/v7/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;

    .line 62
    const-string v3, "title"

    invoke-virtual {p1, v3}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 63
    .local v1, "title":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    .line 66
    :cond_0
    const-string v3, "icon"

    invoke-virtual {p1, v3}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 67
    .local v2, "url":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 68
    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2, v0}, Landroid/support/v7/app/ActionBar$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/ActionBar$Tab;

    .line 72
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method


# virtual methods
.method public createFragment()Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;

    invoke-direct {v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;-><init>()V

    .line 96
    .local v0, "fragment":Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;
    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;->setTab(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;)V

    .line 97
    return-object v0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 76
    const-string v1, "title"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->tab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    .line 79
    :cond_0
    const-string v1, "icon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_1

    .line 82
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->tab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/ActionBar$Tab;

    .line 86
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method

.method public setTabOnFragment(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;)V
    .locals 0
    .param p1, "fragment"    # Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;

    .prologue
    .line 101
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;->setTab(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;)V

    .line 102
    return-void
.end method
