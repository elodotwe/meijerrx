.class public final Lcrittercism/android/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/u;
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private a:Lcrittercism/android/f;

.field private b:Lcrittercism/android/e;

.field private c:Ljava/net/SocketImpl;

.field private final d:Ljava/util/Queue;

.field private e:Lcrittercism/android/m;

.field private f:Lcrittercism/android/n;


# direct methods
.method public constructor <init>(Lcrittercism/android/f;Lcrittercism/android/e;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/t;->c:Ljava/net/SocketImpl;

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/t;->d:Ljava/util/Queue;

    .line 76
    iput-object p1, p0, Lcrittercism/android/t;->a:Lcrittercism/android/f;

    .line 78
    iput-object p2, p0, Lcrittercism/android/t;->b:Lcrittercism/android/e;

    .line 79
    return-void
.end method

.method private a(Z)Lcrittercism/android/d;
    .locals 2

    .prologue
    .line 470
    new-instance v0, Lcrittercism/android/d;

    invoke-direct {v0}, Lcrittercism/android/d;-><init>()V

    .line 472
    iget-object v1, p0, Lcrittercism/android/t;->c:Ljava/net/SocketImpl;

    .line 473
    invoke-direct {p0}, Lcrittercism/android/t;->c()Ljava/net/InetAddress;

    move-result-object v1

    .line 474
    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {v0, v1}, Lcrittercism/android/d;->a(Ljava/net/InetAddress;)V

    .line 478
    :cond_0
    invoke-direct {p0}, Lcrittercism/android/t;->d()I

    move-result v1

    .line 479
    if-lez v1, :cond_1

    .line 480
    invoke-virtual {v0, v1}, Lcrittercism/android/d;->a(I)V

    .line 483
    :cond_1
    if-eqz p1, :cond_2

    .line 484
    sget-object v1, Lcrittercism/android/l$a;->a:Lcrittercism/android/l$a;

    invoke-virtual {v0, v1}, Lcrittercism/android/d;->a(Lcrittercism/android/l$a;)V

    .line 487
    :cond_2
    iget-object v1, p0, Lcrittercism/android/t;->b:Lcrittercism/android/e;

    if-eqz v1, :cond_3

    .line 488
    iget-object v1, p0, Lcrittercism/android/t;->b:Lcrittercism/android/e;

    invoke-virtual {v1}, Lcrittercism/android/e;->a()Lcrittercism/android/b;

    move-result-object v1

    iput-object v1, v0, Lcrittercism/android/d;->l:Lcrittercism/android/b;

    .line 491
    :cond_3
    invoke-static {}, Lcrittercism/android/au;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 492
    invoke-static {}, Lcrittercism/android/au;->a()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/d;->a(Landroid/location/Location;)V

    .line 494
    :cond_4
    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 379
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcrittercism/android/t;->d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 383
    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcrittercism/android/t;->f:Lcrittercism/android/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcrittercism/android/t;->f:Lcrittercism/android/n;

    invoke-virtual {v1, v0}, Lcrittercism/android/n;->a(Ljava/io/InputStream;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcrittercism/android/n;

    iget-object v2, p0, Lcrittercism/android/t;->a:Lcrittercism/android/f;

    invoke-direct {v1, p0, v0, v2}, Lcrittercism/android/n;-><init>(Lcrittercism/android/u;Ljava/io/InputStream;Lcrittercism/android/f;)V

    iput-object v1, p0, Lcrittercism/android/t;->f:Lcrittercism/android/n;

    iget-object v0, p0, Lcrittercism/android/t;->f:Lcrittercism/android/n;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 390
    :cond_1
    :goto_0
    return-object v0

    .line 384
    :catch_0
    move-exception v0

    throw v0

    .line 386
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static varargs a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 153
    :try_start_0
    invoke-static {p0, p1, p2}, Lcrittercism/android/t;->c(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 154
    :catch_0
    move-exception v0

    throw v0

    .line 156
    :catch_1
    move-exception v2

    .line 158
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 159
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 160
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    const/4 v0, 0x1

    .line 166
    :cond_0
    if-eqz v0, :cond_2

    .line 167
    throw v2

    .line 159
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_2
    new-instance v0, Lcrittercism/android/cc;

    invoke-direct {v0, v2}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 171
    :catch_2
    move-exception v0

    .line 172
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 409
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcrittercism/android/t;->d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 413
    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcrittercism/android/t;->e:Lcrittercism/android/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcrittercism/android/t;->e:Lcrittercism/android/m;

    invoke-virtual {v1, v0}, Lcrittercism/android/m;->a(Ljava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcrittercism/android/m;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/m;-><init>(Lcrittercism/android/u;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcrittercism/android/t;->e:Lcrittercism/android/m;

    iget-object v0, p0, Lcrittercism/android/t;->e:Lcrittercism/android/m;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 420
    :cond_1
    :goto_0
    return-object v0

    .line 414
    :catch_0
    move-exception v0

    throw v0

    .line 416
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static varargs b(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 180
    :try_start_0
    invoke-static {p0, p1, p2}, Lcrittercism/android/t;->c(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 181
    :catch_0
    move-exception v0

    throw v0

    .line 183
    :catch_1
    move-exception v0

    .line 184
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static varargs c(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/16 v3, 0x5f

    .line 191
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "super$"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5b

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3b

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :try_start_1
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v0

    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 205
    :catch_1
    move-exception v0

    .line 206
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 207
    :catch_2
    move-exception v0

    .line 208
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 209
    :catch_3
    move-exception v1

    .line 210
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 211
    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcrittercism/android/cc;

    invoke-direct {v0, v1}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 213
    :cond_0
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 214
    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 215
    :cond_1
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    .line 216
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 218
    :cond_2
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 220
    :catch_4
    move-exception v0

    .line 221
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 222
    :catch_5
    move-exception v0

    throw v0

    .line 224
    :catch_6
    move-exception v0

    .line 225
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c()Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 441
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/t;->c:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInetAddress"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcrittercism/android/t;->c:Ljava/net/SocketImpl;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 452
    return-object v0

    .line 447
    :catch_0
    move-exception v0

    throw v0

    .line 449
    :catch_1
    move-exception v0

    .line 450
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private d()I
    .locals 3

    .prologue
    .line 456
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/t;->c:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPort"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcrittercism/android/t;->c:Ljava/net/SocketImpl;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 466
    return v0

    .line 461
    :catch_0
    move-exception v0

    throw v0

    .line 463
    :catch_1
    move-exception v0

    .line 464
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static varargs d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 244
    :try_start_0
    invoke-static {p0, p1, p2}, Lcrittercism/android/t;->c(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 245
    :catch_0
    move-exception v0

    throw v0

    .line 247
    :catch_1
    move-exception v0

    throw v0

    .line 249
    :catch_2
    move-exception v0

    .line 250
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()Lcrittercism/android/d;
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcrittercism/android/t;->a(Z)Lcrittercism/android/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/d;)V
    .locals 2

    .prologue
    .line 504
    iget-object v1, p0, Lcrittercism/android/t;->d:Ljava/util/Queue;

    monitor-enter v1

    .line 505
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/t;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 506
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/net/SocketImpl;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcrittercism/android/t;->c:Ljava/net/SocketImpl;

    .line 83
    return-void
.end method

.method public final b()Lcrittercism/android/d;
    .locals 2

    .prologue
    .line 511
    iget-object v1, p0, Lcrittercism/android/t;->d:Ljava/util/Queue;

    monitor-enter v1

    .line 512
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/t;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/d;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 92
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "close"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    new-array v1, v4, [Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 94
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcrittercism/android/t;->d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/t;->f:Lcrittercism/android/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/t;->f:Lcrittercism/android/n;

    invoke-virtual {v0}, Lcrittercism/android/n;->d()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :cond_0
    :goto_0
    return-object v2

    .line 94
    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "connect"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 103
    new-array v1, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/String;

    .line 106
    aget-object v1, p3, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 107
    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {p1, p2, v1}, Lcrittercism/android/t;->d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p0, v2}, Lcrittercism/android/t;->a(Z)Lcrittercism/android/d;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/d;->b()V

    invoke-virtual {v2}, Lcrittercism/android/d;->c()V

    invoke-virtual {v2}, Lcrittercism/android/d;->f()V

    invoke-virtual {v2, v0}, Lcrittercism/android/d;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcrittercism/android/d;->a(I)V

    invoke-virtual {v2, v1}, Lcrittercism/android/d;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcrittercism/android/t;->a:Lcrittercism/android/f;

    sget-object v3, Lcrittercism/android/d$a;->i:Lcrittercism/android/d$a;

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/f;->a(Lcrittercism/android/d;Lcrittercism/android/d$a;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :cond_2
    :goto_1
    throw v1

    :catch_3
    move-exception v0

    throw v0

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 108
    :cond_3
    new-array v1, v6, [Ljava/lang/Class;

    const-class v3, Ljava/net/InetAddress;

    aput-object v3, v1, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 110
    aget-object v0, p3, v4

    check-cast v0, Ljava/net/InetAddress;

    .line 111
    aget-object v1, p3, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 112
    const/4 v1, 0x2

    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {p1, p2, v1}, Lcrittercism/android/t;->d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v1

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    :try_start_4
    invoke-direct {p0, v2}, Lcrittercism/android/t;->a(Z)Lcrittercism/android/d;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/d;->b()V

    invoke-virtual {v2}, Lcrittercism/android/d;->c()V

    invoke-virtual {v2}, Lcrittercism/android/d;->f()V

    invoke-virtual {v2, v0}, Lcrittercism/android/d;->a(Ljava/net/InetAddress;)V

    invoke-virtual {v2, v3}, Lcrittercism/android/d;->a(I)V

    invoke-virtual {v2, v1}, Lcrittercism/android/d;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcrittercism/android/t;->a:Lcrittercism/android/f;

    sget-object v3, Lcrittercism/android/d$a;->i:Lcrittercism/android/d$a;

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/f;->a(Lcrittercism/android/d;Lcrittercism/android/d$a;)V
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    :cond_4
    :goto_2
    throw v1

    :catch_6
    move-exception v0

    throw v0

    :catch_7
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 113
    :cond_5
    new-array v1, v6, [Ljava/lang/Class;

    const-class v3, Ljava/net/SocketAddress;

    aput-object v3, v1, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    aget-object v0, p3, v4

    check-cast v0, Ljava/net/SocketAddress;

    .line 116
    aget-object v1, p3, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 117
    const/4 v3, 0x2

    :try_start_5
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {p1, p2, v3}, Lcrittercism/android/t;->d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v1

    if-eqz v0, :cond_6

    :try_start_6
    instance-of v2, v0, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcrittercism/android/t;->a(Z)Lcrittercism/android/d;

    move-result-object v2

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Lcrittercism/android/d;->b()V

    invoke-virtual {v2}, Lcrittercism/android/d;->c()V

    invoke-virtual {v2}, Lcrittercism/android/d;->f()V

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcrittercism/android/d;->a(Ljava/net/InetAddress;)V

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {v2, v0}, Lcrittercism/android/d;->a(I)V

    invoke-virtual {v2, v1}, Lcrittercism/android/d;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcrittercism/android/t;->a:Lcrittercism/android/f;

    sget-object v3, Lcrittercism/android/d$a;->i:Lcrittercism/android/d$a;

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/f;->a(Lcrittercism/android/d;Lcrittercism/android/d$a;)V
    :try_end_6
    .catch Ljava/lang/ThreadDeath; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_a

    :cond_6
    :goto_3
    throw v1

    :catch_9
    move-exception v0

    throw v0

    :catch_a
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 123
    :cond_7
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getInputStream"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 124
    new-array v1, v4, [Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 125
    invoke-direct {p0, p1, p2}, Lcrittercism/android/t;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/io/InputStream;

    move-result-object v0

    :goto_4
    move-object v2, v0

    .line 147
    goto/16 :goto_0

    .line 130
    :cond_8
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getOutputStream"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 131
    new-array v1, v4, [Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 132
    invoke-direct {p0, p1, p2}, Lcrittercism/android/t;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_4

    .line 139
    :cond_9
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 140
    array-length v0, v0

    if-nez v0, :cond_a

    .line 141
    invoke-static {p1, p2, p3}, Lcrittercism/android/t;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    .line 143
    :cond_a
    invoke-static {p1, p2, p3}, Lcrittercism/android/t;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_b
    move-object v0, v2

    goto :goto_4
.end method
