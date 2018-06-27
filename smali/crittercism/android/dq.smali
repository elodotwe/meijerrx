.class public final Lcrittercism/android/dq;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcrittercism/android/dm;

.field private b:Lcrittercism/android/do;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcrittercism/android/do;
    .locals 1

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/dq;->b:Lcrittercism/android/do;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcrittercism/android/an;)V
    .locals 2

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcrittercism/android/dm$a;->a(Lcrittercism/android/an;)Lcrittercism/android/dm;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/dq;->a:Lcrittercism/android/dm;

    .line 53
    iget-object v0, p0, Lcrittercism/android/dq;->a:Lcrittercism/android/dm;

    invoke-virtual {v0}, Lcrittercism/android/dm;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcrittercism/android/ck;->j:Lcrittercism/android/ck;

    invoke-virtual {v0}, Lcrittercism/android/ck;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcrittercism/android/ck;->j:Lcrittercism/android/ck;

    invoke-virtual {v1}, Lcrittercism/android/ck;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcrittercism/android/an;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcrittercism/android/do;

    invoke-direct {v1, v0}, Lcrittercism/android/do;-><init>(I)V

    iget v0, v1, Lcrittercism/android/do;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcrittercism/android/do;->a:I

    iput-object v1, p0, Lcrittercism/android/dq;->b:Lcrittercism/android/do;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 2

    .prologue
    .line 27
    monitor-enter p0

    const/4 v0, 0x1

    .line 29
    :try_start_0
    iget-object v1, p0, Lcrittercism/android/dq;->a:Lcrittercism/android/dm;

    if-eqz v1, :cond_0

    .line 30
    iget-object v0, p0, Lcrittercism/android/dq;->a:Lcrittercism/android/dm;

    invoke-virtual {v0}, Lcrittercism/android/dm;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 33
    :cond_0
    monitor-exit p0

    return v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
