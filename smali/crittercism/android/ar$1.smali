.class public final Lcrittercism/android/ar$1;
.super Lcrittercism/android/dc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/ar;


# direct methods
.method public constructor <init>(Lcrittercism/android/ar;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcrittercism/android/ar$1;->a:Lcrittercism/android/ar;

    invoke-direct {p0}, Lcrittercism/android/dc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 631
    iget-object v0, p0, Lcrittercism/android/ar$1;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lcrittercism/android/ar$1;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    iget-object v0, v0, Lcrittercism/android/da;->b:Lcrittercism/android/be;

    .line 634
    if-eqz v0, :cond_1

    .line 636
    iget-object v1, p0, Lcrittercism/android/ar$1;->a:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->h:Lcrittercism/android/bk;

    invoke-virtual {v1, v0}, Lcrittercism/android/bk;->a(Lcrittercism/android/bz;)Z

    .line 639
    :cond_1
    new-instance v0, Lcrittercism/android/cz;

    iget-object v1, p0, Lcrittercism/android/ar$1;->a:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcrittercism/android/cz;-><init>(Landroid/content/Context;)V

    .line 640
    iget-object v1, p0, Lcrittercism/android/ar$1;->a:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->h:Lcrittercism/android/bk;

    new-instance v2, Lcrittercism/android/cn$a;

    invoke-direct {v2}, Lcrittercism/android/cn$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ar$1;->a:Lcrittercism/android/ar;

    iget-object v3, v3, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v3}, Lcrittercism/android/at;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/v0/appload"

    iget-object v5, p0, Lcrittercism/android/ar$1;->a:Lcrittercism/android/ar;

    iget-object v5, v5, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v5}, Lcrittercism/android/at;->b()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    new-instance v7, Lcrittercism/android/cm$b;

    invoke-direct {v7}, Lcrittercism/android/cm$b;-><init>()V

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/cz;->a(Lcrittercism/android/bk;Lcrittercism/android/ct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/ak;Lcrittercism/android/cr;)V

    .line 649
    iget-object v1, p0, Lcrittercism/android/ar$1;->a:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->i:Lcrittercism/android/bk;

    new-instance v2, Lcrittercism/android/cu$a;

    invoke-direct {v2}, Lcrittercism/android/cu$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ar$1;->a:Lcrittercism/android/ar;

    iget-object v3, v3, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v3}, Lcrittercism/android/at;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_exceptions"

    sget-object v6, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    new-instance v7, Lcrittercism/android/co$a;

    invoke-direct {v7}, Lcrittercism/android/co$a;-><init>()V

    move-object v5, v8

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/cz;->a(Lcrittercism/android/bk;Lcrittercism/android/ct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/ak;Lcrittercism/android/cr;)V

    .line 658
    iget-object v1, p0, Lcrittercism/android/ar$1;->a:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->j:Lcrittercism/android/bk;

    new-instance v2, Lcrittercism/android/cu$a;

    invoke-direct {v2}, Lcrittercism/android/cu$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ar$1;->a:Lcrittercism/android/ar;

    iget-object v3, v3, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v3}, Lcrittercism/android/at;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_ndk_crashes"

    sget-object v6, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    new-instance v7, Lcrittercism/android/co$a;

    invoke-direct {v7}, Lcrittercism/android/co$a;-><init>()V

    move-object v5, v8

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/cz;->a(Lcrittercism/android/bk;Lcrittercism/android/ct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/ak;Lcrittercism/android/cr;)V

    .line 667
    iget-object v1, p0, Lcrittercism/android/ar$1;->a:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->k:Lcrittercism/android/bk;

    new-instance v2, Lcrittercism/android/cu$a;

    invoke-direct {v2}, Lcrittercism/android/cu$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ar$1;->a:Lcrittercism/android/ar;

    iget-object v3, v3, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v3}, Lcrittercism/android/at;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_crashes"

    sget-object v6, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    new-instance v7, Lcrittercism/android/co$a;

    invoke-direct {v7}, Lcrittercism/android/co$a;-><init>()V

    move-object v5, v8

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/cz;->a(Lcrittercism/android/bk;Lcrittercism/android/ct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/ak;Lcrittercism/android/cr;)V

    .line 676
    iget-object v1, p0, Lcrittercism/android/ar$1;->a:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    iget-object v2, p0, Lcrittercism/android/ar$1;->a:Lcrittercism/android/ar;

    iget-object v2, v2, Lcrittercism/android/ar;->t:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcrittercism/android/cz;->a(Lcrittercism/android/da;Ljava/util/concurrent/ExecutorService;)V

    goto/16 :goto_0
.end method
