.class final Lorg/appcelerator/titanium/proxy/MenuItemProxy$CompatActionExpandListener;
.super Ljava/lang/Object;
.source "MenuItemProxy.java"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/proxy/MenuItemProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompatActionExpandListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;


# direct methods
.method private constructor <init>(Lorg/appcelerator/titanium/proxy/MenuItemProxy;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$CompatActionExpandListener;->this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/appcelerator/titanium/proxy/MenuItemProxy;Lorg/appcelerator/titanium/proxy/MenuItemProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .param p2, "x1"    # Lorg/appcelerator/titanium/proxy/MenuItemProxy$1;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/MenuItemProxy$CompatActionExpandListener;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxy;)V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$CompatActionExpandListener;->this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    const-string v1, "collapse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$CompatActionExpandListener;->this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    const-string v1, "expand"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 67
    const/4 v0, 0x1

    return v0
.end method
