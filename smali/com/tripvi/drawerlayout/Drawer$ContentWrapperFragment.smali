.class public Lcom/tripvi/drawerlayout/Drawer$ContentWrapperFragment;
.super Landroid/support/v4/app/Fragment;
.source "Drawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tripvi/drawerlayout/Drawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentWrapperFragment"
.end annotation


# instance fields
.field mContentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "cv"    # Landroid/view/View;

    .prologue
    .line 272
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/tripvi/drawerlayout/Drawer$ContentWrapperFragment;->mContentView:Landroid/view/View;

    .line 274
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x1

    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, "layout_content_fragment":I
    const/4 v1, 0x0

    .line 281
    .local v1, "id_content_frame":I
    :try_start_0
    const-string v5, "layout.content_fragment"

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    .line 282
    const-string v5, "id.content_frame"

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 288
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 289
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 290
    .local v3, "v":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/tripvi/drawerlayout/Drawer$ContentWrapperFragment;->mContentView:Landroid/view/View;

    new-instance v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    return-object v4

    .line 284
    .end local v3    # "v":Landroid/widget/FrameLayout;
    .end local v4    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    const-string v5, "TripviDrawer"

    const-string v6, "XML resources could not be found!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
