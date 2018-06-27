.class public final Lcrittercism/android/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/c;->a:Ljava/io/File;

    .line 59
    const-string v0, "dx"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/c;->a:Ljava/io/File;

    .line 63
    iget-object v0, p0, Lcrittercism/android/c;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcrittercism/android/cc;

    const-string v1, "dxDir is not a directory!"

    invoke-direct {v0, v1, v2}, Lcrittercism/android/cc;-><init>(Ljava/lang/String;B)V

    throw v0

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 78
    if-nez p3, :cond_0

    .line 79
    new-array p3, v0, [Ljava/lang/Class;

    .line 82
    :cond_0
    if-nez p4, :cond_1

    .line 83
    new-array p4, v0, [Ljava/lang/Object;

    .line 86
    :cond_1
    monitor-enter p1

    .line 88
    :try_start_0
    invoke-static {p1}, Lcrittercism/android/lh;->a(Ljava/lang/Class;)Lcrittercism/android/lh;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/c;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcrittercism/android/lh;->a(Ljava/io/File;)Lcrittercism/android/lh;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcrittercism/android/lh;->a(Ljava/lang/reflect/InvocationHandler;)Lcrittercism/android/lh;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcrittercism/android/lh;->a([Ljava/lang/Class;)Lcrittercism/android/lh;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcrittercism/android/lh;->a([Ljava/lang/Object;)Lcrittercism/android/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/lh;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method
