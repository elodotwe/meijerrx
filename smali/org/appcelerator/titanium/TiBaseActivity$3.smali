.class Lorg/appcelerator/titanium/TiBaseActivity$3;
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

.field final synthetic val$barColor:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/TiBaseActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity$3;->this$0:Lorg/appcelerator/titanium/TiBaseActivity;

    iput-object p2, p0, Lorg/appcelerator/titanium/TiBaseActivity$3;->val$barColor:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$3;->this$0:Lorg/appcelerator/titanium/TiBaseActivity;

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getActionBar()Lorg/appcelerator/titanium/proxy/ActionBarProxy;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity$3;->val$barColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->setBackgroundColor(Ljava/lang/String;)V

    .line 423
    return-void
.end method
