.class Lorg/appcelerator/titanium/proxy/MenuItemProxy$4;
.super Ljava/lang/Object;
.source "MenuItemProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setShowAsAction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;

.field final synthetic val$flag:I


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/proxy/MenuItemProxy;I)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$4;->this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    iput p2, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$4;->val$flag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$4;->this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    invoke-static {v0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->access$100(Lorg/appcelerator/titanium/proxy/MenuItemProxy;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$4;->val$flag:I

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 389
    return-void
.end method
