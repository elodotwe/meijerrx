.class public Lcom/tripvi/drawerlayout/Drawer$ContentView;
.super Landroid/support/v4/app/Fragment;
.source "Drawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tripvi/drawerlayout/Drawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentView"
.end annotation


# instance fields
.field private view:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 456
    return-void
.end method

.method public static newInstance()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 459
    new-instance v0, Lcom/tripvi/drawerlayout/Drawer$ContentView;

    invoke-direct {v0}, Lcom/tripvi/drawerlayout/Drawer$ContentView;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getContentView()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer$ContentView;->view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer$ContentView;->view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-nez v0, :cond_0

    .line 475
    const/4 v0, 0x0

    .line 477
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer$ContentView;->view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public setContentView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "view"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/tripvi/drawerlayout/Drawer$ContentView;->view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 464
    return-void
.end method
