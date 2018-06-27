.class public final Lcrittercism/android/da;
.super Lcrittercism/android/dc;


# instance fields
.field public a:Landroid/os/ConditionVariable;

.field public b:Lcrittercism/android/be;

.field private c:Landroid/os/ConditionVariable;

.field private d:Lcrittercism/android/at;

.field private e:Landroid/content/Context;

.field private f:Lcrittercism/android/am;

.field private g:Lcrittercism/android/an;

.field private h:Lcrittercism/android/ak;

.field private i:Ljava/util/List;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcrittercism/android/at;Landroid/content/Context;Lcrittercism/android/am;Lcrittercism/android/an;Lcrittercism/android/ak;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcrittercism/android/dc;-><init>()V

    .line 47
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcrittercism/android/da;->c:Landroid/os/ConditionVariable;

    .line 48
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcrittercism/android/da;->a:Landroid/os/ConditionVariable;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/da;->i:Ljava/util/List;

    .line 55
    iput-boolean v1, p0, Lcrittercism/android/da;->j:Z

    .line 57
    iput-object v2, p0, Lcrittercism/android/da;->b:Lcrittercism/android/be;

    .line 59
    iput-object v2, p0, Lcrittercism/android/da;->l:Ljava/lang/Exception;

    .line 67
    iput-object p1, p0, Lcrittercism/android/da;->d:Lcrittercism/android/at;

    .line 74
    iput-object p2, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    .line 75
    iput-object p3, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    .line 76
    iput-object p4, p0, Lcrittercism/android/da;->g:Lcrittercism/android/an;

    .line 77
    iput-object p5, p0, Lcrittercism/android/da;->h:Lcrittercism/android/ak;

    .line 78
    iput-boolean v1, p0, Lcrittercism/android/da;->k:Z

    .line 79
    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 7

    .prologue
    .line 213
    iget-boolean v0, p0, Lcrittercism/android/da;->k:Z

    .line 214
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    .line 216
    iget-boolean v1, v0, Lcrittercism/android/ar;->x:Z

    if-eqz v1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 220
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 221
    :cond_1
    iget-object v1, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    .line 223
    iget-object v1, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v1}, Lcrittercism/android/am;->s()Lcrittercism/android/bk;

    move-result-object v2

    .line 224
    iget-object v1, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v1}, Lcrittercism/android/am;->t()Lcrittercism/android/bk;

    move-result-object v4

    .line 225
    iget-object v1, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v1}, Lcrittercism/android/am;->u()Lcrittercism/android/bk;

    move-result-object v3

    .line 226
    iget-object v1, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v1}, Lcrittercism/android/am;->v()Lcrittercism/android/bk;

    move-result-object v5

    .line 228
    iget-object v1, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v1}, Lcrittercism/android/am;->q()Lcrittercism/android/bk;

    move-result-object v6

    .line 230
    if-eqz p1, :cond_2

    .line 237
    const/4 v1, 0x1

    sput-boolean v1, Lcrittercism/android/dk;->a:Z

    .line 240
    iget-object v0, v0, Lcrittercism/android/ar;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 241
    new-instance v0, Lcrittercism/android/bv;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcrittercism/android/bv;-><init>(Ljava/io/File;Lcrittercism/android/bk;Lcrittercism/android/bk;Lcrittercism/android/bk;Lcrittercism/android/bk;)V

    .line 243
    invoke-virtual {v6, v0}, Lcrittercism/android/bk;->a(Lcrittercism/android/bz;)Z

    .line 244
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 248
    iget-object v0, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v0}, Lcrittercism/android/am;->w()Lcrittercism/android/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/bk;->a()V

    .line 255
    :goto_1
    invoke-virtual {v3}, Lcrittercism/android/bk;->a()V

    .line 256
    invoke-virtual {v4}, Lcrittercism/android/bk;->a()V

    .line 257
    invoke-virtual {v5}, Lcrittercism/android/bk;->a()V

    .line 258
    invoke-virtual {v2, v3}, Lcrittercism/android/bk;->a(Lcrittercism/android/bk;)V

    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, v0, Lcrittercism/android/ar;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 252
    iget-object v0, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-static {v0}, Lcrittercism/android/ay;->a(Lcrittercism/android/am;)V

    goto :goto_1
.end method

.method private declared-synchronized c()V
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcrittercism/android/da;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Z
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcrittercism/android/da;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()Ljava/io/File;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcrittercism/android/da;->d:Lcrittercism/android/at;

    invoke-virtual {v3}, Lcrittercism/android/at;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 107
    if-eqz v2, :cond_0

    .line 108
    array-length v3, v2

    if-ne v3, v4, :cond_2

    .line 109
    aget-object v1, v2, v1

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 112
    :cond_2
    array-length v3, v2

    if-le v3, v4, :cond_0

    .line 113
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 114
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 115
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private f()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 284
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ar;->x:Z

    if-eqz v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-boolean v0, p0, Lcrittercism/android/da;->k:Z

    .line 289
    iget-object v0, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v0}, Lcrittercism/android/am;->n()Lcrittercism/android/bk;

    move-result-object v1

    .line 290
    iget-object v0, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v0}, Lcrittercism/android/am;->o()Lcrittercism/android/bk;

    move-result-object v8

    .line 291
    iget-object v0, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v0}, Lcrittercism/android/am;->p()Lcrittercism/android/bk;

    move-result-object v9

    .line 292
    iget-object v0, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v0}, Lcrittercism/android/am;->q()Lcrittercism/android/bk;

    move-result-object v10

    .line 293
    iget-object v0, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v0}, Lcrittercism/android/am;->r()Lcrittercism/android/bk;

    move-result-object v11

    .line 294
    iget-object v0, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v0}, Lcrittercism/android/am;->y()Lcrittercism/android/dp;

    move-result-object v12

    .line 296
    iget-object v0, p0, Lcrittercism/android/da;->d:Lcrittercism/android/at;

    invoke-virtual {v0}, Lcrittercism/android/at;->b()Ljava/lang/String;

    .line 302
    new-instance v0, Lcrittercism/android/be;

    iget-object v2, p0, Lcrittercism/android/da;->h:Lcrittercism/android/ak;

    invoke-direct {v0, v2}, Lcrittercism/android/be;-><init>(Lcrittercism/android/ak;)V

    iput-object v0, p0, Lcrittercism/android/da;->b:Lcrittercism/android/be;

    .line 305
    iget-object v0, p0, Lcrittercism/android/da;->d:Lcrittercism/android/at;

    invoke-virtual {v0}, Lcrittercism/android/at;->delaySendingAppLoad()Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Lcrittercism/android/da;->b:Lcrittercism/android/be;

    invoke-virtual {v1, v0}, Lcrittercism/android/bk;->a(Lcrittercism/android/bz;)Z

    .line 307
    new-instance v0, Lcrittercism/android/cz;

    iget-object v2, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcrittercism/android/cz;-><init>(Landroid/content/Context;)V

    .line 308
    new-instance v2, Lcrittercism/android/cn$a;

    invoke-direct {v2}, Lcrittercism/android/cn$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/da;->d:Lcrittercism/android/at;

    invoke-virtual {v3}, Lcrittercism/android/at;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/v0/appload"

    iget-object v5, p0, Lcrittercism/android/da;->d:Lcrittercism/android/at;

    invoke-virtual {v5}, Lcrittercism/android/at;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcrittercism/android/da;->h:Lcrittercism/android/ak;

    new-instance v7, Lcrittercism/android/cm$b;

    invoke-direct {v7}, Lcrittercism/android/cm$b;-><init>()V

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/cz;->a(Lcrittercism/android/bk;Lcrittercism/android/ct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/ak;Lcrittercism/android/cr;)V

    .line 317
    new-instance v2, Lcrittercism/android/cu$a;

    invoke-direct {v2}, Lcrittercism/android/cu$a;-><init>()V

    iget-object v1, p0, Lcrittercism/android/da;->d:Lcrittercism/android/at;

    invoke-virtual {v1}, Lcrittercism/android/at;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_exceptions"

    iget-object v6, p0, Lcrittercism/android/da;->h:Lcrittercism/android/ak;

    new-instance v7, Lcrittercism/android/co$a;

    invoke-direct {v7}, Lcrittercism/android/co$a;-><init>()V

    move-object v1, v8

    move-object v5, v13

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/cz;->a(Lcrittercism/android/bk;Lcrittercism/android/ct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/ak;Lcrittercism/android/cr;)V

    .line 326
    new-instance v2, Lcrittercism/android/cu$a;

    invoke-direct {v2}, Lcrittercism/android/cu$a;-><init>()V

    iget-object v1, p0, Lcrittercism/android/da;->d:Lcrittercism/android/at;

    invoke-virtual {v1}, Lcrittercism/android/at;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_ndk_crashes"

    iget-object v6, p0, Lcrittercism/android/da;->h:Lcrittercism/android/ak;

    new-instance v7, Lcrittercism/android/co$a;

    invoke-direct {v7}, Lcrittercism/android/co$a;-><init>()V

    move-object v1, v10

    move-object v5, v13

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/cz;->a(Lcrittercism/android/bk;Lcrittercism/android/ct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/ak;Lcrittercism/android/cr;)V

    .line 335
    new-instance v2, Lcrittercism/android/cu$a;

    invoke-direct {v2}, Lcrittercism/android/cu$a;-><init>()V

    iget-object v1, p0, Lcrittercism/android/da;->d:Lcrittercism/android/at;

    invoke-virtual {v1}, Lcrittercism/android/at;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_crashes"

    iget-object v6, p0, Lcrittercism/android/da;->h:Lcrittercism/android/ak;

    new-instance v7, Lcrittercism/android/co$a;

    invoke-direct {v7}, Lcrittercism/android/co$a;-><init>()V

    move-object v1, v11

    move-object v5, v13

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/cz;->a(Lcrittercism/android/bk;Lcrittercism/android/ct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/ak;Lcrittercism/android/cr;)V

    .line 344
    new-instance v2, Lcrittercism/android/cu$a;

    invoke-direct {v2}, Lcrittercism/android/cu$a;-><init>()V

    iget-object v1, p0, Lcrittercism/android/da;->d:Lcrittercism/android/at;

    invoke-virtual {v1}, Lcrittercism/android/at;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_exceptions"

    new-instance v6, Lcrittercism/android/as;

    iget-object v1, p0, Lcrittercism/android/da;->h:Lcrittercism/android/ak;

    iget-object v5, p0, Lcrittercism/android/da;->d:Lcrittercism/android/at;

    invoke-direct {v6, v1, v5}, Lcrittercism/android/as;-><init>(Lcrittercism/android/ak;Lcrittercism/android/at;)V

    new-instance v7, Lcrittercism/android/co$a;

    invoke-direct {v7}, Lcrittercism/android/co$a;-><init>()V

    move-object v1, v9

    move-object v5, v13

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/cz;->a(Lcrittercism/android/bk;Lcrittercism/android/ct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/ak;Lcrittercism/android/cr;)V

    .line 353
    invoke-virtual {v0}, Lcrittercism/android/cz;->a()V

    .line 356
    :cond_2
    invoke-virtual {v12}, Lcrittercism/android/dp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/ar;->G()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 389
    :try_start_0
    invoke-static {}, Lcrittercism/android/dr;->b()V

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/com.crittercism/pending"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcrittercism/android/dr;->b()V

    .line 394
    :goto_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    .line 396
    iget-object v2, v0, Lcrittercism/android/ar;->B:Lcrittercism/android/dl;

    invoke-virtual {v2}, Lcrittercism/android/dl;->a()Ljava/lang/String;

    .line 399
    iget-object v2, p0, Lcrittercism/android/da;->h:Lcrittercism/android/ak;

    invoke-interface {v2}, Lcrittercism/android/ak;->l()Lcrittercism/android/dq;

    move-result-object v2

    .line 400
    iget-object v0, v0, Lcrittercism/android/ar;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 402
    iget-object v0, p0, Lcrittercism/android/da;->g:Lcrittercism/android/an;

    iget-object v3, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcrittercism/android/dq;->a(Lcrittercism/android/an;)V

    .line 404
    iget-object v0, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    invoke-static {v0}, Lcrittercism/android/dk;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcrittercism/android/dk;->a:Z

    .line 405
    iget-object v0, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcrittercism/android/dk;->a(Landroid/content/Context;Z)V

    .line 407
    invoke-virtual {v2}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Lcrittercism/android/dn;

    iget-object v3, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcrittercism/android/dn;-><init>(Landroid/content/Context;)V

    .line 409
    invoke-virtual {v0}, Lcrittercism/android/dn;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, v0, Lcrittercism/android/dn;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "numAppLoads"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 410
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v3

    iput-object v0, v3, Lcrittercism/android/ar;->F:Lcrittercism/android/dn;

    .line 412
    invoke-virtual {v2}, Lcrittercism/android/dq;->a()Lcrittercism/android/do;

    move-result-object v0

    iget-object v3, p0, Lcrittercism/android/da;->g:Lcrittercism/android/an;

    sget-object v4, Lcrittercism/android/ck;->j:Lcrittercism/android/ck;

    invoke-virtual {v4}, Lcrittercism/android/ck;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcrittercism/android/ck;->j:Lcrittercism/android/ck;

    invoke-virtual {v5}, Lcrittercism/android/ck;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcrittercism/android/do;->a(Lcrittercism/android/an;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_0
    invoke-virtual {v2}, Lcrittercism/android/dq;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcrittercism/android/da;->k:Z

    .line 419
    invoke-direct {p0}, Lcrittercism/android/da;->e()Ljava/io/File;

    move-result-object v8

    .line 421
    iget-boolean v0, p0, Lcrittercism/android/da;->k:Z

    if-eqz v0, :cond_4

    .line 422
    iget-boolean v0, p0, Lcrittercism/android/da;->k:Z

    iget-object v0, p0, Lcrittercism/android/da;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ar;->x:Z

    if-nez v0, :cond_2

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    :cond_1
    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->a:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    invoke-virtual {v0}, Lcrittercism/android/bk;->a()V

    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->b:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    invoke-virtual {v0}, Lcrittercism/android/bk;->a()V

    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->c:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    invoke-virtual {v0}, Lcrittercism/android/bk;->a()V

    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->d:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    invoke-virtual {v0}, Lcrittercism/android/bk;->a()V

    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->e:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    invoke-virtual {v0}, Lcrittercism/android/bk;->a()V

    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->f:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    invoke-virtual {v0}, Lcrittercism/android/bk;->a()V

    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->h:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    invoke-virtual {v0}, Lcrittercism/android/bk;->a()V

    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->g:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    invoke-virtual {v0}, Lcrittercism/android/bk;->a()V

    new-instance v0, Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bj;->k:Lcrittercism/android/bj;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bk;-><init>(Landroid/content/Context;Lcrittercism/android/bj;)V

    invoke-virtual {v0}, Lcrittercism/android/bk;->a()V

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object v0, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    invoke-static {v0}, Lcrittercism/android/i;->b(Landroid/content/Context;)V

    .line 427
    :goto_1
    invoke-direct {p0}, Lcrittercism/android/da;->c()V

    .line 430
    iget-object v0, p0, Lcrittercism/android/da;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 431
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 433
    :catch_0
    move-exception v0

    .line 434
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in run(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dr;->b()V

    .line 435
    invoke-static {}, Lcrittercism/android/dr;->c()V

    .line 436
    iput-object v0, p0, Lcrittercism/android/da;->l:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    iget-object v0, p0, Lcrittercism/android/da;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 439
    iget-object v0, p0, Lcrittercism/android/da;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 440
    :goto_3
    return-void

    .line 390
    :cond_3
    :try_start_2
    invoke-static {v2}, Lcrittercism/android/dv;->a(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 438
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcrittercism/android/da;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 439
    iget-object v1, p0, Lcrittercism/android/da;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0

    .line 424
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    new-instance v0, Lcrittercism/android/i;

    invoke-direct {v0, v2}, Lcrittercism/android/i;-><init>(Landroid/content/Context;)V

    const-string v3, "com.crittercism.optmz.config"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "interval"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "interval"

    const/16 v4, 0xa

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcrittercism/android/i;->d:I

    const-string v3, "kill"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "kill"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcrittercism/android/i;->c:Z

    const-string v3, "persist"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "persist"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcrittercism/android/i;->b:Z

    const-string v3, "enabled"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v1, "enabled"

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcrittercism/android/i;->a:Z

    :goto_4
    if-eqz v0, :cond_5

    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcrittercism/android/ar;->a(Lcrittercism/android/i;)V

    :cond_5
    iget-boolean v0, p0, Lcrittercism/android/da;->k:Z

    iget-object v0, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v0}, Lcrittercism/android/am;->z()V

    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ar;->x:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    invoke-static {v0}, Lcrittercism/android/az;->a(Landroid/content/Context;)Lcrittercism/android/az;

    move-result-object v9

    iget-object v0, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v0}, Lcrittercism/android/am;->x()Lcrittercism/android/bk;

    move-result-object v3

    iget-object v0, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v0}, Lcrittercism/android/am;->s()Lcrittercism/android/bk;

    move-result-object v4

    iget-object v0, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v0}, Lcrittercism/android/am;->t()Lcrittercism/android/bk;

    move-result-object v5

    iget-object v0, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v0}, Lcrittercism/android/am;->v()Lcrittercism/android/bk;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    :try_start_4
    new-instance v7, Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcrittercism/android/da;->d:Lcrittercism/android/at;

    invoke-virtual {v1}, Lcrittercism/android/at;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v1/transactions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v0, Lcrittercism/android/ba;

    iget-object v1, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    iget-object v2, p0, Lcrittercism/android/da;->h:Lcrittercism/android/ak;

    invoke-direct/range {v0 .. v7}, Lcrittercism/android/ba;-><init>(Landroid/content/Context;Lcrittercism/android/ak;Lcrittercism/android/bk;Lcrittercism/android/bk;Lcrittercism/android/bk;Lcrittercism/android/bk;Ljava/net/URL;)V

    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v1

    iput-object v0, v1, Lcrittercism/android/ar;->D:Lcrittercism/android/ba;

    new-instance v2, Lcrittercism/android/ds;

    const-string v3, "TXN Thread"

    invoke-direct {v2, v0, v3}, Lcrittercism/android/ds;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1, v9}, Lcrittercism/android/ar;->a(Lcrittercism/android/az;)V

    :cond_6
    :goto_5
    invoke-direct {p0, v8}, Lcrittercism/android/da;->a(Ljava/io/File;)V

    invoke-static {}, Lcrittercism/android/ay;->f()V

    iget-object v0, p0, Lcrittercism/android/da;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    iget-object v0, p0, Lcrittercism/android/da;->f:Lcrittercism/android/am;

    invoke-interface {v0}, Lcrittercism/android/am;->s()Lcrittercism/android/bk;

    move-result-object v0

    sget-object v1, Lcrittercism/android/bx;->a:Lcrittercism/android/bx;

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bz;)Z

    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ar;->x:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcrittercism/android/da;->d:Lcrittercism/android/at;

    invoke-virtual {v0}, Lcrittercism/android/at;->isNdkCrashReportingEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcrittercism/android/dr;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lcrittercism/android/da;->e:Landroid/content/Context;

    iget-object v1, p0, Lcrittercism/android/da;->d:Lcrittercism/android/at;

    invoke-virtual {v1}, Lcrittercism/android/at;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crittercism/app/CrittercismNDK;->installNdkLib(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    :goto_6
    :try_start_7
    invoke-direct {p0}, Lcrittercism/android/da;->f()V

    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    goto/16 :goto_4

    :cond_9
    move-object v0, v1

    goto/16 :goto_4

    :cond_a
    move-object v0, v1

    goto/16 :goto_4

    :cond_b
    move-object v0, v1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    invoke-static {}, Lcrittercism/android/dr;->a()V

    goto :goto_5

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception installing ndk library: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dr;->b()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    .line 438
    :cond_c
    iget-object v0, p0, Lcrittercism/android/da;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 439
    iget-object v0, p0, Lcrittercism/android/da;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_3
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/da;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcrittercism/android/da;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcrittercism/android/da;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 445
    return-void
.end method
