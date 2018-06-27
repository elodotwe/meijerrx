.class final Lcrittercism/android/ay$1;
.super Lcrittercism/android/dc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/ay;->a(Lcrittercism/android/ar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcrittercism/android/ar;


# direct methods
.method constructor <init>(Ljava/util/List;Lcrittercism/android/ar;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcrittercism/android/ay$1;->a:Ljava/util/List;

    iput-object p2, p0, Lcrittercism/android/ay$1;->b:Lcrittercism/android/ar;

    invoke-direct {p0}, Lcrittercism/android/dc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lcrittercism/android/ay$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ay;

    .line 326
    monitor-enter v0

    .line 327
    :try_start_0
    invoke-static {v0}, Lcrittercism/android/ay;->a(Lcrittercism/android/ay;)Lcrittercism/android/ay$a;

    move-result-object v2

    sget-object v3, Lcrittercism/android/ay$a;->b:Lcrittercism/android/ay$a;

    if-ne v2, v3, :cond_0

    .line 328
    iget-object v2, p0, Lcrittercism/android/ay$1;->b:Lcrittercism/android/ar;

    iget-object v2, v2, Lcrittercism/android/ar;->o:Lcrittercism/android/bk;

    invoke-virtual {v2, v0}, Lcrittercism/android/bk;->b(Lcrittercism/android/bz;)Z

    .line 330
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 331
    :cond_1
    return-void
.end method
