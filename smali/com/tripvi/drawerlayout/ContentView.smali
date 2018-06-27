.class public Lcom/tripvi/drawerlayout/ContentView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "ContentView.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 12
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    .line 14
    .local v0, "view":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    invoke-virtual {p0, v0}, Lcom/tripvi/drawerlayout/ContentView;->setNativeView(Landroid/view/View;)V

    .line 15
    return-void
.end method
