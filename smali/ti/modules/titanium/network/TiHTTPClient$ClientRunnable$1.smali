.class Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;
.super Ljava/lang/Object;
.source "TiHTTPClient.java"

# interfaces
.implements Lti/modules/titanium/network/TiHTTPClient$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;


# direct methods
.method constructor <init>(Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;)V
    .locals 0

    .prologue
    .line 1157
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;->this$1:Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progress(I)V
    .locals 8
    .param p1, "progress"    # I

    .prologue
    .line 1159
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1160
    .local v2, "data":Lorg/appcelerator/kroll/KrollDict;
    int-to-double v4, p1

    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;->this$1:Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    invoke-static {v3}, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->access$900(Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;)I

    move-result v3

    int-to-double v6, v3

    div-double v0, v4, v6

    .line 1161
    .local v0, "currentProgress":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v0, v4

    if-lez v3, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1162
    :cond_0
    const-string v3, "progress"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;->this$1:Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    iget-object v3, v3, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const-string v4, "onsendstream"

    invoke-static {v3, v4, v2}, Lti/modules/titanium/network/TiHTTPClient;->access$1000(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 1164
    return-void
.end method
