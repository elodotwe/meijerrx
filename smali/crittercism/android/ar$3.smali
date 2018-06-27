.class final Lcrittercism/android/ar$3;
.super Lcrittercism/android/dc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/ar;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/ar;

.field final synthetic b:Lcrittercism/android/ar;


# direct methods
.method constructor <init>(Lcrittercism/android/ar;Lcrittercism/android/ar;)V
    .locals 0

    .prologue
    .line 1469
    iput-object p1, p0, Lcrittercism/android/ar$3;->b:Lcrittercism/android/ar;

    iput-object p2, p0, Lcrittercism/android/ar$3;->a:Lcrittercism/android/ar;

    invoke-direct {p0}, Lcrittercism/android/dc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 1471
    iget-object v0, p0, Lcrittercism/android/ar$3;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    .line 1472
    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    :goto_0
    return-void

    .line 1476
    :cond_0
    new-instance v0, Lcrittercism/android/co;

    iget-object v1, p0, Lcrittercism/android/ar$3;->a:Lcrittercism/android/ar;

    invoke-direct {v0, v1}, Lcrittercism/android/co;-><init>(Lcrittercism/android/ak;)V

    .line 1477
    const-string v1, "metadata"

    iget-object v2, p0, Lcrittercism/android/ar$3;->a:Lcrittercism/android/ar;

    iget-object v2, v2, Lcrittercism/android/ar;->C:Lcrittercism/android/dp;

    invoke-virtual {v2}, Lcrittercism/android/dp;->a()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, v0, Lcrittercism/android/co;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    new-instance v1, Lcrittercism/android/cv;

    iget-object v2, p0, Lcrittercism/android/ar$3;->b:Lcrittercism/android/ar;

    iget-object v2, v2, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v2}, Lcrittercism/android/at;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/android_v2/update_user_metadata"

    invoke-direct {v1, v2, v3}, Lcrittercism/android/cv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcrittercism/android/cv;->a()Ljava/net/URL;

    move-result-object v1

    .line 1480
    new-instance v2, Lcrittercism/android/cw;

    invoke-direct {v2, v1}, Lcrittercism/android/cw;-><init>(Ljava/net/URL;)V

    .line 1482
    new-instance v1, Lcrittercism/android/cx;

    iget-object v3, p0, Lcrittercism/android/ar$3;->a:Lcrittercism/android/ar;

    iget-object v3, v3, Lcrittercism/android/ar;->C:Lcrittercism/android/dp;

    invoke-direct {v1, v3}, Lcrittercism/android/cx;-><init>(Lcrittercism/android/dp;)V

    .line 1483
    new-instance v3, Lcrittercism/android/dd;

    invoke-direct {v3, v0, v2, v1}, Lcrittercism/android/dd;-><init>(Lcrittercism/android/cq;Lcrittercism/android/cw;Lcrittercism/android/cs;)V

    invoke-virtual {v3}, Lcrittercism/android/dd;->run()V

    goto :goto_0
.end method
