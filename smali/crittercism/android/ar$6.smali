.class final Lcrittercism/android/ar$6;
.super Lcrittercism/android/dc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:J

.field final synthetic c:Lcrittercism/android/ar;


# direct methods
.method constructor <init>(Lcrittercism/android/ar;Ljava/lang/Throwable;J)V
    .locals 1

    .prologue
    .line 755
    iput-object p1, p0, Lcrittercism/android/ar$6;->c:Lcrittercism/android/ar;

    iput-object p2, p0, Lcrittercism/android/ar$6;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lcrittercism/android/ar$6;->b:J

    invoke-direct {p0}, Lcrittercism/android/dc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 757
    iget-object v0, p0, Lcrittercism/android/ar$6;->c:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    new-instance v1, Lcrittercism/android/bc;

    iget-object v0, p0, Lcrittercism/android/ar$6;->a:Ljava/lang/Throwable;

    iget-wide v2, p0, Lcrittercism/android/ar$6;->b:J

    invoke-direct {v1, v0, v2, v3}, Lcrittercism/android/bc;-><init>(Ljava/lang/Throwable;J)V

    .line 760
    const-string v0, "current_session"

    iget-object v2, p0, Lcrittercism/android/ar$6;->c:Lcrittercism/android/ar;

    iget-object v2, v2, Lcrittercism/android/ar;->l:Lcrittercism/android/bk;

    invoke-virtual {v1, v0, v2}, Lcrittercism/android/bc;->a(Ljava/lang/String;Lcrittercism/android/bk;)V

    .line 762
    const-string v0, "he"

    iput-object v0, v1, Lcrittercism/android/bc;->e:Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lcrittercism/android/ar$6;->a:Ljava/lang/Throwable;

    instance-of v0, v0, Lcrittercism/android/ci;

    if-eqz v0, :cond_2

    .line 764
    iget-object v0, p0, Lcrittercism/android/ar$6;->a:Ljava/lang/Throwable;

    check-cast v0, Lcrittercism/android/ci;

    invoke-virtual {v0}, Lcrittercism/android/ci;->a()Z

    move-result v0

    iput-boolean v0, v1, Lcrittercism/android/bc;->g:Z

    .line 771
    :goto_1
    iget-object v0, p0, Lcrittercism/android/ar$6;->c:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->i:Lcrittercism/android/bk;

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bz;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcrittercism/android/ar$6;->c:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->n:Lcrittercism/android/bk;

    new-instance v2, Lcrittercism/android/bq;

    iget-object v3, v1, Lcrittercism/android/bc;->b:Ljava/lang/String;

    iget-object v4, v1, Lcrittercism/android/bc;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcrittercism/android/bq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bz;)Z

    .line 774
    iget-object v0, p0, Lcrittercism/android/ar$6;->c:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->m:Lcrittercism/android/bk;

    invoke-virtual {v1, v0}, Lcrittercism/android/bc;->a(Lcrittercism/android/bk;)V

    .line 775
    iget-object v0, p0, Lcrittercism/android/ar$6;->c:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->n:Lcrittercism/android/bk;

    invoke-virtual {v1, v0}, Lcrittercism/android/bc;->b(Lcrittercism/android/bk;)V

    .line 786
    iget-object v0, p0, Lcrittercism/android/ar$6;->c:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->i:Lcrittercism/android/bk;

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->b(Lcrittercism/android/bz;)Z

    .line 788
    iget-object v0, p0, Lcrittercism/android/ar$6;->c:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->q:Lcrittercism/android/cp;

    invoke-virtual {v0}, Lcrittercism/android/cp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    new-instance v0, Lcrittercism/android/cz;

    iget-object v1, p0, Lcrittercism/android/ar$6;->c:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcrittercism/android/cz;-><init>(Landroid/content/Context;)V

    .line 791
    iget-object v1, p0, Lcrittercism/android/ar$6;->c:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->i:Lcrittercism/android/bk;

    new-instance v2, Lcrittercism/android/cu$a;

    invoke-direct {v2}, Lcrittercism/android/cu$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ar$6;->c:Lcrittercism/android/ar;

    iget-object v3, v3, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v3}, Lcrittercism/android/at;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_exceptions"

    const/4 v5, 0x0

    sget-object v6, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    new-instance v7, Lcrittercism/android/co$a;

    invoke-direct {v7}, Lcrittercism/android/co$a;-><init>()V

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/cz;->a(Lcrittercism/android/bk;Lcrittercism/android/ct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/ak;Lcrittercism/android/cr;)V

    .line 800
    iget-object v1, p0, Lcrittercism/android/ar$6;->c:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    iget-object v2, p0, Lcrittercism/android/ar$6;->c:Lcrittercism/android/ar;

    iget-object v2, v2, Lcrittercism/android/ar;->t:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcrittercism/android/cz;->a(Lcrittercism/android/da;Ljava/util/concurrent/ExecutorService;)V

    .line 801
    iget-object v0, p0, Lcrittercism/android/ar$6;->c:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->q:Lcrittercism/android/cp;

    invoke-virtual {v0}, Lcrittercism/android/cp;->b()V

    goto/16 :goto_0

    .line 766
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcrittercism/android/bc;->g:Z

    goto :goto_1
.end method
