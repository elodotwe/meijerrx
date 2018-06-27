.class public final Lcrittercism/android/ar$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/ar$b;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcrittercism/android/ar$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    iget-boolean v0, p0, Lcrittercism/android/ar$b;->a:Z

    if-nez v0, :cond_0

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/ar$b;->a:Z

    .line 271
    invoke-static {}, Lcrittercism/android/ay;->h()V

    .line 273
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    return v1

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
