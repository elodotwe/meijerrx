.class public abstract Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIAbstractTab.java"


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/TabProxy;)V
    .locals 0
    .param p1, "proxy"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 24
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/TabProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 25
    return-void
.end method

.method private getWindowProxy()Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    .local v0, "windowProxy":Ljava/lang/Object;
    instance-of v1, v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v1, :cond_0

    .line 63
    check-cast v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 66
    .end local v0    # "windowProxy":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "windowProxy":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 4

    .prologue
    .line 40
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->getWindowProxy()Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    move-result-object v2

    .line 41
    .local v2, "windowProxy":Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    if-nez v2, :cond_0

    .line 43
    new-instance v0, Landroid/view/View;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "emptyContent":Landroid/view/View;
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    .end local v0    # "emptyContent":Landroid/view/View;
    :goto_0
    return-object v0

    .line 51
    :cond_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v3, Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v3}, Lti/modules/titanium/ui/TabProxy;->getTabGroup()Lti/modules/titanium/ui/TabGroupProxy;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/TabGroupProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 52
    .local v1, "tabGroupActivity":Landroid/app/Activity;
    invoke-virtual {v2, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setActivity(Landroid/app/Activity;)V

    .line 55
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 57
    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onSelectionChange(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 32
    return-void
.end method
