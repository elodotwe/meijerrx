.class final Lcrittercism/android/ar$2;
.super Lcrittercism/android/dc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/ar;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/ar;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcrittercism/android/ar;


# direct methods
.method constructor <init>(Lcrittercism/android/ar;Lcrittercism/android/ar;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1440
    iput-object p1, p0, Lcrittercism/android/ar$2;->c:Lcrittercism/android/ar;

    iput-object p2, p0, Lcrittercism/android/ar$2;->a:Lcrittercism/android/ar;

    iput-object p3, p0, Lcrittercism/android/ar$2;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcrittercism/android/dc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1442
    iget-object v0, p0, Lcrittercism/android/ar$2;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    .line 1443
    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1453
    :cond_0
    :goto_0
    return-void

    .line 1447
    :cond_1
    iget-object v0, p0, Lcrittercism/android/ar$2;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->C:Lcrittercism/android/dp;

    iget-object v1, p0, Lcrittercism/android/ar$2;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcrittercism/android/dp;->a(Lorg/json/JSONObject;)V

    .line 1450
    iget-object v0, p0, Lcrittercism/android/ar$2;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->C:Lcrittercism/android/dp;

    invoke-virtual {v0}, Lcrittercism/android/dp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcrittercism/android/ar$2;->a:Lcrittercism/android/ar;

    invoke-virtual {v0}, Lcrittercism/android/ar;->G()V

    goto :goto_0
.end method
