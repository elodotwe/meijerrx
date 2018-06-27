.class public final Lcrittercism/android/ar$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 1020
    invoke-direct {p0}, Lcrittercism/android/ar$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1027
    :try_start_0
    sget-object v0, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->A:Lcrittercism/android/f;

    sget-object v1, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v1}, Lcrittercism/android/at;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/f;->a(Ljava/util/List;)V

    .line 1028
    sget-object v0, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->A:Lcrittercism/android/f;

    sget-object v1, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v1}, Lcrittercism/android/at;->getPreserveQueryStringPatterns()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/f;->b(Ljava/util/List;)V

    .line 1030
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    iget-object v2, v2, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v2}, Lcrittercism/android/at;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/api/apm/network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1032
    sget-object v1, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    new-instance v2, Lcrittercism/android/h;

    sget-object v3, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    invoke-direct {v2, v3, v0}, Lcrittercism/android/h;-><init>(Lcrittercism/android/ak;Ljava/net/URL;)V

    iput-object v2, v1, Lcrittercism/android/ar;->s:Lcrittercism/android/h;

    .line 1033
    sget-object v0, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->A:Lcrittercism/android/f;

    sget-object v1, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->s:Lcrittercism/android/h;

    invoke-virtual {v0, v1}, Lcrittercism/android/f;->a(Lcrittercism/android/g;)V

    .line 1034
    sget-object v0, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->A:Lcrittercism/android/f;

    sget-object v1, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    invoke-virtual {v0, v1}, Lcrittercism/android/f;->a(Lcrittercism/android/g;)V

    .line 1035
    new-instance v0, Lcrittercism/android/ds;

    sget-object v1, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->s:Lcrittercism/android/h;

    const-string v2, "OPTMZ"

    invoke-direct {v0, v1, v2}, Lcrittercism/android/ds;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1038
    sget-object v0, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    invoke-static {v0}, Lcrittercism/android/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v0}, Lcrittercism/android/at;->isServiceMonitoringEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    new-instance v0, Lcrittercism/android/e;

    sget-object v1, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcrittercism/android/e;-><init>(Landroid/content/Context;)V

    .line 1043
    sget-object v1, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->c:Landroid/content/Context;

    new-instance v2, Lcrittercism/android/c;

    invoke-direct {v2, v1}, Lcrittercism/android/c;-><init>(Landroid/content/Context;)V

    .line 1044
    new-instance v1, Lcrittercism/android/j;

    sget-object v3, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    iget-object v3, v3, Lcrittercism/android/ar;->A:Lcrittercism/android/f;

    invoke-direct {v1, v3, v0, v2}, Lcrittercism/android/j;-><init>(Lcrittercism/android/f;Lcrittercism/android/e;Lcrittercism/android/c;)V

    .line 1051
    sget-object v0, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    invoke-virtual {v1}, Lcrittercism/android/j;->a()Z

    move-result v1

    iput-boolean v1, v0, Lcrittercism/android/ar;->w:Z

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "installedApm = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    iget-boolean v1, v1, Lcrittercism/android/ar;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dr;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in installApm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dr;->b()V

    .line 1055
    invoke-static {}, Lcrittercism/android/dr;->c()V

    goto :goto_0
.end method
