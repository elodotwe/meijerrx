.class Lti/push/TipushModule$2;
.super Landroid/os/AsyncTask;
.source "TipushModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/push/TipushModule;->clearStatus(Lorg/appcelerator/kroll/KrollDict;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lti/push/TipushModule;

.field final synthetic val$errorCallback:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic val$senderId:Ljava/lang/String;

.field final synthetic val$successCallback:Lorg/appcelerator/kroll/KrollFunction;


# direct methods
.method constructor <init>(Lti/push/TipushModule;Ljava/lang/String;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lti/push/TipushModule$2;->this$0:Lti/push/TipushModule;

    iput-object p2, p0, Lti/push/TipushModule$2;->val$senderId:Ljava/lang/String;

    iput-object p3, p0, Lti/push/TipushModule$2;->val$successCallback:Lorg/appcelerator/kroll/KrollFunction;

    iput-object p4, p0, Lti/push/TipushModule$2;->val$errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lti/push/TipushModule$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 165
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v2

    iget-object v3, p0, Lti/push/TipushModule$2;->val$senderId:Ljava/lang/String;

    const-string v4, "GCM"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/iid/InstanceID;->deleteToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lti/push/TipushModule$2;->val$successCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lti/push/TipushModule$2;->val$successCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v3, p0, Lti/push/TipushModule$2;->this$0:Lti/push/TipushModule;

    invoke-virtual {v3}, Lti/push/TipushModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v3, v4}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lti/push/TipushModule$2;->val$errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v2, :cond_0

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v0, "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Lti/push/TipushModule$2;->val$errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v3, p0, Lti/push/TipushModule$2;->this$0:Lti/push/TipushModule;

    invoke-virtual {v3}, Lti/push/TipushModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)Ljava/lang/Object;

    goto :goto_0
.end method
