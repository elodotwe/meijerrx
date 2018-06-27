.class Lorg/appcelerator/titanium/proxy/MenuItemProxy$1;
.super Ljava/lang/Object;
.source "MenuItemProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setActionView(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/proxy/MenuItemProxy;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$1;->this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    iput-object p2, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$1;->this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    invoke-static {v0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->access$100(Lorg/appcelerator/titanium/proxy/MenuItemProxy;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$1;->val$v:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 361
    return-void
.end method
