.class public Lcom/tripvi/drawerlayout/Drawer;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "Drawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tripvi/drawerlayout/Drawer$DrawerListener;
    }
.end annotation


# static fields
.field public static final PROPERTY_CENTER_VIEW:Ljava/lang/String; = "centerView"

.field public static final PROPERTY_DRAWER_INDICATOR_ENABLED:Ljava/lang/String; = "drawerIndicatorEnabled"

.field public static final PROPERTY_DRAWER_INDICATOR_IMAGE:Ljava/lang/String; = "drawerIndicatorImage"

.field public static final PROPERTY_DRAWER_LOCK_MODE:Ljava/lang/String; = "drawerLockMode"

.field public static final PROPERTY_HIDE_TOOLBAR:Ljava/lang/String; = "hideToolbar"

.field public static final PROPERTY_LEFT_VIEW:Ljava/lang/String; = "leftView"

.field public static final PROPERTY_LEFT_VIEW_WIDTH:Ljava/lang/String; = "leftDrawerWidth"

.field public static final PROPERTY_RIGHT_VIEW:Ljava/lang/String; = "rightView"

.field public static final PROPERTY_RIGHT_VIEW_WIDTH:Ljava/lang/String; = "rightDrawerWidth"

.field private static final TAG:Ljava/lang/String; = "TripviDrawer"

.field public static id_content_frame:I

.field public static id_main_container:I

.field public static id_toolbar:I


# instance fields
.field private centerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field drawable_ic_drawer:I

.field private filter:Landroid/widget/FrameLayout;

.field private filterWidth:I

.field private hasFilter:Z

.field private hasMenu:Z

.field private hasToggle:Z

.field private hideToolbar:Z

.field private layout:Landroid/support/v4/widget/DrawerLayout;

.field layout_drawer_main:I

.field private leftView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field private mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private menu:Landroid/widget/FrameLayout;

.field private menuWidth:I

.field private rightView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field string_drawer_close:I

.field string_drawer_open:I

.field private toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput v0, Lcom/tripvi/drawerlayout/Drawer;->id_content_frame:I

    .line 60
    sput v0, Lcom/tripvi/drawerlayout/Drawer;->id_main_container:I

    .line 61
    sput v0, Lcom/tripvi/drawerlayout/Drawer;->id_toolbar:I

    return-void
.end method

.method public constructor <init>(Lcom/tripvi/drawerlayout/DrawerProxy;)V
    .locals 8
    .param p1, "proxy"    # Lcom/tripvi/drawerlayout/DrawerProxy;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 32
    iput-boolean v5, p0, Lcom/tripvi/drawerlayout/Drawer;->hasMenu:Z

    .line 33
    iput-boolean v5, p0, Lcom/tripvi/drawerlayout/Drawer;->hasFilter:Z

    .line 34
    iput-boolean v6, p0, Lcom/tripvi/drawerlayout/Drawer;->hasToggle:Z

    .line 35
    iput-boolean v5, p0, Lcom/tripvi/drawerlayout/Drawer;->hideToolbar:Z

    .line 55
    iput v5, p0, Lcom/tripvi/drawerlayout/Drawer;->drawable_ic_drawer:I

    .line 56
    iput v5, p0, Lcom/tripvi/drawerlayout/Drawer;->string_drawer_open:I

    .line 57
    iput v5, p0, Lcom/tripvi/drawerlayout/Drawer;->string_drawer_close:I

    .line 58
    iput v5, p0, Lcom/tripvi/drawerlayout/Drawer;->layout_drawer_main:I

    .line 67
    :try_start_0
    const-string v3, "drawable.ic_drawer"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tripvi/drawerlayout/Drawer;->drawable_ic_drawer:I

    .line 68
    const-string v3, "string.drawer_open"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tripvi/drawerlayout/Drawer;->string_drawer_open:I

    .line 69
    const-string v3, "string.drawer_close"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tripvi/drawerlayout/Drawer;->string_drawer_close:I

    .line 70
    const-string v3, "layout.drawer_main"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tripvi/drawerlayout/Drawer;->layout_drawer_main:I

    .line 71
    const-string v3, "id.content_frame"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/tripvi/drawerlayout/Drawer;->id_content_frame:I

    .line 72
    const-string v3, "id.main_container"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/tripvi/drawerlayout/Drawer;->id_main_container:I

    .line 73
    const-string v3, "id.toolbar"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/tripvi/drawerlayout/Drawer;->id_toolbar:I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    invoke-virtual {p1}, Lcom/tripvi/drawerlayout/DrawerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    .line 81
    .local v0, "activity":Landroid/support/v7/app/AppCompatActivity;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 82
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/tripvi/drawerlayout/Drawer;->layout_drawer_main:I

    invoke-virtual {v2, v3, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout;

    iput-object v3, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    .line 96
    iget-object v3, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v4, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;

    invoke-direct {v4, p0, v7}, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;-><init>(Lcom/tripvi/drawerlayout/Drawer;Lcom/tripvi/drawerlayout/Drawer$1;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 98
    iget-object v3, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    sget v4, Lcom/tripvi/drawerlayout/Drawer;->id_toolbar:I

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    iput-object v3, p0, Lcom/tripvi/drawerlayout/Drawer;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 100
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-nez v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/tripvi/drawerlayout/Drawer;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 102
    iget-boolean v3, p0, Lcom/tripvi/drawerlayout/Drawer;->hideToolbar:Z

    if-nez v3, :cond_0

    .line 103
    invoke-direct {p0, v6}, Lcom/tripvi/drawerlayout/Drawer;->setToolbarVisible(Z)V

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p0, v3}, Lcom/tripvi/drawerlayout/Drawer;->setNativeView(Landroid/view/View;)V

    .line 110
    return-void

    .line 74
    .end local v0    # "activity":Landroid/support/v7/app/AppCompatActivity;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    const-string v3, "TripviDrawer"

    const-string v4, "XML resources could not be found!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tripvi/drawerlayout/Drawer;)Landroid/support/v7/app/ActionBarDrawerToggle;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->menu:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->filter:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/Drawer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method private getNativeView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Landroid/view/View;
    .locals 3
    .param p1, "viewProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 592
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    .line 593
    .local v0, "nativeView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 594
    .local v1, "parentViewGroup":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 595
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 597
    :cond_0
    return-object v0
.end method

.method private initDrawerToggle()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 228
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/AppCompatActivity;

    .line 230
    .local v2, "activity":Landroid/support/v7/app/AppCompatActivity;
    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 237
    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 241
    new-instance v0, Lcom/tripvi/drawerlayout/Drawer$1;

    iget-object v3, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    iget v4, p0, Lcom/tripvi/drawerlayout/Drawer;->string_drawer_open:I

    iget v5, p0, Lcom/tripvi/drawerlayout/Drawer;->string_drawer_close:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tripvi/drawerlayout/Drawer$1;-><init>(Lcom/tripvi/drawerlayout/Drawer;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    iput-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 312
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 315
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/tripvi/drawerlayout/Drawer$2;

    invoke-direct {v1, p0}, Lcom/tripvi/drawerlayout/Drawer$2;-><init>(Lcom/tripvi/drawerlayout/Drawer;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private initLeftDrawer()V
    .locals 3

    .prologue
    .line 327
    iget-boolean v1, p0, Lcom/tripvi/drawerlayout/Drawer;->hasMenu:Z

    if-eqz v1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    const-string v1, "TripviDrawer"

    const-string v2, "initializing left drawer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tripvi/drawerlayout/Drawer;->menu:Landroid/widget/FrameLayout;

    .line 335
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 337
    .local v0, "menuLayout":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    const v1, 0x800003

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 338
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer;->menu:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/tripvi/drawerlayout/Drawer;->menu:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->addView(Landroid/view/View;)V

    .line 342
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tripvi/drawerlayout/Drawer;->hasMenu:Z

    .line 344
    iget-boolean v1, p0, Lcom/tripvi/drawerlayout/Drawer;->hasToggle:Z

    if-eqz v1, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/Drawer;->initDrawerToggle()V

    goto :goto_0
.end method

.method private initRightDrawer()V
    .locals 3

    .prologue
    .line 350
    iget-boolean v1, p0, Lcom/tripvi/drawerlayout/Drawer;->hasFilter:Z

    if-eqz v1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 354
    :cond_0
    const-string v1, "TripviDrawer"

    const-string v2, "initializing right drawer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tripvi/drawerlayout/Drawer;->filter:Landroid/widget/FrameLayout;

    .line 358
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 360
    .local v0, "filterLayout":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    const v1, 0x800005

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 361
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer;->filter:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/tripvi/drawerlayout/Drawer;->filter:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->addView(Landroid/view/View;)V

    .line 365
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tripvi/drawerlayout/Drawer;->hasFilter:Z

    goto :goto_0
.end method

.method private setToolbarVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public closeLeftDrawer()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 192
    return-void
.end method

.method public closeRightDrawer()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 208
    return-void
.end method

.method public getDevicePixels(Ljava/lang/Object;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 587
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v0

    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public isLeftDrawerOpen()Z
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    return v0
.end method

.method public isLeftDrawerVisible()Z
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    return v0
.end method

.method public isRightDrawerOpen()Z
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    return v0
.end method

.method public isRightDrawerVisible()Z
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    return v0
.end method

.method public openLeftDrawer()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 188
    return-void
.end method

.method public openRightDrawer()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 204
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 7
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v6, 0x0

    .line 405
    const-string v3, "drawerIndicatorEnabled"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    const-string v3, "drawerIndicatorEnabled"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/tripvi/drawerlayout/Drawer;->hasToggle:Z

    .line 410
    :cond_0
    const-string v3, "leftView"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 411
    const-string v3, "leftView"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 412
    .local v1, "leftView":Ljava/lang/Object;
    if-eqz v1, :cond_3

    instance-of v3, v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v3, :cond_3

    .line 413
    instance-of v3, v1, Lti/modules/titanium/ui/WindowProxy;

    if-eqz v3, :cond_1

    .line 414
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "[ERROR] Cannot add window as a child view of other window"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 417
    :cond_1
    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v1    # "leftView":Ljava/lang/Object;
    iput-object v1, p0, Lcom/tripvi/drawerlayout/Drawer;->leftView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 418
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/Drawer;->initLeftDrawer()V

    .line 419
    iget-object v3, p0, Lcom/tripvi/drawerlayout/Drawer;->menu:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/tripvi/drawerlayout/Drawer;->leftView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v4}, Lcom/tripvi/drawerlayout/Drawer;->getNativeView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 424
    :cond_2
    :goto_0
    const-string v3, "rightView"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 425
    const-string v3, "rightView"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 426
    .local v2, "rightView":Ljava/lang/Object;
    if-eqz v2, :cond_6

    instance-of v3, v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v3, :cond_6

    .line 427
    instance-of v3, v2, Lti/modules/titanium/ui/WindowProxy;

    if-eqz v3, :cond_4

    .line 428
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "[ERROR] Cannot add window as a child view of other window"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 421
    .end local v2    # "rightView":Ljava/lang/Object;
    .restart local v1    # "leftView":Ljava/lang/Object;
    :cond_3
    const-string v3, "TripviDrawer"

    const-string v4, "[ERROR] Invalid type for leftView"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 430
    .end local v1    # "leftView":Ljava/lang/Object;
    .restart local v2    # "rightView":Ljava/lang/Object;
    :cond_4
    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v2    # "rightView":Ljava/lang/Object;
    iput-object v2, p0, Lcom/tripvi/drawerlayout/Drawer;->rightView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 431
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/Drawer;->initRightDrawer()V

    .line 432
    iget-object v3, p0, Lcom/tripvi/drawerlayout/Drawer;->filter:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/tripvi/drawerlayout/Drawer;->rightView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v4}, Lcom/tripvi/drawerlayout/Drawer;->getNativeView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 437
    :cond_5
    :goto_1
    const-string v3, "centerView"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 438
    const-string v3, "centerView"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 439
    .local v0, "centerView":Ljava/lang/Object;
    if-eqz v0, :cond_d

    instance-of v3, v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v3, :cond_d

    .line 440
    instance-of v3, v0, Lti/modules/titanium/ui/WindowProxy;

    if-eqz v3, :cond_7

    .line 441
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "[ERROR] Cannot use window as a child view of other window"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 434
    .end local v0    # "centerView":Ljava/lang/Object;
    .restart local v2    # "rightView":Ljava/lang/Object;
    :cond_6
    const-string v3, "TripviDrawer"

    const-string v4, "[ERROR] Invalid type for rightView"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 443
    .end local v2    # "rightView":Ljava/lang/Object;
    .restart local v0    # "centerView":Ljava/lang/Object;
    :cond_7
    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v0    # "centerView":Ljava/lang/Object;
    invoke-virtual {p0, v0, v6}, Lcom/tripvi/drawerlayout/Drawer;->replaceCenterView(Lorg/appcelerator/titanium/proxy/TiViewProxy;Z)V

    .line 448
    :cond_8
    :goto_2
    const-string v3, "leftDrawerWidth"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 449
    const-string v3, "leftDrawerWidth"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tripvi/drawerlayout/Drawer;->getDevicePixels(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/tripvi/drawerlayout/Drawer;->menuWidth:I

    .line 451
    const-string v3, "TripviDrawer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set menuWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "leftDrawerWidth"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in pixel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tripvi/drawerlayout/Drawer;->menuWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v3, p0, Lcom/tripvi/drawerlayout/Drawer;->menu:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/tripvi/drawerlayout/Drawer;->menuWidth:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 456
    :cond_9
    const-string v3, "rightDrawerWidth"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 457
    const-string v3, "rightDrawerWidth"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tripvi/drawerlayout/Drawer;->getDevicePixels(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/tripvi/drawerlayout/Drawer;->filterWidth:I

    .line 459
    const-string v3, "TripviDrawer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set filterWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "rightDrawerWidth"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in pixel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tripvi/drawerlayout/Drawer;->filterWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v3, p0, Lcom/tripvi/drawerlayout/Drawer;->filter:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/tripvi/drawerlayout/Drawer;->filterWidth:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 464
    :cond_a
    const-string v3, "drawerLockMode"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 465
    iget-object v3, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    const-string v4, "drawerLockMode"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 468
    :cond_b
    const-string v3, "hideToolbar"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 469
    const-string v3, "hideToolbar"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/tripvi/drawerlayout/Drawer;->hideToolbar:Z

    .line 470
    iget-boolean v3, p0, Lcom/tripvi/drawerlayout/Drawer;->hideToolbar:Z

    if-eqz v3, :cond_e

    .line 471
    invoke-direct {p0, v6}, Lcom/tripvi/drawerlayout/Drawer;->setToolbarVisible(Z)V

    .line 477
    :cond_c
    :goto_3
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 478
    return-void

    .line 445
    .restart local v0    # "centerView":Ljava/lang/Object;
    :cond_d
    const-string v3, "TripviDrawer"

    const-string v4, "[ERROR] Invalid type for centerView"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 473
    .end local v0    # "centerView":Ljava/lang/Object;
    :cond_e
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/tripvi/drawerlayout/Drawer;->setToolbarVisible(Z)V

    goto :goto_3
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 484
    const-string v5, "TripviDrawer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "propertyChanged  Property: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " old: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " new: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v5, "leftView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 488
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->leftView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-ne p3, v5, :cond_1

    .line 581
    .end local p3    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 490
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    .line 491
    .local v4, "newProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    const/4 v2, 0x0

    .line 492
    .local v2, "index":I
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->leftView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v5, :cond_2

    .line 493
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->menu:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/tripvi/drawerlayout/Drawer;->leftView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 496
    :cond_2
    if-eqz p3, :cond_5

    instance-of v5, p3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v5, :cond_5

    .line 497
    instance-of v5, p3, Lti/modules/titanium/ui/WindowProxy;

    if-eqz v5, :cond_3

    .line 498
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "[ERROR] Cannot add window as a child view of other window"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    move-object v4, p3

    .line 500
    check-cast v4, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 501
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/Drawer;->initLeftDrawer()V

    .line 502
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->menu:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 507
    :goto_1
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->leftView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v5, :cond_4

    .line 508
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->menu:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/tripvi/drawerlayout/Drawer;->leftView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 511
    :cond_4
    iput-object v4, p0, Lcom/tripvi/drawerlayout/Drawer;->leftView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    goto :goto_0

    .line 505
    :cond_5
    const-string v5, "TripviDrawer"

    const-string v6, "[ERROR] Invalid type for leftView"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 512
    .end local v2    # "index":I
    .end local v4    # "newProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_6
    const-string v5, "rightView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 513
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->rightView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eq p3, v5, :cond_0

    .line 515
    const/4 v4, 0x0

    .line 516
    .restart local v4    # "newProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    const/4 v2, 0x0

    .line 517
    .restart local v2    # "index":I
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->rightView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v5, :cond_7

    .line 518
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->filter:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/tripvi/drawerlayout/Drawer;->rightView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 521
    :cond_7
    if-eqz p3, :cond_a

    instance-of v5, p3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v5, :cond_a

    .line 522
    instance-of v5, p3, Lti/modules/titanium/ui/WindowProxy;

    if-eqz v5, :cond_8

    .line 523
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "[ERROR] Cannot add window as a child view of other window"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    move-object v4, p3

    .line 525
    check-cast v4, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 526
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/Drawer;->initRightDrawer()V

    .line 527
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->filter:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 532
    :goto_2
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->rightView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v5, :cond_9

    .line 533
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->filter:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/tripvi/drawerlayout/Drawer;->rightView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 536
    :cond_9
    iput-object v4, p0, Lcom/tripvi/drawerlayout/Drawer;->rightView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    goto/16 :goto_0

    .line 530
    :cond_a
    const-string v5, "TripviDrawer"

    const-string v6, "[ERROR] Invalid type for rightView"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 537
    .end local v2    # "index":I
    .end local v4    # "newProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_b
    const-string v5, "centerView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object v4, p3

    .line 538
    check-cast v4, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 539
    .restart local v4    # "newProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {p0, v4, v9}, Lcom/tripvi/drawerlayout/Drawer;->replaceCenterView(Lorg/appcelerator/titanium/proxy/TiViewProxy;Z)V

    goto/16 :goto_0

    .line 540
    .end local v4    # "newProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_c
    const-string v5, "leftDrawerWidth"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 541
    invoke-virtual {p0, p3}, Lcom/tripvi/drawerlayout/Drawer;->getDevicePixels(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/tripvi/drawerlayout/Drawer;->menuWidth:I

    .line 543
    const-string v5, "TripviDrawer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change menuWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in pixel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/tripvi/drawerlayout/Drawer;->menuWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/Drawer;->initLeftDrawer()V

    .line 548
    new-instance v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v5, p0, Lcom/tripvi/drawerlayout/Drawer;->menuWidth:I

    invoke-direct {v3, v5, v8}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 550
    .local v3, "menuLayout":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    const v5, 0x800003

    iput v5, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 551
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->menu:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 552
    .end local v3    # "menuLayout":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_d
    const-string v5, "rightDrawerWidth"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 553
    invoke-virtual {p0, p3}, Lcom/tripvi/drawerlayout/Drawer;->getDevicePixels(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/tripvi/drawerlayout/Drawer;->filterWidth:I

    .line 555
    const-string v5, "TripviDrawer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change filterWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in pixel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/tripvi/drawerlayout/Drawer;->filterWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/Drawer;->initRightDrawer()V

    .line 560
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v5, p0, Lcom/tripvi/drawerlayout/Drawer;->filterWidth:I

    invoke-direct {v1, v5, v8}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 562
    .local v1, "filterLayout":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    const v5, 0x800005

    iput v5, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 563
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->filter:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 564
    .end local v1    # "filterLayout":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_e
    const-string v5, "drawerLockMode"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 565
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto/16 :goto_0

    .line 566
    :cond_f
    const-string v5, "drawerIndicatorEnabled"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 567
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 568
    .local v0, "b":Z
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz v5, :cond_0

    .line 569
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v5, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    goto/16 :goto_0

    .line 571
    .end local v0    # "b":Z
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_10
    const-string v5, "hideToolbar"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 572
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/tripvi/drawerlayout/Drawer;->hideToolbar:Z

    .line 573
    iget-boolean v5, p0, Lcom/tripvi/drawerlayout/Drawer;->hideToolbar:Z

    if-eqz v5, :cond_11

    .line 574
    invoke-direct {p0, v9}, Lcom/tripvi/drawerlayout/Drawer;->setToolbarVisible(Z)V

    goto/16 :goto_0

    .line 576
    :cond_11
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/tripvi/drawerlayout/Drawer;->setToolbarVisible(Z)V

    goto/16 :goto_0

    .line 579
    :cond_12
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method public replaceCenterView(Lorg/appcelerator/titanium/proxy/TiViewProxy;Z)V
    .locals 6
    .param p1, "viewProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "backstack"    # Z

    .prologue
    .line 372
    iget-object v4, p0, Lcom/tripvi/drawerlayout/Drawer;->centerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-ne p1, v4, :cond_1

    .line 373
    const-string v4, "TripviDrawer"

    const-string v5, "centerView was not changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    if-eqz p1, :cond_0

    .line 380
    iget-object v4, p0, Lcom/tripvi/drawerlayout/Drawer;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 381
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 383
    .local v0, "contentView":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v2

    .line 384
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    sget v5, Lcom/tripvi/drawerlayout/Drawer;->id_content_frame:I

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 385
    .local v1, "fL":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 386
    .local v3, "viewParent":Landroid/view/ViewParent;
    if-nez v3, :cond_2

    .line 387
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    :cond_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    if-eq v3, v1, :cond_3

    .line 390
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "viewParent":Landroid/view/ViewParent;
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 391
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    :cond_3
    iget-object v4, p0, Lcom/tripvi/drawerlayout/Drawer;->centerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v4, :cond_4

    .line 394
    iget-object v4, p0, Lcom/tripvi/drawerlayout/Drawer;->centerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeView(Landroid/view/View;)V

    .line 396
    :cond_4
    iput-object p1, p0, Lcom/tripvi/drawerlayout/Drawer;->centerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    goto :goto_0
.end method

.method public setArrowState(Ljava/lang/Float;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/Float;

    .prologue
    .line 401
    return-void
.end method

.method public toggleLeftDrawer()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/Drawer;->closeLeftDrawer()V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/Drawer;->openLeftDrawer()V

    goto :goto_0
.end method

.method public toggleRightDrawer()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer;->layout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/Drawer;->closeRightDrawer()V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/Drawer;->openRightDrawer()V

    goto :goto_0
.end method
