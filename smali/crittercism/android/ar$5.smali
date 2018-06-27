.class final Lcrittercism/android/ar$5;
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
    .line 704
    iput-object p1, p0, Lcrittercism/android/ar$5;->c:Lcrittercism/android/ar;

    iput-object p2, p0, Lcrittercism/android/ar$5;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lcrittercism/android/ar$5;->b:J

    invoke-direct {p0}, Lcrittercism/android/dc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 707
    iget-object v0, p0, Lcrittercism/android/ar$5;->c:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lcrittercism/android/ar$5;->c:Lcrittercism/android/ar;

    iget-object v1, v0, Lcrittercism/android/ar;->q:Lcrittercism/android/cp;

    monitor-enter v1

    .line 712
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ar$5;->c:Lcrittercism/android/ar;

    iget v0, v0, Lcrittercism/android/ar;->G:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 713
    new-instance v0, Lcrittercism/android/bc;

    iget-object v2, p0, Lcrittercism/android/ar$5;->a:Ljava/lang/Throwable;

    iget-wide v4, p0, Lcrittercism/android/ar$5;->b:J

    invoke-direct {v0, v2, v4, v5}, Lcrittercism/android/bc;-><init>(Ljava/lang/Throwable;J)V

    .line 714
    const-string v2, "current_session"

    iget-object v3, p0, Lcrittercism/android/ar$5;->c:Lcrittercism/android/ar;

    iget-object v3, v3, Lcrittercism/android/ar;->l:Lcrittercism/android/bk;

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/bc;->a(Ljava/lang/String;Lcrittercism/android/bk;)V

    .line 720
    iget-object v2, p0, Lcrittercism/android/ar$5;->c:Lcrittercism/android/ar;

    iget-object v2, v2, Lcrittercism/android/ar;->m:Lcrittercism/android/bk;

    invoke-virtual {v0, v2}, Lcrittercism/android/bc;->a(Lcrittercism/android/bk;)V

    .line 721
    const-string v2, "he"

    iput-object v2, v0, Lcrittercism/android/bc;->e:Ljava/lang/String;

    .line 726
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcrittercism/android/bc;->g:Z

    .line 728
    iget-object v2, p0, Lcrittercism/android/ar$5;->c:Lcrittercism/android/ar;

    iget-object v2, v2, Lcrittercism/android/ar;->q:Lcrittercism/android/cp;

    invoke-virtual {v2}, Lcrittercism/android/cp;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 729
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lcrittercism/android/bc;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 731
    new-instance v2, Lcrittercism/android/co;

    sget-object v3, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    invoke-direct {v2, v3}, Lcrittercism/android/co;-><init>(Lcrittercism/android/ak;)V

    sget-object v3, Lcrittercism/android/bj;->b:Lcrittercism/android/bj;

    invoke-virtual {v3}, Lcrittercism/android/bj;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcrittercism/android/co;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lcrittercism/android/co;

    move-result-object v0

    .line 735
    new-instance v2, Lcrittercism/android/dd;

    new-instance v3, Lcrittercism/android/cw;

    new-instance v4, Lcrittercism/android/cv;

    iget-object v5, p0, Lcrittercism/android/ar$5;->c:Lcrittercism/android/ar;

    iget-object v5, v5, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v5}, Lcrittercism/android/at;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/android_v2/handle_exceptions"

    invoke-direct {v4, v5, v6}, Lcrittercism/android/cv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcrittercism/android/cv;->a()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v3, v4}, Lcrittercism/android/cw;-><init>(Ljava/net/URL;)V

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcrittercism/android/dd;-><init>(Lcrittercism/android/cq;Lcrittercism/android/cw;Lcrittercism/android/cs;)V

    invoke-virtual {v2}, Lcrittercism/android/dd;->run()V

    .line 739
    iget-object v0, p0, Lcrittercism/android/ar$5;->c:Lcrittercism/android/ar;

    iget v2, v0, Lcrittercism/android/ar;->G:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcrittercism/android/ar;->G:I

    .line 740
    iget-object v0, p0, Lcrittercism/android/ar$5;->c:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->q:Lcrittercism/android/cp;

    invoke-virtual {v0}, Lcrittercism/android/cp;->b()V

    .line 743
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
