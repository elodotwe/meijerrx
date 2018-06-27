.class Lorg/appcelerator/titanium/view/TiUIView$5;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiUIView;->blur()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiUIView;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0

    .prologue
    .line 1079
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1082
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 1086
    :cond_0
    return-void
.end method
