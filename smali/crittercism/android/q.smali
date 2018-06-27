.class public final Lcrittercism/android/q;
.super Ljavax/net/ssl/SSLSocketFactory;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:Ljava/lang/Class;

.field private static d:Ljava/lang/Throwable;


# instance fields
.field private e:Ljavax/net/ssl/SSLSocketFactory;

.field private f:Lcrittercism/android/f;

.field private g:Lcrittercism/android/e;

.field private h:Lcrittercism/android/c;

.field private i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 25
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    aput-object v2, v1, v0

    const-string v2, "com.android.org.conscrypt.SSLParametersImpl"

    aput-object v2, v1, v3

    sput-object v1, Lcrittercism/android/q;->a:[Ljava/lang/String;

    .line 30
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketFactoryImpl"

    aput-object v2, v1, v0

    const-string v2, "com.android.org.conscrypt.OpenSSLSocketFactoryImpl"

    aput-object v2, v1, v3

    sput-object v1, Lcrittercism/android/q;->b:[Ljava/lang/String;

    .line 35
    sput-object v5, Lcrittercism/android/q;->c:Ljava/lang/Class;

    .line 36
    sput-object v5, Lcrittercism/android/q;->d:Ljava/lang/Throwable;

    .line 38
    sget-object v1, Lcrittercism/android/q;->a:[Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 40
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcrittercism/android/q;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    sget-object v0, Lcrittercism/android/q;->c:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/ClassNotFoundException;

    const-string v1, "Cannot find SSL Parameters class"

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 49
    sput-object v0, Lcrittercism/android/q;->d:Ljava/lang/Throwable;

    .line 51
    :cond_1
    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lcrittercism/android/f;Lcrittercism/android/e;Lcrittercism/android/c;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/q;->a(Ljava/lang/Class;)V

    .line 70
    iput-object p1, p0, Lcrittercism/android/q;->e:Ljavax/net/ssl/SSLSocketFactory;

    .line 71
    iput-object p2, p0, Lcrittercism/android/q;->f:Lcrittercism/android/f;

    .line 72
    iput-object p3, p0, Lcrittercism/android/q;->g:Lcrittercism/android/e;

    .line 73
    iput-object p4, p0, Lcrittercism/android/q;->h:Lcrittercism/android/c;

    .line 74
    invoke-direct {p0}, Lcrittercism/android/q;->c()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/q;->i:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public static a()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcrittercism/android/q;->d:Ljava/lang/Throwable;

    return-object v0
.end method

.method private a(Ljava/net/Socket;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 120
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcrittercism/android/q;->b(Ljava/net/Socket;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 127
    :goto_0
    return-object p1

    .line 122
    :catch_0
    move-exception v0

    throw v0

    .line 124
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 78
    .line 80
    sget-object v2, Lcrittercism/android/q;->b:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 82
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 87
    invoke-virtual {v4, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    const/4 v0, 0x1

    .line 93
    :cond_0
    if-nez v0, :cond_2

    .line 94
    new-instance v0, Lcrittercism/android/cd;

    const-string v1, "Unrecognized SSLSocketFactory class."

    invoke-direct {v0, v1}, Lcrittercism/android/cd;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :catch_0
    move-exception v4

    .line 80
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_2
    return-void
.end method

.method private b(Ljava/net/Socket;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/net/Socket;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 137
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object p1

    .line 141
    :cond_1
    new-instance v2, Lcrittercism/android/r;

    iget-object v3, p0, Lcrittercism/android/q;->f:Lcrittercism/android/f;

    iget-object v4, p0, Lcrittercism/android/q;->g:Lcrittercism/android/e;

    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-direct {v2, v3, v4, v0}, Lcrittercism/android/r;-><init>(Lcrittercism/android/f;Lcrittercism/android/e;Ljavax/net/ssl/SSLSocket;)V

    .line 145
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/q;->h:Lcrittercism/android/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3, v2, p2, p3}, Lcrittercism/android/c;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcrittercism/android/cd; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    .line 153
    :goto_1
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 157
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 161
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    move-object p1, v1

    .line 162
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 149
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private c()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 240
    .line 243
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/q;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Lcrittercism/android/q;->c:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcrittercism/android/k;->a(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Lcrittercism/android/cd; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 250
    :goto_0
    if-eqz v0, :cond_1

    .line 252
    :try_start_1
    iget-object v2, p0, Lcrittercism/android/q;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v2}, Lcrittercism/android/k;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcrittercism/android/cd; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 258
    :goto_1
    if-eqz v0, :cond_0

    .line 260
    :try_start_2
    sget-object v1, Lcrittercism/android/q;->c:Ljava/lang/Class;

    const-string v2, "clone"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 261
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 262
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    .line 273
    :cond_0
    :goto_2
    return-object v0

    .line 245
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 253
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 263
    :catch_2
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 265
    :catch_3
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 267
    :catch_4
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 269
    :catch_5
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public final b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcrittercism/android/q;->e:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final createSocket()Ljava/net/Socket;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 230
    iget-object v0, p0, Lcrittercism/android/q;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 232
    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Lcrittercism/android/q;->c:Ljava/lang/Class;

    aput-object v2, v1, v4

    .line 234
    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcrittercism/android/q;->i:Ljava/lang/Object;

    aput-object v3, v2, v4

    .line 236
    invoke-direct {p0, v0, v1, v2}, Lcrittercism/android/q;->a(Ljava/net/Socket;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    iget-object v0, p0, Lcrittercism/android/q;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    .line 182
    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    sget-object v2, Lcrittercism/android/q;->c:Ljava/lang/Class;

    aput-object v2, v1, v5

    .line 185
    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcrittercism/android/q;->i:Ljava/lang/Object;

    aput-object v3, v2, v5

    .line 187
    invoke-direct {p0, v0, v1, v2}, Lcrittercism/android/q;->a(Ljava/net/Socket;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 192
    iget-object v0, p0, Lcrittercism/android/q;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 194
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    const-class v2, Ljava/net/InetAddress;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    sget-object v2, Lcrittercism/android/q;->c:Ljava/lang/Class;

    aput-object v2, v1, v7

    .line 197
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p3, v2, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcrittercism/android/q;->i:Ljava/lang/Object;

    aput-object v3, v2, v7

    .line 200
    invoke-direct {p0, v0, v1, v2}, Lcrittercism/android/q;->a(Ljava/net/Socket;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 7
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    iget-object v0, p0, Lcrittercism/android/q;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 207
    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Ljava/net/InetAddress;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    sget-object v2, Lcrittercism/android/q;->c:Ljava/lang/Class;

    aput-object v2, v1, v5

    .line 210
    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcrittercism/android/q;->i:Ljava/lang/Object;

    aput-object v3, v2, v5

    .line 212
    invoke-direct {p0, v0, v1, v2}, Lcrittercism/android/q;->a(Ljava/net/Socket;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 8
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 217
    iget-object v0, p0, Lcrittercism/android/q;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 219
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/net/InetAddress;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    const-class v2, Ljava/net/InetAddress;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    sget-object v2, Lcrittercism/android/q;->c:Ljava/lang/Class;

    aput-object v2, v1, v7

    .line 222
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p3, v2, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcrittercism/android/q;->i:Ljava/lang/Object;

    aput-object v3, v2, v7

    .line 225
    invoke-direct {p0, v0, v1, v2}, Lcrittercism/android/q;->a(Ljava/net/Socket;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 8
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    iget-object v0, p0, Lcrittercism/android/q;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 169
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/net/Socket;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    sget-object v2, Lcrittercism/android/q;->c:Ljava/lang/Class;

    aput-object v2, v1, v7

    .line 172
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcrittercism/android/q;->i:Ljava/lang/Object;

    aput-object v3, v2, v7

    .line 174
    invoke-direct {p0, v0, v1, v2}, Lcrittercism/android/q;->a(Ljava/net/Socket;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcrittercism/android/q;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcrittercism/android/q;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
