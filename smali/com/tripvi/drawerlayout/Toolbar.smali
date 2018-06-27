.class public Lcom/tripvi/drawerlayout/Toolbar;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "Toolbar.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 10
    new-instance v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 11
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/tripvi/drawerlayout/Toolbar;->setNativeView(Landroid/view/View;)V

    .line 12
    return-void
.end method
