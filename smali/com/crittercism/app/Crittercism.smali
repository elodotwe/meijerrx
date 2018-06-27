.class public Lcom/crittercism/app/Crittercism;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 170
    const-string v0, "Crittercism cannot be initialized"

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dr;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Must initialize Crittercism before calling "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/crittercism/app/Crittercism;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "().  Request is being ignored..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 892
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1}, Lcrittercism/android/dr;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 893
    return-void
.end method

.method public static beginTransaction(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 791
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcrittercism/android/ar;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 797
    :goto_0
    return-void

    .line 792
    :catch_0
    move-exception v0

    throw v0

    .line 794
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static didCrashOnLastLoad()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 490
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v1

    iget-boolean v2, v1, Lcrittercism/android/ar;->b:Z

    if-nez v2, :cond_1

    const-string v1, "didCrashOnLoad"

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 496
    :cond_0
    :goto_0
    return v0

    .line 490
    :cond_1
    invoke-virtual {v1}, Lcrittercism/android/ar;->D()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcrittercism/android/ar;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    sget-boolean v0, Lcrittercism/android/dk;->a:Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    throw v0

    .line 493
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static endTransaction(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 806
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcrittercism/android/ar;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 812
    :goto_0
    return-void

    .line 807
    :catch_0
    move-exception v0

    throw v0

    .line 809
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static failTransaction(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 820
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcrittercism/android/ar;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 826
    :goto_0
    return-void

    .line 821
    :catch_0
    move-exception v0

    throw v0

    .line 823
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static generateRateMyAppAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 4
    .param p0, "activityContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 128
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v3

    iget-object v1, v3, Lcrittercism/android/ar;->F:Lcrittercism/android/dn;

    iget-object v1, v3, Lcrittercism/android/ar;->F:Lcrittercism/android/dn;

    if-eqz v1, :cond_0

    iget-object v1, v3, Lcrittercism/android/ar;->F:Lcrittercism/android/dn;

    invoke-virtual {v1}, Lcrittercism/android/dn;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v3, Lcrittercism/android/ar;->F:Lcrittercism/android/dn;

    invoke-virtual {v1}, Lcrittercism/android/dn;->c()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, p0, v1, v2}, Lcrittercism/android/ar;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 135
    :goto_1
    return-object v0

    .line 129
    :catch_0
    move-exception v0

    throw v0

    .line 131
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    move-object v1, v0

    move-object v2, v0

    goto :goto_0
.end method

.method public static generateRateMyAppAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcrittercism/android/ar;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v0

    throw v0

    .line 88
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    .line 92
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOptOutStatus()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 660
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v1

    iget-boolean v2, v1, Lcrittercism/android/ar;->b:Z

    if-nez v2, :cond_0

    const-string v1, "getOptOutStatus"

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 666
    :goto_0
    return v0

    .line 660
    :cond_0
    invoke-virtual {v1}, Lcrittercism/android/ar;->D()Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    throw v0

    .line 663
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getTransactionValue(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 848
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcrittercism/android/ar;->f(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 853
    :goto_0
    return v0

    .line 849
    :catch_0
    move-exception v0

    throw v0

    .line 851
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    .line 853
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;

    .prologue
    .line 166
    const-class v1, Lcom/crittercism/app/Crittercism;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/crittercism/app/CrittercismConfig;

    invoke-direct {v0}, Lcom/crittercism/app/CrittercismConfig;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/crittercism/app/Crittercism;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit v1

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/crittercism/app/CrittercismConfig;

    .prologue
    .line 155
    const-class v6, Lcom/crittercism/app/Crittercism;

    monitor-enter v6

    if-nez p1, :cond_1

    :try_start_0
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcrittercism/android/bf$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 155
    :cond_1
    if-nez p0, :cond_2

    :try_start_1
    const-class v0, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lcrittercism/android/bf$a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crittercism cannot be initialized. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcrittercism/android/bf$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_2
    if-nez p2, :cond_3

    :try_start_3
    const-class v0, Lcom/crittercism/app/CrittercismConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lcrittercism/android/bf$a; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 158
    :catch_1
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 155
    :cond_3
    :try_start_5
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ar;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing Crittercism 5.3.3 for App ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/String;)V

    new-instance v0, Lcrittercism/android/bf;

    invoke-direct {v0, p1}, Lcrittercism/android/bf;-><init>(Ljava/lang/String;)V

    iput-object p1, v3, Lcrittercism/android/ar;->d:Ljava/lang/String;

    new-instance v1, Lcrittercism/android/at;

    invoke-direct {v1, v0, p2}, Lcrittercism/android/at;-><init>(Lcrittercism/android/bf;Lcom/crittercism/app/CrittercismConfig;)V

    iput-object v1, v3, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    iput-object p0, v3, Lcrittercism/android/ar;->c:Landroid/content/Context;

    new-instance v0, Lcrittercism/android/aj;

    iget-object v1, v3, Lcrittercism/android/ar;->c:Landroid/content/Context;

    iget-object v2, v3, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/aj;-><init>(Landroid/content/Context;Lcom/crittercism/app/CrittercismConfig;)V

    iput-object v0, v3, Lcrittercism/android/ar;->v:Lcrittercism/android/aj;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcrittercism/android/ar;->y:Ljava/lang/String;

    new-instance v0, Lcrittercism/android/dl;

    invoke-direct {v0, p0}, Lcrittercism/android/dl;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcrittercism/android/ar;->B:Lcrittercism/android/dl;

    invoke-virtual {v3}, Lcrittercism/android/ar;->C()V

    const-wide v0, 0xdf8475800L

    iget-boolean v2, v3, Lcrittercism/android/ar;->x:Z

    if-eqz v2, :cond_4

    const-wide v0, 0x2cb417800L

    :cond_4
    new-instance v2, Lcrittercism/android/cp;

    invoke-direct {v2, v0, v1}, Lcrittercism/android/cp;-><init>(J)V

    iput-object v2, v3, Lcrittercism/android/ar;->q:Lcrittercism/android/cp;

    invoke-static {}, Lcrittercism/android/ar;->B()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Crittercism should be initialized in onCreate() of MainActivity"

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    :cond_5
    iget-object v0, v3, Lcrittercism/android/ar;->v:Lcrittercism/android/aj;

    invoke-static {v0}, Lcrittercism/android/bp;->a(Lcrittercism/android/aj;)V

    iget-object v0, v3, Lcrittercism/android/ar;->c:Landroid/content/Context;

    invoke-static {v0}, Lcrittercism/android/bp;->a(Landroid/content/Context;)V

    new-instance v0, Lcrittercism/android/bu;

    invoke-direct {v0}, Lcrittercism/android/bu;-><init>()V

    invoke-static {v0}, Lcrittercism/android/bp;->a(Lcrittercism/android/bt;)V

    new-instance v0, Lcrittercism/android/ax;

    iget-object v1, v3, Lcrittercism/android/ar;->c:Landroid/content/Context;

    iget-object v2, v3, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/ax;-><init>(Landroid/content/Context;Lcom/crittercism/app/CrittercismConfig;)V

    invoke-static {v0}, Lcrittercism/android/bp;->a(Lcrittercism/android/ax;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcrittercism/android/ar$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcrittercism/android/ar$a;-><init>(B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_5
    .catch Lcrittercism/android/bf$a; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcrittercism/android/bf$a; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    new-instance v0, Lcrittercism/android/da;

    iget-object v1, v3, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcrittercism/android/da;-><init>(Lcrittercism/android/at;Landroid/content/Context;Lcrittercism/android/am;Lcrittercism/android/an;Lcrittercism/android/ak;)V

    iput-object v0, v3, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    iget-boolean v0, v3, Lcrittercism/android/ar;->x:Z

    if-nez v0, :cond_6

    new-instance v0, Lcrittercism/android/dw;

    iget-object v1, v3, Lcrittercism/android/ar;->u:Ljava/util/concurrent/ExecutorService;

    iget-object v2, v3, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    iget-object v4, v3, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-direct {v0, v3, v1, v2, v4}, Lcrittercism/android/dw;-><init>(Lcrittercism/android/am;Ljava/util/concurrent/ExecutorService;Lcrittercism/android/da;Lcrittercism/android/dq;)V

    invoke-static {v0}, Lcrittercism/android/dr;->a(Lcrittercism/android/dw;)V

    :cond_6
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v1, v0, Lcrittercism/android/aq;

    if-nez v1, :cond_7

    new-instance v1, Lcrittercism/android/aq;

    invoke-direct {v1, v3, v0}, Lcrittercism/android/aq;-><init>(Lcrittercism/android/ar;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_a

    iget-object v0, v3, Lcrittercism/android/ar;->c:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-nez v0, :cond_9

    const-string v0, "Application context not provided. Automatic breadcrumbs will not be recorded."

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    :goto_2
    iget-boolean v0, v3, Lcrittercism/android/ar;->x:Z

    if-nez v0, :cond_8

    invoke-static {v3}, Lcrittercism/android/ay;->b(Lcrittercism/android/ar;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_8

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcrittercism/android/ar$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcrittercism/android/ar$b;-><init>(B)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_8
    new-instance v0, Lcrittercism/android/ds;

    iget-object v1, v3, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    invoke-direct {v0, v1}, Lcrittercism/android/ds;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcrittercism/android/ds;->start()V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcrittercism/android/ar;->b:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v8

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crittercism finished initializing in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dr;->b()V
    :try_end_7
    .catch Lcrittercism/android/bf$a; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 160
    :catch_2
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 155
    :catch_3
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcrittercism/android/dr;->b()V

    iget-object v0, v3, Lcrittercism/android/ar;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcrittercism/android/al;

    iget-object v2, v3, Lcrittercism/android/ar;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcrittercism/android/al;-><init>(Landroid/content/Context;Lcrittercism/android/ar;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_2

    :cond_a
    const-string v0, "API Level is less than 14. Automatic breadcrumbs are not supported."

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/String;)V
    :try_end_9
    .catch Lcrittercism/android/bf$a; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method public static instrumentWebView(Landroid/webkit/WebView;)V
    .locals 4
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 629
    if-nez p0, :cond_1

    :try_start_0
    const-string v0, "WebView was null. Skipping instrumentation."

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v1

    iget-boolean v0, v1, Lcrittercism/android/ar;->b:Z

    if-nez v0, :cond_2

    const-string v0, "instrumentWebView"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    throw v0

    .line 629
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_3

    const-string v0, "Crittercism.instrumentWebView(WebView) not called on the UI thread. Skipping instrumentation"

    invoke-static {v0}, Lcrittercism/android/dr;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 632
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 629
    :cond_3
    :try_start_2
    iget-object v2, v1, Lcrittercism/android/ar;->I:Ljava/util/Set;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v0, v1, Lcrittercism/android/ar;->I:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :try_start_5
    iget-object v0, v1, Lcrittercism/android/ar;->I:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v0, Lcrittercism/android/ap;

    invoke-direct {v0}, Lcrittercism/android/ap;-><init>()V
    :try_end_6
    .catch Lcrittercism/android/cd; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v0, v2, :cond_5

    invoke-static {p0}, Lcrittercism/android/ap;->a(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;
    :try_end_7
    .catch Lcrittercism/android/cd; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/ThreadDeath; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v0

    :goto_1
    :try_start_8
    new-instance v2, Lcrittercism/android/ao;

    iget-object v3, v1, Lcrittercism/android/ar;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcrittercism/android/ao;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/crittercism/app/CritterJSInterface;

    invoke-direct {v0, v1}, Lcom/crittercism/app/CritterJSInterface;-><init>(Lcrittercism/android/ar;)V

    const-string v1, "_crttr"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcrittercism/android/cd;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/ThreadDeath; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :cond_5
    :try_start_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v0, v2, :cond_6

    invoke-static {p0}, Lcrittercism/android/ap;->b(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-static {p0}, Lcrittercism/android/ap;->c(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;
    :try_end_9
    .catch Lcrittercism/android/cd; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/ThreadDeath; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_a
    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    const-string v0, "Failed to find WebViewClient. WebView will not be instrumented."

    invoke-static {v0}, Lcrittercism/android/dr;->b(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/ThreadDeath; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;)V
    .locals 2
    .param p0, "breadcrumb"    # Ljava/lang/String;

    .prologue
    .line 767
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ar;->b:Z

    if-nez v0, :cond_0

    const-string v0, "leaveBreadcrumb"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 773
    :goto_0
    return-void

    .line 767
    :cond_0
    if-nez p0, :cond_1

    const-string v0, "Cannot leave null breadcrumb"

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1}, Lcrittercism/android/dr;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 768
    :catch_0
    move-exception v0

    throw v0

    .line 767
    :cond_1
    :try_start_1
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcrittercism/android/ar;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 770
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logHandledException(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 235
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ar;->b:Z

    if-nez v0, :cond_1

    const-string v0, "logHandledException"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcrittercism/android/ar;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    throw v0

    .line 238
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logNetworkRequest(Ljava/lang/String;Ljava/net/URL;JJJILjava/lang/Exception;)V
    .locals 14
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "responseTime"    # J
    .param p4, "bytesRead"    # J
    .param p6, "bytesSent"    # J
    .param p8, "responseCode"    # I
    .param p9, "error"    # Ljava/lang/Exception;

    .prologue
    .line 329
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v12, v0, p2

    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ar;->b:Z

    if-nez v0, :cond_1

    const-string v0, "logEndpoint"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v1 .. v13}, Lcrittercism/android/ar;->a(Ljava/lang/String;Ljava/net/URL;JJJILjava/lang/Exception;J)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    throw v0

    .line 334
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static performRateMyAppButtonAction(Lcom/crittercism/app/CritterRateMyAppButtons;)V
    .locals 4
    .param p0, "button"    # Lcom/crittercism/app/CritterRateMyAppButtons;

    .prologue
    .line 40
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "User has opted out of crittercism.  performRateMyAppButtonAction exiting."

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    const-string v0, "Rate my app not supported below api level 5"

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    throw v0

    .line 40
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcrittercism/android/ar;->F()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "Cannot create proper URI to open app market.  Returning null."

    invoke-static {v0}, Lcrittercism/android/dr;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 43
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 40
    :cond_2
    :try_start_2
    sget-object v2, Lcrittercism/android/ar$4;->a:[I

    invoke-virtual {p0}, Lcom/crittercism/app/CritterRateMyAppButtons;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_3
    invoke-virtual {v0, v1}, Lcrittercism/android/ar;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    const-string v0, "performRateMyAppButtonAction(CritterRateMyAppButtons.YES) failed.  Email support@crittercism.com."

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    invoke-static {}, Lcrittercism/android/dr;->c()V
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :pswitch_1
    :try_start_5
    invoke-virtual {v0}, Lcrittercism/android/ar;->E()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ThreadDeath; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    const-string v0, "performRateMyAppButtonAction(CritterRateMyAppButtons.NO) failed.  Email support@crittercism.com."

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/ThreadDeath; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static sendAppLoadData()V
    .locals 3

    .prologue
    .line 199
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    if-nez v0, :cond_1

    const-string v0, "sendAppLoadData"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {v0}, Lcom/crittercism/app/CrittercismConfig;->delaySendingAppLoad()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-object v1, v0, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v1}, Lcrittercism/android/at;->delaySendingAppLoad()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "CrittercismConfig instance not set to delay sending app loads."

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    throw v0

    .line 199
    :cond_2
    :try_start_1
    iget-boolean v1, v0, Lcrittercism/android/ar;->x:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcrittercism/android/ar;->H:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcrittercism/android/ar;->H:Z

    new-instance v1, Lcrittercism/android/ar$1;

    invoke-direct {v1, v0}, Lcrittercism/android/ar$1;-><init>(Lcrittercism/android/ar;)V

    iget-object v2, v0, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    invoke-virtual {v2, v1}, Lcrittercism/android/da;->a(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcrittercism/android/ar;->u:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 202
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 199
    :cond_3
    :try_start_2
    const-string v0, "sendAppLoadData() will only send data to Crittercism if \"delaySendingAppLoad\" is set to true in the configuration settings you include in the init call."

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static setMetadata(Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "metadata"    # Lorg/json/JSONObject;

    .prologue
    .line 708
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ar;->b:Z

    if-nez v0, :cond_0

    const-string v0, "setMetadata"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 714
    :goto_0
    return-void

    .line 708
    :cond_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcrittercism/android/ar;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    throw v0

    .line 711
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setOptOutStatus(Z)V
    .locals 3
    .param p0, "isOptedOut"    # Z

    .prologue
    .line 688
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ar;->b:Z

    if-nez v0, :cond_1

    const-string v0, "setOptOutStatus"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    new-instance v1, Lcrittercism/android/de;

    iget-object v2, v0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p0}, Lcrittercism/android/de;-><init>(Landroid/content/Context;Lcrittercism/android/an;Z)V

    iget-object v2, v0, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    invoke-virtual {v2, v1}, Lcrittercism/android/da;->a(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcrittercism/android/ar;->u:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 689
    :catch_0
    move-exception v0

    throw v0

    .line 691
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setTransactionValue(Ljava/lang/String;I)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 834
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcrittercism/android/ar;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 840
    :goto_0
    return-void

    .line 835
    :catch_0
    move-exception v0

    throw v0

    .line 837
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setUsername(Ljava/lang/String;)V
    .locals 2
    .param p0, "username"    # Ljava/lang/String;

    .prologue
    .line 727
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ar;->b:Z

    if-nez v0, :cond_0

    const-string v0, "setUsername"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 733
    :goto_0
    return-void

    .line 727
    :cond_0
    if-nez p0, :cond_1

    const-string v0, "Crittercism.setUsername() given invalid parameter: null"

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    throw v0

    .line 727
    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcrittercism/android/ar;->a(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 730
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 727
    :catch_2
    move-exception v0

    :try_start_4
    const-string v1, "Crittercism.setUsername()"

    invoke-static {v1, v0}, Lcrittercism/android/dr;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method

.method public static updateLocation(Landroid/location/Location;)V
    .locals 2
    .param p0, "curLocation"    # Landroid/location/Location;

    .prologue
    .line 870
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ar;->b:Z

    if-nez v0, :cond_0

    .line 871
    const-string v0, "updateLocation"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 881
    :goto_0
    return-void

    .line 875
    :cond_0
    if-nez p0, :cond_1

    .line 876
    const-string v0, "Cannot leave null location"

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1}, Lcrittercism/android/dr;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 880
    :cond_1
    invoke-static {p0}, Lcrittercism/android/au;->a(Landroid/location/Location;)V

    goto :goto_0
.end method
