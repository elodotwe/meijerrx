.class final Lcrittercism/android/ay$6;
.super Lcrittercism/android/dc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/ay;->b(Lcrittercism/android/ay$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/ay;

.field final synthetic b:Lcrittercism/android/ay;


# direct methods
.method constructor <init>(Lcrittercism/android/ay;Lcrittercism/android/ay;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lcrittercism/android/ay$6;->b:Lcrittercism/android/ay;

    iput-object p2, p0, Lcrittercism/android/ay$6;->a:Lcrittercism/android/ay;

    invoke-direct {p0}, Lcrittercism/android/dc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 779
    iget-object v0, p0, Lcrittercism/android/ay$6;->a:Lcrittercism/android/ay;

    invoke-static {v0}, Lcrittercism/android/ay;->a(Lcrittercism/android/ay;)Lcrittercism/android/ay$a;

    move-result-object v0

    sget-object v1, Lcrittercism/android/ay$a;->c:Lcrittercism/android/ay$a;

    if-eq v0, v1, :cond_0

    .line 780
    new-instance v0, Lcrittercism/android/ay$6$1;

    invoke-direct {v0, p0}, Lcrittercism/android/ay$6$1;-><init>(Lcrittercism/android/ay$6;)V

    .line 786
    iget-object v1, p0, Lcrittercism/android/ay$6;->b:Lcrittercism/android/ay;

    iget-object v1, v1, Lcrittercism/android/ay;->a:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->u:Ljava/util/concurrent/ExecutorService;

    .line 788
    new-instance v2, Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 789
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 792
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 800
    :cond_0
    :goto_0
    iget-object v0, p0, Lcrittercism/android/ay$6;->b:Lcrittercism/android/ay;

    iget-object v0, v0, Lcrittercism/android/ay;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    iget-object v0, v0, Lcrittercism/android/da;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 801
    invoke-static {}, Lcrittercism/android/ay;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcrittercism/android/ay$6;->b:Lcrittercism/android/ay;

    iget-object v0, v0, Lcrittercism/android/ay;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->o:Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ay$6;->b:Lcrittercism/android/ay;

    invoke-static {v1}, Lcrittercism/android/ay;->c(Lcrittercism/android/ay;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcrittercism/android/ay$6;->b:Lcrittercism/android/ay;

    iget-object v0, v0, Lcrittercism/android/ay;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->p:Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ay$6;->a:Lcrittercism/android/ay;

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bz;)Z

    .line 807
    :goto_1
    return-void

    .line 793
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 795
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 805
    :cond_1
    invoke-static {}, Lcrittercism/android/ay;->n()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 806
    :try_start_1
    invoke-static {}, Lcrittercism/android/ay;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 807
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
