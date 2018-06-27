.class Lti/modules/titanium/media/MediaModule$1;
.super Ljava/lang/Object;
.source "MediaModule.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/MediaModule;->openPhotoGallery(Lorg/appcelerator/kroll/KrollDict;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/MediaModule;

.field final synthetic val$code:I

.field final synthetic val$fCancelCallback:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic val$fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/MediaModule;ILorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 0

    .prologue
    .line 850
    iput-object p1, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    iput p2, p0, Lti/modules/titanium/media/MediaModule$1;->val$code:I

    iput-object p3, p0, Lti/modules/titanium/media/MediaModule$1;->val$fCancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    iput-object p4, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iput-object p5, p0, Lti/modules/titanium/media/MediaModule$1;->val$fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;

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
    .line 899
    iget v1, p0, Lti/modules/titanium/media/MediaModule$1;->val$code:I

    if-eq p2, v1, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 902
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

    .line 903
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "TiMedia"

    invoke-static {v1, v0, p3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 904
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_0

    .line 905
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v2, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v2}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    const/4 v4, -0x1

    invoke-static {v3, v4, v0}, Lti/modules/titanium/media/MediaModule;->access$300(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 854
    iget v4, p0, Lti/modules/titanium/media/MediaModule$1;->val$code:I

    if-eq p2, v4, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    const-string v4, "TiMedia"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnResult called: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v2, 0x0

    .line 860
    .local v2, "path":Ljava/lang/String;
    if-eqz p4, :cond_2

    .line 861
    invoke-virtual {p4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 865
    :cond_2
    if-eqz p3, :cond_3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-lt v4, v5, :cond_4

    if-nez v2, :cond_4

    .line 866
    :cond_3
    iget-object v4, p0, Lti/modules/titanium/media/MediaModule$1;->val$fCancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v4, :cond_0

    .line 867
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 868
    .local v3, "response":Lorg/appcelerator/kroll/KrollDict;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 869
    iget-object v4, p0, Lti/modules/titanium/media/MediaModule$1;->val$fCancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v5, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v5}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto :goto_0

    .line 875
    .end local v3    # "response":Lorg/appcelerator/kroll/KrollDict;
    :cond_4
    if-nez v2, :cond_5

    .line 876
    :try_start_0
    const-string v1, "Image path is invalid"

    .line 877
    .local v1, "msg":Ljava/lang/String;
    const-string v4, "TiMedia"

    invoke-static {v4, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v4, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v4, :cond_0

    .line 879
    iget-object v4, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v5, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v5}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    const/4 v7, -0x1

    invoke-static {v6, v7, v1}, Lti/modules/titanium/media/MediaModule;->access$100(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 887
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 888
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not enough memory to get image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 889
    .restart local v1    # "msg":Ljava/lang/String;
    const-string v4, "TiMedia"

    invoke-static {v4, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v4, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v4, :cond_0

    .line 891
    iget-object v4, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v5, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v5}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-static {v6, v8, v1}, Lti/modules/titanium/media/MediaModule;->access$200(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 883
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v4, p0, Lti/modules/titanium/media/MediaModule$1;->val$fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v4, :cond_0

    .line 884
    iget-object v4, p0, Lti/modules/titanium/media/MediaModule$1;->val$fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v5, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v5}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v5

    const-string v6, "image/jpeg"

    invoke-static {v2, v6}, Lti/modules/titanium/media/MediaModule;->createDictForImage(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
