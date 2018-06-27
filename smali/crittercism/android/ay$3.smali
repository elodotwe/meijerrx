.class final Lcrittercism/android/ay$3;
.super Lcrittercism/android/dc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/ar;

.field final synthetic b:Lcrittercism/android/ay;


# direct methods
.method constructor <init>(Lcrittercism/android/ar;Lcrittercism/android/ay;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcrittercism/android/ay$3;->a:Lcrittercism/android/ar;

    iput-object p2, p0, Lcrittercism/android/ay$3;->b:Lcrittercism/android/ay;

    invoke-direct {p0}, Lcrittercism/android/dc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcrittercism/android/ay$3;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    iget-object v0, v0, Lcrittercism/android/da;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 506
    invoke-static {}, Lcrittercism/android/ay;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcrittercism/android/ay$3;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->o:Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ay$3;->b:Lcrittercism/android/ay;

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bz;)Z

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-static {}, Lcrittercism/android/ay;->n()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 510
    :try_start_0
    invoke-static {}, Lcrittercism/android/ay;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 511
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
