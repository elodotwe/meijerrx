.class public final Lcrittercism/android/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/u;
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private a:Lcrittercism/android/f;

.field private b:Lcrittercism/android/e;

.field private final c:Ljava/util/Queue;

.field private d:Ljavax/net/ssl/SSLSocket;

.field private e:Lcrittercism/android/m;

.field private f:Lcrittercism/android/n;


# direct methods
.method public constructor <init>(Lcrittercism/android/f;Lcrittercism/android/e;Ljavax/net/ssl/SSLSocket;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/r;->c:Ljava/util/Queue;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/r;->d:Ljavax/net/ssl/SSLSocket;

    .line 73
    iput-object p1, p0, Lcrittercism/android/r;->a:Lcrittercism/android/f;

    .line 76
    iput-object p2, p0, Lcrittercism/android/r;->b:Lcrittercism/android/e;

    .line 77
    iput-object p3, p0, Lcrittercism/android/r;->d:Ljavax/net/ssl/SSLSocket;

    .line 78
    return-void
.end method

.method private a(Z)Lcrittercism/android/d;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Lcrittercism/android/d;

    invoke-direct {v0}, Lcrittercism/android/d;-><init>()V

    .line 204
    iget-object v1, p0, Lcrittercism/android/r;->d:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0, v1}, Lcrittercism/android/d;->a(Ljava/net/InetAddress;)V

    .line 209
    :cond_0
    if-eqz p1, :cond_1

    .line 210
    iget-object v1, p0, Lcrittercism/android/r;->d:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcrittercism/android/d;->a(I)V

    .line 213
    :cond_1
    sget-object v1, Lcrittercism/android/l$a;->b:Lcrittercism/android/l$a;

    invoke-virtual {v0, v1}, Lcrittercism/android/d;->a(Lcrittercism/android/l$a;)V

    .line 215
    iget-object v1, p0, Lcrittercism/android/r;->b:Lcrittercism/android/e;

    if-eqz v1, :cond_2

    .line 216
    iget-object v1, p0, Lcrittercism/android/r;->b:Lcrittercism/android/e;

    invoke-virtual {v1}, Lcrittercism/android/e;->a()Lcrittercism/android/b;

    move-result-object v1

    iput-object v1, v0, Lcrittercism/android/d;->l:Lcrittercism/android/b;

    .line 218
    :cond_2
    invoke-static {}, Lcrittercism/android/au;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    invoke-static {}, Lcrittercism/android/au;->a()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/d;->a(Landroid/location/Location;)V

    .line 221
    :cond_3
    return-object v0
.end method

.method private varargs a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 134
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcrittercism/android/r;->c(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 135
    :catch_0
    move-exception v0

    throw v0

    .line 137
    :catch_1
    move-exception v2

    .line 139
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 140
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 141
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    const/4 v0, 0x1

    .line 147
    :cond_0
    if-eqz v0, :cond_2

    .line 148
    throw v2

    .line 140
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_2
    new-instance v0, Lcrittercism/android/cc;

    invoke-direct {v0, v2}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 152
    :catch_2
    move-exception v0

    .line 153
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private varargs b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 160
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcrittercism/android/r;->c(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 161
    :catch_0
    move-exception v0

    throw v0

    .line 163
    :catch_1
    move-exception v0

    .line 164
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcrittercism/android/r;->d:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcrittercism/android/r;->f:Lcrittercism/android/n;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcrittercism/android/r;->f:Lcrittercism/android/n;

    invoke-virtual {v1, v0}, Lcrittercism/android/n;->a(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcrittercism/android/r;->f:Lcrittercism/android/n;

    .line 290
    :cond_0
    :goto_0
    return-object v0

    .line 283
    :cond_1
    new-instance v1, Lcrittercism/android/n;

    iget-object v2, p0, Lcrittercism/android/r;->a:Lcrittercism/android/f;

    invoke-direct {v1, p0, v0, v2}, Lcrittercism/android/n;-><init>(Lcrittercism/android/u;Ljava/io/InputStream;Lcrittercism/android/f;)V

    iput-object v1, p0, Lcrittercism/android/r;->f:Lcrittercism/android/n;

    iget-object v0, p0, Lcrittercism/android/r;->f:Lcrittercism/android/n;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    throw v0

    .line 286
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private varargs c(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/r;->d:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 175
    :catch_1
    move-exception v0

    .line 176
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 177
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 178
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 179
    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcrittercism/android/cc;

    invoke-direct {v0, v1}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 181
    :cond_0
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 182
    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 183
    :cond_1
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    .line 184
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 186
    :cond_2
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 188
    :catch_3
    move-exception v0

    .line 189
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 190
    :catch_4
    move-exception v0

    throw v0

    .line 192
    :catch_5
    move-exception v0

    .line 193
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private d()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcrittercism/android/r;->d:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcrittercism/android/r;->e:Lcrittercism/android/m;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcrittercism/android/r;->e:Lcrittercism/android/m;

    invoke-virtual {v1, v0}, Lcrittercism/android/m;->a(Ljava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcrittercism/android/r;->e:Lcrittercism/android/m;

    .line 317
    :cond_0
    :goto_0
    return-object v0

    .line 310
    :cond_1
    iget-object v1, p0, Lcrittercism/android/r;->e:Lcrittercism/android/m;

    new-instance v1, Lcrittercism/android/m;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/m;-><init>(Lcrittercism/android/u;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcrittercism/android/r;->e:Lcrittercism/android/m;

    iget-object v0, p0, Lcrittercism/android/r;->e:Lcrittercism/android/m;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    throw v0

    .line 313
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcrittercism/android/d;
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcrittercism/android/r;->a(Z)Lcrittercism/android/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/d;)V
    .locals 2

    .prologue
    .line 226
    iget-object v1, p0, Lcrittercism/android/r;->c:Ljava/util/Queue;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/r;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 228
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Lcrittercism/android/d;
    .locals 2

    .prologue
    .line 233
    iget-object v1, p0, Lcrittercism/android/r;->c:Ljava/util/Queue;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/r;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/d;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 83
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 87
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "close"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcrittercism/android/r;->d:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->close()V

    :try_start_0
    iget-object v1, p0, Lcrittercism/android/r;->f:Lcrittercism/android/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcrittercism/android/r;->f:Lcrittercism/android/n;

    invoke-virtual {v1}, Lcrittercism/android/n;->d()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "startHandshake"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    :try_start_1
    iget-object v1, p0, Lcrittercism/android/r;->d:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const/4 v1, 0x1

    :try_start_2
    invoke-direct {p0, v1}, Lcrittercism/android/r;->a(Z)Lcrittercism/android/d;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/d;->b()V

    invoke-virtual {v1}, Lcrittercism/android/d;->c()V

    invoke-virtual {v1}, Lcrittercism/android/d;->f()V

    invoke-virtual {v1, v0}, Lcrittercism/android/d;->a(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcrittercism/android/r;->a:Lcrittercism/android/f;

    sget-object v3, Lcrittercism/android/d$a;->j:Lcrittercism/android/d$a;

    invoke-virtual {v2, v1, v3}, Lcrittercism/android/f;->a(Lcrittercism/android/d;Lcrittercism/android/d$a;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    throw v0

    :catch_3
    move-exception v0

    throw v0

    :catch_4
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInputStream"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-direct {p0}, Lcrittercism/android/r;->c()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getOutputStream"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 111
    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-direct {p0}, Lcrittercism/android/r;->d()Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 121
    array-length v0, v0

    if-nez v0, :cond_5

    .line 122
    invoke-direct {p0, p2, p3}, Lcrittercism/android/r;->b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_5
    invoke-direct {p0, p2, p3}, Lcrittercism/android/r;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method
