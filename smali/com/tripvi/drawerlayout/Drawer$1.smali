.class Lcom/tripvi/drawerlayout/Drawer$1;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "Drawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tripvi/drawerlayout/Drawer;->initDrawerToggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tripvi/drawerlayout/Drawer;


# direct methods
.method constructor <init>(Lcom/tripvi/drawerlayout/Drawer;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;
    .param p3, "x1"    # Landroid/support/v4/widget/DrawerLayout;
    .param p4, "x2"    # I
    .param p5, "x3"    # I

    .prologue
    .line 242
    iput-object p1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 245
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$200(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 249
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$1100(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "drawerclose"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 251
    .local v0, "options":Lorg/appcelerator/kroll/KrollDict;
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$200(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 252
    const-string v1, "drawer"

    const-string v2, "left"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$1200(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "drawerclose"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$300(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    const-string v1, "drawer"

    const-string v2, "right"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$200(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 266
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$1300(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "draweropen"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 268
    .local v0, "options":Lorg/appcelerator/kroll/KrollDict;
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$200(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    const-string v1, "drawer"

    const-string v2, "left"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$1400(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "draweropen"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_3
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$300(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    const-string v1, "drawer"

    const-string v2, "right"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 280
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$200(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerSlide(Landroid/view/View;F)V

    .line 285
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$1500(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "drawerslide"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 287
    .local v0, "options":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "offset"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$200(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 289
    const-string v1, "drawer"

    const-string v2, "left"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$1600(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "drawerslide"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$300(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    const-string v1, "drawer"

    const-string v2, "right"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public onDrawerStateChanged(I)V
    .locals 5
    .param p1, "newState"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 299
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerStateChanged(I)V

    .line 301
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$1700(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v4, "change"

    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 303
    .local v0, "options":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "state"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v4, "idle"

    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v4, "dragging"

    if-ne p1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v1, "settling"

    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$1;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$1800(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "change"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 309
    .end local v0    # "options":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void

    .restart local v0    # "options":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    move v1, v3

    .line 304
    goto :goto_0

    :cond_2
    move v1, v3

    .line 305
    goto :goto_1

    :cond_3
    move v2, v3

    .line 306
    goto :goto_2
.end method
