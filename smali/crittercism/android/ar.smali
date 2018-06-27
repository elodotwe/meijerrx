.class public final Lcrittercism/android/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/ak;
.implements Lcrittercism/android/am;
.implements Lcrittercism/android/an;
.implements Lcrittercism/android/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/ar$4;,
        Lcrittercism/android/ar$a;,
        Lcrittercism/android/ar$b;
    }
.end annotation


# static fields
.field static a:Lcrittercism/android/ar;


# instance fields
.field protected A:Lcrittercism/android/f;

.field public B:Lcrittercism/android/dl;

.field C:Lcrittercism/android/dp;

.field public D:Lcrittercism/android/ba;

.field E:Ljava/util/Map;

.field public F:Lcrittercism/android/dn;

.field G:I

.field public H:Z

.field public I:Ljava/util/Set;

.field private J:Lcrittercism/android/bk;

.field private K:Lcrittercism/android/bk;

.field public b:Z

.field public c:Landroid/content/Context;

.field public d:Ljava/lang/String;

.field public final e:Landroid/os/ConditionVariable;

.field public final f:Landroid/os/ConditionVariable;

.field public g:Lcrittercism/android/dq;

.field h:Lcrittercism/android/bk;

.field i:Lcrittercism/android/bk;

.field j:Lcrittercism/android/bk;

.field k:Lcrittercism/android/bk;

.field l:Lcrittercism/android/bk;

.field m:Lcrittercism/android/bk;

.field n:Lcrittercism/android/bk;

.field o:Lcrittercism/android/bk;

.field p:Lcrittercism/android/bk;

.field public q:Lcrittercism/android/cp;

.field public r:Lcrittercism/android/da;

.field s:Lcrittercism/android/h;

.field t:Ljava/util/concurrent/ExecutorService;

.field public u:Ljava/util/concurrent/ExecutorService;

.field public v:Lcrittercism/android/aj;

.field w:Z

.field public x:Z

.field public y:Ljava/lang/String;

.field public z:Lcrittercism/android/at;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-boolean v1, p0, Lcrittercism/android/ar;->b:Z

    .line 107
    iput-object v2, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    .line 108
    iput-object v2, p0, Lcrittercism/android/ar;->d:Ljava/lang/String;

    .line 111
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcrittercism/android/ar;->e:Landroid/os/ConditionVariable;

    .line 114
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcrittercism/android/ar;->f:Landroid/os/ConditionVariable;

    .line 116
    new-instance v0, Lcrittercism/android/dq;

    invoke-direct {v0}, Lcrittercism/android/dq;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    .line 129
    iput-object v2, p0, Lcrittercism/android/ar;->q:Lcrittercism/android/cp;

    .line 131
    iput-object v2, p0, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    .line 132
    iput-object v2, p0, Lcrittercism/android/ar;->s:Lcrittercism/android/h;

    .line 135
    new-instance v0, Lcrittercism/android/dt;

    invoke-direct {v0}, Lcrittercism/android/dt;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ar;->t:Ljava/util/concurrent/ExecutorService;

    .line 138
    new-instance v0, Lcrittercism/android/dt;

    invoke-direct {v0}, Lcrittercism/android/dt;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ar;->u:Ljava/util/concurrent/ExecutorService;

    .line 142
    iput-boolean v1, p0, Lcrittercism/android/ar;->w:Z

    .line 143
    iput-boolean v1, p0, Lcrittercism/android/ar;->x:Z

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ar;->y:Ljava/lang/String;

    .line 153
    iput-object v2, p0, Lcrittercism/android/ar;->C:Lcrittercism/android/dp;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ar;->E:Ljava/util/Map;

    .line 157
    iput-object v2, p0, Lcrittercism/android/ar;->F:Lcrittercism/android/dn;

    .line 162
    iput v1, p0, Lcrittercism/android/ar;->G:I

    .line 163
    iput-boolean v1, p0, Lcrittercism/android/ar;->H:Z

    .line 165
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ar;->I:Ljava/util/Set;

    .line 169
    new-instance v0, Lcrittercism/android/f;

    iget-object v1, p0, Lcrittercism/android/ar;->u:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1}, Lcrittercism/android/f;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcrittercism/android/ar;->A:Lcrittercism/android/f;

    .line 170
    return-void
.end method

.method public static A()Lcrittercism/android/ar;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcrittercism/android/ar;

    invoke-direct {v0}, Lcrittercism/android/ar;-><init>()V

    sput-object v0, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    .line 177
    :cond_0
    sget-object v0, Lcrittercism/android/ar;->a:Lcrittercism/android/ar;

    return-object v0
.end method

.method public static B()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    move v0, v1

    .line 243
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 244
    aget-object v3, v2, v0

    .line 245
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onCreate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onResume"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 247
    :cond_0
    const/4 v1, 0x1

    .line 250
    :cond_1
    return v1

    .line 243
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private H()Ljava/lang/String;
    .locals 2

    .prologue
    .line 597
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ar;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/ar;->y:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    :cond_0
    iget-object v0, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ar;->y:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :cond_1
    :goto_0
    iget-object v0, p0, Lcrittercism/android/ar;->y:Ljava/lang/String;

    return-object v0

    .line 602
    :catch_0
    move-exception v0

    const-string v0, "Call to getPackageName() failed.  Please contact us at support@crittercism.com."

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    .line 603
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ar;->y:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final C()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 304
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 305
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 308
    iget-object v0, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 310
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 313
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 314
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v1, v4, :cond_4

    .line 315
    add-int/lit8 v1, v2, 0x1

    :goto_1
    move v2, v1

    .line 317
    goto :goto_0

    .line 319
    :cond_0
    if-gt v2, v7, :cond_2

    .line 320
    iput-boolean v3, p0, Lcrittercism/android/ar;->x:Z

    .line 335
    :cond_1
    :goto_2
    return-void

    .line 324
    :cond_2
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 329
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 330
    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-ne v0, v5, :cond_3

    .line 331
    iput-boolean v7, p0, Lcrittercism/android/ar;->x:Z

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public final D()Z
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcrittercism/android/ar;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 1236
    iget-object v0, p0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    return v0
.end method

.method public final E()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 1259
    iget-object v0, p0, Lcrittercism/android/ar;->F:Lcrittercism/android/dn;

    .line 1261
    iget-object v0, p0, Lcrittercism/android/ar;->F:Lcrittercism/android/dn;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcrittercism/android/ar;->F:Lcrittercism/android/dn;

    invoke-virtual {v0}, Lcrittercism/android/dn;->d()V

    .line 1264
    :cond_0
    return-void
.end method

.method public final F()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 1297
    iget-object v0, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1298
    invoke-direct {p0}, Lcrittercism/android/ar;->H()Ljava/lang/String;

    move-result-object v2

    .line 1299
    const/4 v0, 0x0

    .line 1300
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1301
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1302
    invoke-static {v0}, Lcrittercism/android/dj;->a(Ljava/lang/String;)Lcrittercism/android/dh;

    move-result-object v0

    .line 1303
    if-eqz v0, :cond_1

    .line 1304
    invoke-interface {v0, v2}, Lcrittercism/android/dh;->a(Ljava/lang/String;)Lcrittercism/android/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/dg;->a()Ljava/lang/String;

    move-result-object v0

    .line 1310
    :cond_0
    :goto_0
    return-object v0

    .line 1306
    :cond_1
    const-string v0, "Could not find app market for this app.  Will try rate-my-app test target in config."

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v0}, Lcrittercism/android/at;->getRateMyAppTestTarget()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 1463
    iget-boolean v0, p0, Lcrittercism/android/ar;->x:Z

    if-eqz v0, :cond_1

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    new-instance v0, Lcrittercism/android/ar$3;

    invoke-direct {v0, p0, p0}, Lcrittercism/android/ar$3;-><init>(Lcrittercism/android/ar;Lcrittercism/android/ar;)V

    .line 1489
    iget-object v1, p0, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    invoke-virtual {v1, v0}, Lcrittercism/android/da;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1490
    iget-object v1, p0, Lcrittercism/android/ar;->t:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1369
    iget-object v2, p0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v2}, Lcrittercism/android/dq;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "User has opted out of crittercism.  generateRateMyAppAlertDialog returning null."

    invoke-static {v2}, Lcrittercism/android/dr;->b(Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_5

    .line 1420
    :goto_1
    return-object v0

    .line 1369
    :cond_0
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_1

    const-string v2, "Context object must be an instance of Activity for AlertDialog to form correctly.  generateRateMyAppAlertDialog returning null."

    invoke-static {v2}, Lcrittercism/android/dr;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "Message has to be a non-empty string.  generateRateMyAppAlertDialog returning null."

    invoke-static {v2}, Lcrittercism/android/dr;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_4

    const-string v2, "Rate my app not supported below api level 5"

    invoke-static {v2}, Lcrittercism/android/dr;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 1373
    :cond_5
    invoke-virtual {p0}, Lcrittercism/android/ar;->F()Ljava/lang/String;

    move-result-object v1

    .line 1374
    if-nez v1, :cond_6

    .line 1375
    const-string v1, "Cannot create proper URI to open app market.  Returning null."

    invoke-static {v1}, Lcrittercism/android/dr;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 1379
    :cond_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1380
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1383
    :try_start_0
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1391
    const/4 v2, -0x1

    const-string v3, "Yes"

    new-instance v4, Lcrittercism/android/ar$10;

    invoke-direct {v4, p0, v1}, Lcrittercism/android/ar$10;-><init>(Lcrittercism/android/ar;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1401
    const/4 v1, -0x2

    const-string v2, "No"

    new-instance v3, Lcrittercism/android/ar$11;

    invoke-direct {v3, p0}, Lcrittercism/android/ar$11;-><init>(Lcrittercism/android/ar;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1411
    const/4 v1, -0x3

    const-string v2, "Maybe Later"

    new-instance v3, Lcrittercism/android/ar$12;

    invoke-direct {v3, p0}, Lcrittercism/android/ar$12;-><init>(Lcrittercism/android/ar;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 1387
    :catch_0
    move-exception v1

    const-string v1, "Failed to create AlertDialog instance from AlertDialog.Builder.  Did you remember to call Looper.prepare() before calling Crittercism.generateRateMyAppAlertDialog()?"

    invoke-static {v1}, Lcrittercism/android/dr;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcrittercism/android/ar;->d:Ljava/lang/String;

    .line 869
    if-nez v0, :cond_0

    .line 870
    const-string v0, ""

    .line 873
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1061
    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1064
    if-eqz v1, :cond_0

    .line 1065
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1068
    :cond_0
    return-object v0
.end method

.method public final a(Lcrittercism/android/az;)V
    .locals 3

    .prologue
    .line 1085
    iget-object v0, p0, Lcrittercism/android/ar;->D:Lcrittercism/android/ba;

    .line 1086
    iget-object v0, p0, Lcrittercism/android/ar;->D:Lcrittercism/android/ba;

    if-nez v0, :cond_1

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    invoke-static {p1}, Lcrittercism/android/ay;->a(Lcrittercism/android/az;)V

    .line 1091
    invoke-static {}, Lcrittercism/android/ay;->j()V

    .line 1093
    iget-boolean v0, p1, Lcrittercism/android/az;->a:Z

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcrittercism/android/ar;->D:Lcrittercism/android/ba;

    iget v1, p1, Lcrittercism/android/az;->b:I

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lcrittercism/android/ba;->a(ILjava/util/concurrent/TimeUnit;)V

    .line 1095
    iget-object v0, p0, Lcrittercism/android/ar;->D:Lcrittercism/android/ba;

    invoke-virtual {v0}, Lcrittercism/android/ba;->b()V

    goto :goto_0
.end method

.method public final a(Lcrittercism/android/ca;)V
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    new-instance v0, Lcrittercism/android/ar$9;

    invoke-direct {v0, p0, p1}, Lcrittercism/android/ar$9;-><init>(Lcrittercism/android/ar;Lcrittercism/android/ca;)V

    .line 856
    iget-object v1, p0, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    invoke-virtual {v1, v0}, Lcrittercism/android/da;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 857
    iget-object v1, p0, Lcrittercism/android/ar;->u:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcrittercism/android/d;)V
    .locals 2

    .prologue
    .line 833
    new-instance v0, Lcrittercism/android/ar$8;

    invoke-direct {v0, p0, p1}, Lcrittercism/android/ar$8;-><init>(Lcrittercism/android/ar;Lcrittercism/android/d;)V

    .line 839
    iget-object v1, p0, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    invoke-virtual {v1, v0}, Lcrittercism/android/da;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 840
    iget-object v1, p0, Lcrittercism/android/ar;->u:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 842
    :cond_0
    return-void
.end method

.method public final a(Lcrittercism/android/i;)V
    .locals 3

    .prologue
    .line 1117
    iget-object v0, p0, Lcrittercism/android/ar;->s:Lcrittercism/android/h;

    if-nez v0, :cond_1

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    iget-boolean v0, p1, Lcrittercism/android/i;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcrittercism/android/i;->c:Z

    if-nez v0, :cond_0

    .line 1122
    const-string v0, "Enabling OPTMZ"

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lcrittercism/android/ar;->s:Lcrittercism/android/h;

    iget v1, p1, Lcrittercism/android/i;->d:I

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lcrittercism/android/h;->a(ILjava/util/concurrent/TimeUnit;)V

    .line 1124
    iget-object v0, p0, Lcrittercism/android/ar;->s:Lcrittercism/android/h;

    invoke-virtual {v0}, Lcrittercism/android/h;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 813
    iget-object v0, p0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    new-instance v0, Lcrittercism/android/bx;

    sget-object v1, Lcrittercism/android/bx$a;->a:Lcrittercism/android/bx$a;

    invoke-direct {v0, p1, v1}, Lcrittercism/android/bx;-><init>(Ljava/lang/String;Lcrittercism/android/bx$a;)V

    .line 819
    new-instance v1, Lcrittercism/android/ar$7;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/ar$7;-><init>(Lcrittercism/android/ar;Lcrittercism/android/bx;)V

    .line 826
    iget-object v0, p0, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    invoke-virtual {v0, v1}, Lcrittercism/android/da;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SENDING "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " TO EXECUTOR"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dr;->b()V

    .line 828
    iget-object v0, p0, Lcrittercism/android/ar;->u:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1579
    iget-boolean v0, p0, Lcrittercism/android/ar;->x:Z

    if-eqz v0, :cond_0

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transactions are not supported for services. Ignoring Crittercism.setTransactionValue() call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    .line 1590
    :goto_0
    return-void

    .line 1585
    :cond_0
    iget-object v1, p0, Lcrittercism/android/ar;->E:Ljava/util/Map;

    monitor-enter v1

    .line 1586
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ar;->E:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/app/Transaction;

    .line 1587
    if-eqz v0, :cond_1

    .line 1588
    invoke-virtual {v0, p2}, Lcom/crittercism/app/Transaction;->a(I)V

    .line 1590
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1146
    iget-object v0, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1147
    if-eqz v0, :cond_0

    .line 1148
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1149
    if-eqz v0, :cond_0

    .line 1150
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1151
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1155
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1074
    if-eqz v0, :cond_0

    .line 1075
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1076
    if-eqz v0, :cond_0

    .line 1077
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1078
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1079
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1082
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/net/URL;JJJILjava/lang/Exception;J)V
    .locals 7

    .prologue
    .line 440
    if-nez p1, :cond_0

    .line 442
    const-string v2, "Null HTTP request method provided. Endpoint will not be logged."

    invoke-static {v2}, Lcrittercism/android/dr;->b(Ljava/lang/String;)V

    .line 529
    :goto_0
    return-void

    .line 445
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 446
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 447
    const-string v4, "GET"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 448
    const-string v4, "POST"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 449
    const-string v4, "HEAD"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 450
    const-string v4, "PUT"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 451
    const-string v4, "DELETE"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 452
    const-string v4, "TRACE"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 453
    const-string v4, "OPTIONS"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 454
    const-string v4, "CONNECT"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 455
    const-string v4, "PATCH"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Logging endpoint with invalid HTTP request method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    .line 462
    :cond_1
    if-nez p2, :cond_2

    .line 463
    const-string v2, "Null URL provided. Endpoint will not be logged"

    invoke-static {v2}, Lcrittercism/android/dr;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v3, p5, v4

    if-ltz v3, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v3, p7, v4

    if-gez v3, :cond_4

    .line 468
    :cond_3
    const-string v2, "Invalid byte values. Bytes need to be non-negative. Endpoint will not be logged."

    invoke-static {v2}, Lcrittercism/android/dr;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_4
    if-eqz p9, :cond_7

    .line 473
    const/16 v3, 0x64

    move/from16 v0, p9

    if-lt v0, v3, :cond_5

    const/16 v3, 0x258

    move/from16 v0, p9

    if-lt v0, v3, :cond_6

    .line 474
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Logging endpoint with invalid HTTP response code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    .line 481
    :cond_6
    :goto_1
    new-instance v3, Lcrittercism/android/e;

    iget-object v4, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcrittercism/android/e;-><init>(Landroid/content/Context;)V

    .line 488
    invoke-virtual {v3}, Lcrittercism/android/e;->a()Lcrittercism/android/b;

    move-result-object v3

    .line 489
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-gez v4, :cond_8

    .line 496
    const-string v2, "Invalid latency. Endpoint will not be logged."

    invoke-static {v2}, Lcrittercism/android/dr;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :cond_7
    if-nez p10, :cond_6

    .line 478
    const-string v3, "Logging endpoint with null error and response code of 0."

    invoke-static {v3}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 502
    :cond_8
    const-wide/16 v4, 0x0

    cmp-long v4, p11, v4

    if-gez v4, :cond_9

    .line 503
    const-string v2, "Invalid start time. Endpoint will not be logged."

    invoke-static {v2}, Lcrittercism/android/dr;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 507
    :cond_9
    new-instance v4, Lcrittercism/android/d;

    invoke-direct {v4}, Lcrittercism/android/d;-><init>()V

    .line 508
    iput-object v2, v4, Lcrittercism/android/d;->h:Ljava/lang/String;

    .line 509
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcrittercism/android/d;->a(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v4, p5, p6}, Lcrittercism/android/d;->a(J)V

    .line 511
    invoke-virtual {v4, p7, p8}, Lcrittercism/android/d;->b(J)V

    .line 512
    move/from16 v0, p9

    iput v0, v4, Lcrittercism/android/d;->g:I

    .line 513
    iput-object v3, v4, Lcrittercism/android/d;->l:Lcrittercism/android/b;

    .line 514
    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Lcrittercism/android/d;->c(J)V

    .line 515
    add-long v2, p11, p3

    iput-wide v2, v4, Lcrittercism/android/d;->b:J

    const/4 v2, 0x1

    iput-boolean v2, v4, Lcrittercism/android/d;->c:Z

    .line 517
    invoke-static {}, Lcrittercism/android/au;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 521
    invoke-static {}, Lcrittercism/android/au;->a()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcrittercism/android/d;->a(Landroid/location/Location;)V

    .line 525
    :cond_a
    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Lcrittercism/android/d;->a(Ljava/lang/Throwable;)V

    .line 526
    iget-object v2, p0, Lcrittercism/android/ar;->A:Lcrittercism/android/f;

    sget-object v3, Lcrittercism/android/d$a;->l:Lcrittercism/android/d$a;

    invoke-virtual {v2, v4, v3}, Lcrittercism/android/f;->a(Lcrittercism/android/d;Lcrittercism/android/d$a;)V

    goto/16 :goto_0
.end method

.method final a(Ljava/lang/Throwable;)V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 372
    instance-of v0, p1, Lcrittercism/android/cj;

    invoke-static {p0, v0}, Lcrittercism/android/ay;->a(Lcrittercism/android/ar;Z)Ljava/util/List;

    move-result-object v2

    .line 374
    new-instance v3, Lcrittercism/android/bc;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-direct {v3, p1, v0, v1}, Lcrittercism/android/bc;-><init>(Ljava/lang/Throwable;J)V

    .line 375
    const-string v0, "crashed_session"

    iget-object v1, p0, Lcrittercism/android/ar;->l:Lcrittercism/android/bk;

    invoke-virtual {v3, v0, v1}, Lcrittercism/android/bc;->a(Ljava/lang/String;Lcrittercism/android/bk;)V

    .line 377
    iget-object v0, p0, Lcrittercism/android/ar;->K:Lcrittercism/android/bk;

    invoke-virtual {v0}, Lcrittercism/android/bk;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 378
    const-string v0, "previous_session"

    iget-object v1, p0, Lcrittercism/android/ar;->K:Lcrittercism/android/bk;

    invoke-virtual {v3, v0, v1}, Lcrittercism/android/bc;->a(Ljava/lang/String;Lcrittercism/android/bk;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcrittercism/android/ar;->m:Lcrittercism/android/bk;

    invoke-virtual {v3, v0}, Lcrittercism/android/bc;->a(Lcrittercism/android/bk;)V

    .line 382
    iget-object v0, p0, Lcrittercism/android/ar;->n:Lcrittercism/android/bk;

    invoke-virtual {v3, v0}, Lcrittercism/android/bc;->b(Lcrittercism/android/bk;)V

    .line 383
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, v3, Lcrittercism/android/bc;->d:Lorg/json/JSONArray;

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    iget-wide v10, v3, Lcrittercism/android/bc;->a:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    const-string v7, "name"

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "id"

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "state"

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stacktrace"

    new-instance v7, Lorg/json/JSONArray;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcrittercism/android/bc;->d:Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 384
    :cond_2
    invoke-virtual {v3, v2}, Lcrittercism/android/bc;->a(Ljava/util/List;)V

    .line 385
    iget-object v0, p0, Lcrittercism/android/ar;->k:Lcrittercism/android/bk;

    invoke-virtual {v0, v3}, Lcrittercism/android/bk;->a(Lcrittercism/android/bz;)Z

    .line 387
    new-instance v0, Lcrittercism/android/cz;

    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcrittercism/android/cz;-><init>(Landroid/content/Context;)V

    .line 388
    iget-object v1, p0, Lcrittercism/android/ar;->h:Lcrittercism/android/bk;

    new-instance v2, Lcrittercism/android/cu$a;

    invoke-direct {v2}, Lcrittercism/android/cu$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v3}, Lcrittercism/android/at;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/v0/appload"

    new-instance v7, Lcrittercism/android/cm$b;

    invoke-direct {v7}, Lcrittercism/android/cm$b;-><init>()V

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/cz;->a(Lcrittercism/android/bk;Lcrittercism/android/ct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/ak;Lcrittercism/android/cr;)V

    .line 397
    iget-object v1, p0, Lcrittercism/android/ar;->i:Lcrittercism/android/bk;

    new-instance v2, Lcrittercism/android/cu$a;

    invoke-direct {v2}, Lcrittercism/android/cu$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v3}, Lcrittercism/android/at;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_exceptions"

    new-instance v7, Lcrittercism/android/co$a;

    invoke-direct {v7}, Lcrittercism/android/co$a;-><init>()V

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/cz;->a(Lcrittercism/android/bk;Lcrittercism/android/ct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/ak;Lcrittercism/android/cr;)V

    .line 406
    iget-object v1, p0, Lcrittercism/android/ar;->j:Lcrittercism/android/bk;

    new-instance v2, Lcrittercism/android/cu$a;

    invoke-direct {v2}, Lcrittercism/android/cu$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v3}, Lcrittercism/android/at;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_ndk_crashes"

    new-instance v7, Lcrittercism/android/co$a;

    invoke-direct {v7}, Lcrittercism/android/co$a;-><init>()V

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/cz;->a(Lcrittercism/android/bk;Lcrittercism/android/ct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/ak;Lcrittercism/android/cr;)V

    .line 415
    iget-object v1, p0, Lcrittercism/android/ar;->k:Lcrittercism/android/bk;

    new-instance v2, Lcrittercism/android/cu$a;

    invoke-direct {v2}, Lcrittercism/android/cu$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ar;->z:Lcrittercism/android/at;

    invoke-virtual {v3}, Lcrittercism/android/at;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_crashes"

    new-instance v7, Lcrittercism/android/co$a;

    invoke-direct {v7}, Lcrittercism/android/co$a;-><init>()V

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/cz;->a(Lcrittercism/android/bk;Lcrittercism/android/ct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/ak;Lcrittercism/android/cr;)V

    .line 425
    :try_start_0
    invoke-virtual {v0}, Lcrittercism/android/cz;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 434
    :goto_1
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InterruptedException in logCrashException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dr;->b()V

    .line 428
    invoke-static {}, Lcrittercism/android/dr;->c()V

    goto :goto_1

    .line 430
    :catch_1
    move-exception v0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected throwable in logCrashException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dr;->b()V

    .line 432
    invoke-static {}, Lcrittercism/android/dr;->c()V

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 1434
    iget-boolean v0, p0, Lcrittercism/android/ar;->x:Z

    if-eqz v0, :cond_1

    .line 1460
    :cond_0
    :goto_0
    return-void

    .line 1440
    :cond_1
    new-instance v0, Lcrittercism/android/ar$2;

    invoke-direct {v0, p0, p0, p1}, Lcrittercism/android/ar$2;-><init>(Lcrittercism/android/ar;Lcrittercism/android/ar;Lorg/json/JSONObject;)V

    .line 1456
    iget-object v1, p0, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    invoke-virtual {v1, v0}, Lcrittercism/android/da;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1457
    iget-object v1, p0, Lcrittercism/android/ar;->u:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1135
    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1138
    if-eqz v1, :cond_0

    .line 1139
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1142
    :cond_0
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcrittercism/android/ar;->v:Lcrittercism/android/aj;

    iget-object v0, v0, Lcrittercism/android/aj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 1245
    iget-object v0, p0, Lcrittercism/android/ar;->F:Lcrittercism/android/dn;

    .line 1247
    iget-object v0, p0, Lcrittercism/android/ar;->F:Lcrittercism/android/dn;

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcrittercism/android/ar;->F:Lcrittercism/android/dn;

    invoke-virtual {v0}, Lcrittercism/android/dn;->d()V

    .line 1251
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1252
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1253
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1254
    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1255
    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 689
    monitor-enter p0

    if-nez p1, :cond_1

    .line 690
    :try_start_0
    const-string v0, "Calling logHandledException with a null java.lang.Throwable. Nothing will be reported to Crittercism"

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 694
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcrittercism/android/ar;->x:Z

    if-eqz v0, :cond_2

    .line 695
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    new-instance v2, Lcrittercism/android/ar$5;

    invoke-direct {v2, p0, p1, v0, v1}, Lcrittercism/android/ar$5;-><init>(Lcrittercism/android/ar;Ljava/lang/Throwable;J)V

    iget-object v0, p0, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    invoke-virtual {v0, v2}, Lcrittercism/android/da;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/ar;->u:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 697
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    new-instance v2, Lcrittercism/android/ar$6;

    invoke-direct {v2, p0, p1, v0, v1}, Lcrittercism/android/ar$6;-><init>(Lcrittercism/android/ar;Ljava/lang/Throwable;J)V

    iget-object v0, p0, Lcrittercism/android/ar;->r:Lcrittercism/android/da;

    invoke-virtual {v0, v2}, Lcrittercism/android/da;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/ar;->u:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 879
    const-string v0, ""

    .line 881
    iget-object v1, p0, Lcrittercism/android/ar;->B:Lcrittercism/android/dl;

    if-eqz v1, :cond_0

    .line 882
    iget-object v0, p0, Lcrittercism/android/ar;->B:Lcrittercism/android/dl;

    invoke-virtual {v0}, Lcrittercism/android/dl;->a()Ljava/lang/String;

    move-result-object v0

    .line 885
    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1510
    iget-boolean v0, p0, Lcrittercism/android/ar;->x:Z

    if-eqz v0, :cond_1

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transactions are not supported for services. Ignoring Crittercism.beginTransaction() call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    .line 1539
    :cond_0
    :goto_0
    return-void

    .line 1519
    :cond_1
    invoke-static {p1}, Lcom/crittercism/app/Transaction;->a(Ljava/lang/String;)Lcom/crittercism/app/Transaction;

    move-result-object v1

    .line 1520
    instance-of v0, v1, Lcrittercism/android/ay;

    if-eqz v0, :cond_0

    .line 1522
    iget-object v2, p0, Lcrittercism/android/ar;->E:Ljava/util/Map;

    monitor-enter v2

    .line 1523
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ar;->E:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/app/Transaction;

    .line 1524
    if-eqz v0, :cond_2

    .line 1525
    check-cast v0, Lcrittercism/android/ay;

    .line 1526
    invoke-virtual {v0}, Lcrittercism/android/ay;->i()V

    .line 1529
    :cond_2
    iget-object v0, p0, Lcrittercism/android/ar;->E:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v3, 0x32

    if-le v0, v3, :cond_3

    .line 1530
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Crittercism only supports a maximum of 50 concurrent transactions. Ignoring Crittercism.beginTransaction() call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    .line 1532
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1537
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 1535
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcrittercism/android/ar;->E:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    invoke-virtual {v1}, Lcom/crittercism/app/Transaction;->a()V

    .line 1537
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1158
    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1161
    if-eqz v1, :cond_0

    .line 1162
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1165
    :cond_0
    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1210
    const-string v0, "5.3.3"

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1543
    iget-boolean v0, p0, Lcrittercism/android/ar;->x:Z

    if-eqz v0, :cond_1

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transactions are not supported for services. Ignoring Crittercism.endTransaction() call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1550
    :cond_1
    iget-object v1, p0, Lcrittercism/android/ar;->E:Ljava/util/Map;

    monitor-enter v1

    .line 1551
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ar;->E:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/app/Transaction;

    .line 1552
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1554
    if-eqz v0, :cond_0

    .line 1555
    invoke-virtual {v0}, Lcom/crittercism/app/Transaction;->b()V

    goto :goto_0

    .line 1552
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 914
    const/4 v0, -0x1

    .line 915
    iget-object v1, p0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    if-eqz v1, :cond_0

    .line 916
    iget-object v0, p0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->a()Lcrittercism/android/do;

    move-result-object v0

    iget v0, v0, Lcrittercism/android/do;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 918
    :cond_0
    return v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1561
    iget-boolean v0, p0, Lcrittercism/android/ar;->x:Z

    if-eqz v0, :cond_1

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transactions are not supported for services. Ignoring Crittercism.failTransaction() call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    .line 1575
    :cond_0
    :goto_0
    return-void

    .line 1568
    :cond_1
    iget-object v1, p0, Lcrittercism/android/ar;->E:Ljava/util/Map;

    monitor-enter v1

    .line 1569
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ar;->E:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/app/Transaction;

    .line 1570
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    if-eqz v0, :cond_0

    .line 1573
    invoke-virtual {v0}, Lcom/crittercism/app/Transaction;->c()V

    goto :goto_0

    .line 1570
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1594
    .line 1596
    iget-boolean v0, p0, Lcrittercism/android/ar;->x:Z

    if-eqz v0, :cond_0

    .line 1597
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Transactions are not supported for services. Returning default value of -1 for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    move v0, v1

    .line 1608
    :goto_0
    return v0

    .line 1602
    :cond_0
    iget-object v2, p0, Lcrittercism/android/ar;->E:Ljava/util/Map;

    monitor-enter v2

    .line 1603
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ar;->E:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/app/Transaction;

    .line 1604
    if-eqz v0, :cond_1

    .line 1605
    invoke-virtual {v0}, Lcom/crittercism/app/Transaction;->d()I

    move-result v0

    .line 1607
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 895
    new-instance v0, Lcrittercism/android/bp$f;

    invoke-direct {v0}, Lcrittercism/android/bp$f;-><init>()V

    iget-object v0, v0, Lcrittercism/android/bp$f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 900
    new-instance v0, Lcrittercism/android/bp$o;

    invoke-direct {v0}, Lcrittercism/android/bp$o;-><init>()V

    iget-object v0, v0, Lcrittercism/android/bp$o;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 905
    new-instance v0, Lcrittercism/android/bp$p;

    invoke-direct {v0}, Lcrittercism/android/bp$p;-><init>()V

    iget-object v0, v0, Lcrittercism/android/bp$p;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1215
    const-string v0, "Android"

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1220
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1225
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lcrittercism/android/dq;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    return-object v0
.end method

.method public final m()Lcrittercism/android/dn;
    .locals 1

    .prologue
    .line 1652
    iget-object v0, p0, Lcrittercism/android/ar;->F:Lcrittercism/android/dn;

    return-object v0
.end method

.method public final n()Lcrittercism/android/bk;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcrittercism/android/ar;->h:Lcrittercism/android/bk;

    return-object v0
.end method

.method public final o()Lcrittercism/android/bk;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcrittercism/android/ar;->i:Lcrittercism/android/bk;

    return-object v0
.end method

.method public final p()Lcrittercism/android/bk;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcrittercism/android/ar;->J:Lcrittercism/android/bk;

    return-object v0
.end method

.method public final q()Lcrittercism/android/bk;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcrittercism/android/ar;->j:Lcrittercism/android/bk;

    return-object v0
.end method

.method public final r()Lcrittercism/android/bk;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcrittercism/android/ar;->k:Lcrittercism/android/bk;

    return-object v0
.end method

.method public final s()Lcrittercism/android/bk;
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcrittercism/android/ar;->l:Lcrittercism/android/bk;

    return-object v0
.end method

.method public final t()Lcrittercism/android/bk;
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcrittercism/android/ar;->m:Lcrittercism/android/bk;

    return-object v0
.end method

.method public final u()Lcrittercism/android/bk;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcrittercism/android/ar;->K:Lcrittercism/android/bk;

    return-object v0
.end method

.method public final v()Lcrittercism/android/bk;
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lcrittercism/android/ar;->n:Lcrittercism/android/bk;

    return-object v0
.end method

.method public final w()Lcrittercism/android/bk;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcrittercism/android/ar;->o:Lcrittercism/android/bk;

    return-object v0
.end method

.method public final x()Lcrittercism/android/bk;
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcrittercism/android/ar;->p:Lcrittercism/android/bk;

    return-object v0
.end method

.method public final y()Lcrittercism/android/dp;
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcrittercism/android/ar;->C:Lcrittercism/android/dp;

    return-object v0
.end method

.method public final z()V
    .locals 3

    .prologue
    .line 925
    iget-boolean v0, p0, Lcrittercism/android/ar;->x:Z

    if-eqz v0, :cond_1

    .line 926
    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->f:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Landroid/content/Context;)Lcrittercism/android/bk;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ar;->l:Lcrittercism/android/bk;

    .line 933
    :goto_0
    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->h:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    iput-object v0, p0, Lcrittercism/android/ar;->K:Lcrittercism/android/bk;

    .line 934
    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->g:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    iput-object v0, p0, Lcrittercism/android/ar;->m:Lcrittercism/android/bk;

    .line 935
    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->k:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    iput-object v0, p0, Lcrittercism/android/ar;->n:Lcrittercism/android/bk;

    .line 937
    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->a:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    iput-object v0, p0, Lcrittercism/android/ar;->h:Lcrittercism/android/bk;

    .line 938
    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->b:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    iput-object v0, p0, Lcrittercism/android/ar;->i:Lcrittercism/android/bk;

    .line 939
    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->c:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    iput-object v0, p0, Lcrittercism/android/ar;->J:Lcrittercism/android/bk;

    .line 940
    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->d:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    iput-object v0, p0, Lcrittercism/android/ar;->j:Lcrittercism/android/bk;

    .line 941
    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->e:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    iput-object v0, p0, Lcrittercism/android/ar;->k:Lcrittercism/android/bk;

    .line 942
    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->i:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    iput-object v0, p0, Lcrittercism/android/ar;->o:Lcrittercism/android/bk;

    .line 943
    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->j:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    iput-object v0, p0, Lcrittercism/android/ar;->p:Lcrittercism/android/bk;

    .line 944
    iget-boolean v0, p0, Lcrittercism/android/ar;->x:Z

    if-nez v0, :cond_0

    .line 945
    new-instance v0, Lcrittercism/android/dp;

    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    iget-object v2, p0, Lcrittercism/android/ar;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/dp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcrittercism/android/ar;->C:Lcrittercism/android/dp;

    .line 947
    :cond_0
    return-void

    .line 930
    :cond_1
    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ar;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->f:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    iput-object v0, p0, Lcrittercism/android/ar;->l:Lcrittercism/android/bk;

    goto/16 :goto_0
.end method
