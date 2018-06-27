.class Lcom/tripvi/drawerlayout/Drawer$DrawerListener;
.super Ljava/lang/Object;
.source "Drawer.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tripvi/drawerlayout/Drawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tripvi/drawerlayout/Drawer;


# direct methods
.method private constructor <init>(Lcom/tripvi/drawerlayout/Drawer;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tripvi/drawerlayout/Drawer;Lcom/tripvi/drawerlayout/Drawer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tripvi/drawerlayout/Drawer;
    .param p2, "x1"    # Lcom/tripvi/drawerlayout/Drawer$1;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;-><init>(Lcom/tripvi/drawerlayout/Drawer;)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$100(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "drawerclose"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 126
    .local v0, "options":Lorg/appcelerator/kroll/KrollDict;
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$200(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    const-string v1, "drawer"

    const-string v2, "left"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$400(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "drawerclose"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 133
    .end local v0    # "options":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    return-void

    .line 128
    .restart local v0    # "options":Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$300(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "drawer"

    const-string v2, "right"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$500(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "draweropen"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 139
    .local v0, "options":Lorg/appcelerator/kroll/KrollDict;
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$200(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    const-string v1, "drawer"

    const-string v2, "left"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$600(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "draweropen"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 146
    .end local v0    # "options":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    return-void

    .line 141
    .restart local v0    # "options":Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$300(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string v1, "drawer"

    const-string v2, "right"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 150
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$700(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "drawerslide"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 152
    .local v0, "options":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "offset"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$200(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    const-string v1, "drawer"

    const-string v2, "left"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$800(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "drawerslide"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 160
    .end local v0    # "options":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    return-void

    .line 155
    .restart local v0    # "options":Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$300(Lcom/tripvi/drawerlayout/Drawer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const-string v1, "drawer"

    const-string v2, "right"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onDrawerStateChanged(I)V
    .locals 5
    .param p1, "newState"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 164
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$900(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v4, "change"

    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 166
    .local v0, "options":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "state"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v4, "idle"

    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v4, "dragging"

    if-ne p1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "settling"

    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lcom/tripvi/drawerlayout/Drawer$DrawerListener;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/Drawer;->access$1000(Lcom/tripvi/drawerlayout/Drawer;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "change"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 172
    .end local v0    # "options":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void

    .restart local v0    # "options":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    move v1, v3

    .line 167
    goto :goto_0

    :cond_2
    move v1, v3

    .line 168
    goto :goto_1

    :cond_3
    move v2, v3

    .line 169
    goto :goto_2
.end method
