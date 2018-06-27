.class Lti/modules/titanium/media/MediaModule$2;
.super Ljava/lang/Object;
.source "MediaModule.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/MediaModule;->previewImage(Lorg/appcelerator/kroll/KrollDict;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/MediaModule;

.field final synthetic val$code:I

.field final synthetic val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic val$fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/MediaModule;ILorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 0

    .prologue
    .line 1024
    iput-object p1, p0, Lti/modules/titanium/media/MediaModule$2;->this$0:Lti/modules/titanium/media/MediaModule;

    iput p2, p0, Lti/modules/titanium/media/MediaModule$2;->val$code:I

    iput-object p3, p0, Lti/modules/titanium/media/MediaModule$2;->val$fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;

    iput-object p4, p0, Lti/modules/titanium/media/MediaModule$2;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1041
    iget v1, p0, Lti/modules/titanium/media/MediaModule$2;->val$code:I

    if-eq p2, v1, :cond_1

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gallery problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "TiMedia"

    invoke-static {v1, v0, p3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1046
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$2;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_0

    .line 1047
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$2;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v2, p0, Lti/modules/titanium/media/MediaModule$2;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v2}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$2;->this$0:Lti/modules/titanium/media/MediaModule;

    const/4 v4, -0x1

    invoke-static {v3, v4, v0}, Lti/modules/titanium/media/MediaModule;->access$400(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 1028
    iget v1, p0, Lti/modules/titanium/media/MediaModule$2;->val$code:I

    if-eq p2, v1, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    const-string v1, "TiMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnResult called: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$2;->val$fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_0

    .line 1033
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1034
    .local v0, "response":Lorg/appcelerator/kroll/KrollDict;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 1035
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$2;->val$fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v2, p0, Lti/modules/titanium/media/MediaModule$2;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v2}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto :goto_0
.end method
