.class public final Lcrittercism/android/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/List;


# instance fields
.field private b:Lcrittercism/android/s;

.field private c:Lcrittercism/android/q;

.field private d:Lcrittercism/android/q;

.field private e:Lcrittercism/android/f;

.field private f:Lcrittercism/android/e;

.field private g:Lcrittercism/android/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcrittercism/android/j;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcrittercism/android/f;Lcrittercism/android/e;Lcrittercism/android/c;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcrittercism/android/j;->e:Lcrittercism/android/f;

    .line 41
    iput-object p2, p0, Lcrittercism/android/j;->f:Lcrittercism/android/e;

    .line 42
    iput-object p3, p0, Lcrittercism/android/j;->g:Lcrittercism/android/c;

    .line 43
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 386
    sget-object v1, Lcrittercism/android/j;->a:Ljava/util/List;

    monitor-enter v1

    .line 387
    :try_start_0
    sget-object v0, Lcrittercism/android/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    invoke-static {p0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    .line 391
    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/net/SocketImplFactory;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 307
    :try_start_0
    const-class v2, Ljava/net/Socket;

    const-class v3, Ljava/net/SocketImplFactory;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcrittercism/android/k;->a(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Lcrittercism/android/cd; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 317
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 318
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 329
    :goto_0
    return v0

    .line 311
    :catch_0
    move-exception v0

    const-string v2, "Unable to install OPTIMZ for http connections"

    invoke-static {v2, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 313
    goto :goto_0

    .line 319
    :catch_1
    move-exception v1

    const-string v2, "Unable to install OPTIMZ for http connections"

    invoke-static {v2, v1}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 321
    :catch_2
    move-exception v0

    const-string v2, "Unable to install OPTIMZ for http connections"

    invoke-static {v2, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 323
    goto :goto_0

    .line 324
    :catch_3
    move-exception v0

    const-string v2, "Unable to install OPTIMZ for http connections"

    invoke-static {v2, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 326
    goto :goto_0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 394
    sget-object v1, Lcrittercism/android/j;->a:Ljava/util/List;

    monitor-enter v1

    .line 395
    :try_start_0
    sget-object v0, Lcrittercism/android/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 396
    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 399
    :cond_0
    :try_start_1
    sget-object v0, Lcrittercism/android/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 400
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private c()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 106
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 108
    instance-of v2, v0, Lcrittercism/android/q;

    if-eqz v2, :cond_0

    .line 109
    check-cast v0, Lcrittercism/android/q;

    iput-object v0, p0, Lcrittercism/android/j;->c:Lcrittercism/android/q;

    move v0, v1

    .line 125
    :goto_0
    return v0

    .line 114
    :cond_0
    :try_start_0
    new-instance v2, Lcrittercism/android/q;

    iget-object v3, p0, Lcrittercism/android/j;->e:Lcrittercism/android/f;

    iget-object v4, p0, Lcrittercism/android/j;->f:Lcrittercism/android/e;

    iget-object v5, p0, Lcrittercism/android/j;->g:Lcrittercism/android/c;

    invoke-direct {v2, v0, v3, v4, v5}, Lcrittercism/android/q;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lcrittercism/android/f;Lcrittercism/android/e;Lcrittercism/android/c;)V

    iput-object v2, p0, Lcrittercism/android/j;->c:Lcrittercism/android/q;
    :try_end_0
    .catch Lcrittercism/android/cd; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    iget-object v0, p0, Lcrittercism/android/j;->c:Lcrittercism/android/q;

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move v0, v1

    .line 125
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    const-string v1, "Unable to install OPTIMZ for javax.net.ssl.SSLSocket connections"

    invoke-static {v1, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 174
    const/4 v4, 0x0

    .line 178
    :try_start_0
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    const-class v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    const-class v5, Ljavax/net/ssl/SSLSocketFactory;

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcrittercism/android/k;->a(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcrittercism/android/cd; {:try_start_0 .. :try_end_0} :catch_3

    .line 193
    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Delegate factory was null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-string v2, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v2, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 228
    :goto_0
    return v0

    .line 179
    :catch_0
    move-exception v0

    const-string v2, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v2, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 181
    goto :goto_0

    .line 182
    :catch_1
    move-exception v0

    const-string v2, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v2, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 184
    goto :goto_0

    .line 185
    :catch_2
    move-exception v0

    const-string v2, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v2, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 187
    goto :goto_0

    .line 188
    :catch_3
    move-exception v0

    const-string v2, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v2, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 190
    goto :goto_0

    .line 203
    :cond_0
    instance-of v3, v0, Lcrittercism/android/q;

    if-eqz v3, :cond_1

    move v0, v1

    .line 204
    goto :goto_0

    .line 208
    :cond_1
    :try_start_1
    new-instance v3, Lcrittercism/android/q;

    iget-object v5, p0, Lcrittercism/android/j;->e:Lcrittercism/android/f;

    iget-object v6, p0, Lcrittercism/android/j;->f:Lcrittercism/android/e;

    iget-object v7, p0, Lcrittercism/android/j;->g:Lcrittercism/android/c;

    invoke-direct {v3, v0, v5, v6, v7}, Lcrittercism/android/q;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lcrittercism/android/f;Lcrittercism/android/e;Lcrittercism/android/c;)V
    :try_end_1
    .catch Lcrittercism/android/cd; {:try_start_1 .. :try_end_1} :catch_4

    move-object v0, v3

    .line 215
    :goto_1
    :try_start_2
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const-class v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    const-class v5, Ljavax/net/ssl/SSLSocketFactory;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcrittercism/android/k;->a(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcrittercism/android/cd; {:try_start_2 .. :try_end_2} :catch_7

    .line 227
    iput-object v0, p0, Lcrittercism/android/j;->d:Lcrittercism/android/q;

    move v0, v2

    .line 228
    goto :goto_0

    .line 210
    :catch_4
    move-exception v0

    const-string v3, "Unable to install OPTIMZ for javax.net.ssl.SSLSocket connections"

    invoke-static {v3, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v4

    goto :goto_1

    .line 216
    :catch_5
    move-exception v0

    const-string v2, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v2, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 218
    goto :goto_0

    .line 219
    :catch_6
    move-exception v0

    const-string v2, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v2, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 221
    goto :goto_0

    .line 222
    :catch_7
    move-exception v0

    const-string v2, "Unable to install OPTIMZ for SSL HttpClient connections"

    invoke-static {v2, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 224
    goto :goto_0
.end method

.method private e()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 248
    .line 253
    :try_start_0
    const-class v0, Ljava/net/Socket;

    const-class v4, Ljava/net/SocketImplFactory;

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcrittercism/android/k;->a(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 254
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcrittercism/android/k;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketImplFactory;
    :try_end_0
    .catch Lcrittercism/android/cd; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    if-nez v0, :cond_2

    .line 262
    :try_start_1
    const-class v1, Ljava/net/Socket;

    const-class v4, Ljava/net/SocketImpl;

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lcrittercism/android/k;->a(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    invoke-static {v1, v4}, Lcrittercism/android/k;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketImpl;

    if-nez v1, :cond_0

    new-instance v0, Lcrittercism/android/cd;

    const-string v1, "SocketImpl was null"

    invoke-direct {v0, v1}, Lcrittercism/android/cd;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcrittercism/android/cd; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    :catch_0
    move-exception v0

    const-string v1, "Unable to install OPTIMZ for http connections"

    invoke-static {v1, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 303
    :goto_0
    return v0

    .line 255
    :catch_1
    move-exception v0

    const-string v1, "Unable to install OPTIMZ for http connections"

    invoke-static {v1, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 257
    goto :goto_0

    .line 262
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Lcrittercism/android/cd; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 273
    :cond_1
    if-eqz v0, :cond_3

    .line 274
    :try_start_3
    new-instance v1, Lcrittercism/android/s;

    iget-object v4, p0, Lcrittercism/android/j;->e:Lcrittercism/android/f;

    iget-object v5, p0, Lcrittercism/android/j;->f:Lcrittercism/android/e;

    invoke-direct {v1, v0, v4, v5}, Lcrittercism/android/s;-><init>(Ljava/net/SocketImplFactory;Lcrittercism/android/f;Lcrittercism/android/e;)V

    .line 279
    invoke-static {v1}, Lcrittercism/android/j;->a(Ljava/net/SocketImplFactory;)Z
    :try_end_3
    .catch Lcrittercism/android/cd; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v1

    .line 302
    :goto_1
    iput-object v0, p0, Lcrittercism/android/j;->b:Lcrittercism/android/s;

    move v0, v3

    .line 303
    goto :goto_0

    .line 267
    :cond_2
    instance-of v4, v0, Lcrittercism/android/s;

    if-eqz v4, :cond_1

    move v0, v3

    .line 269
    goto :goto_0

    .line 280
    :cond_3
    if-eqz v1, :cond_4

    .line 281
    :try_start_4
    new-instance v0, Lcrittercism/android/s;

    iget-object v4, p0, Lcrittercism/android/j;->e:Lcrittercism/android/f;

    iget-object v5, p0, Lcrittercism/android/j;->f:Lcrittercism/android/e;

    iget-object v6, p0, Lcrittercism/android/j;->g:Lcrittercism/android/c;

    invoke-direct {v0, v1, v4, v5, v6}, Lcrittercism/android/s;-><init>(Ljava/lang/Class;Lcrittercism/android/f;Lcrittercism/android/e;Lcrittercism/android/c;)V

    .line 287
    invoke-static {v0}, Ljava/net/Socket;->setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    :try_end_4
    .catch Lcrittercism/android/cd; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 300
    :catch_2
    move-exception v0

    const-string v1, "Unable to install OPTIMZ for http connections"

    invoke-static {v1, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 294
    goto :goto_0

    .line 289
    :cond_4
    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null SocketImpl"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-string v1, "Unable to install OPTIMZ for http connections"

    invoke-static {v1, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Lcrittercism/android/cd; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move v0, v2

    .line 290
    goto :goto_0

    .line 295
    :catch_3
    move-exception v0

    const-string v1, "Unable to install OPTIMZ for http connections"

    invoke-static {v1, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 299
    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    .line 54
    invoke-static {}, Lcrittercism/android/q;->a()Ljava/lang/Throwable;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    const-string v1, "Unable to install service monitoring"

    invoke-static {v1, v0}, Lcrittercism/android/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 61
    :cond_0
    invoke-direct {p0}, Lcrittercism/android/j;->e()Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 62
    invoke-direct {p0}, Lcrittercism/android/j;->d()Z

    move-result v1

    or-int/2addr v0, v1

    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 85
    iget-object v1, p0, Lcrittercism/android/j;->e:Lcrittercism/android/f;

    iget-object v2, p0, Lcrittercism/android/j;->f:Lcrittercism/android/e;

    iget-object v3, p0, Lcrittercism/android/j;->g:Lcrittercism/android/c;

    invoke-static {v1, v2, v3}, Lcrittercism/android/o;->a(Lcrittercism/android/f;Lcrittercism/android/e;Lcrittercism/android/c;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 89
    :cond_1
    invoke-direct {p0}, Lcrittercism/android/j;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 91
    goto :goto_0
.end method
