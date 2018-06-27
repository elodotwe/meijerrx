.class Lorg/appcelerator/titanium/TiBaseActivity$2;
.super Ljava/lang/Object;
.source "TiBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/TiBaseActivity;->updateTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/TiBaseActivity;

.field final synthetic val$statusBarColor:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/TiBaseActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity$2;->this$0:Lorg/appcelerator/titanium/TiBaseActivity;

    iput-object p2, p0, Lorg/appcelerator/titanium/TiBaseActivity$2;->val$statusBarColor:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$2;->this$0:Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 412
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$2;->this$0:Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 413
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$2;->this$0:Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity$2;->val$statusBarColor:Ljava/lang/String;

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 414
    return-void
.end method
