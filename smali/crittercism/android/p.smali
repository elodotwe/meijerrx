.class public final Lcrittercism/android/p;
.super Ljavax/net/ssl/SSLContextSpi;


# static fields
.field private static a:[Ljava/lang/reflect/Method;

.field private static b:Z


# instance fields
.field private c:Ljavax/net/ssl/SSLContextSpi;

.field private d:Lcrittercism/android/f;

.field private e:Lcrittercism/android/e;

.field private f:Lcrittercism/android/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/reflect/Method;

    sput-object v0, Lcrittercism/android/p;->a:[Ljava/lang/reflect/Method;

    .line 39
    sput-boolean v1, Lcrittercism/android/p;->b:Z

    .line 43
    :try_start_0
    sget-object v0, Lcrittercism/android/p;->a:[Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const-class v3, Ljavax/net/ssl/SSLContextSpi;

    const-string v4, "engineCreateSSLEngine"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    aput-object v3, v0, v2

    .line 44
    sget-object v0, Lcrittercism/android/p;->a:[Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    const-class v3, Ljavax/net/ssl/SSLContextSpi;

    const-string v4, "engineCreateSSLEngine"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    aput-object v3, v0, v2

    .line 45
    sget-object v0, Lcrittercism/android/p;->a:[Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const-class v3, Ljavax/net/ssl/SSLContextSpi;

    const-string v4, "engineGetClientSessionContext"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    aput-object v3, v0, v2

    .line 46
    sget-object v0, Lcrittercism/android/p;->a:[Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    const-class v3, Ljavax/net/ssl/SSLContextSpi;

    const-string v4, "engineGetServerSessionContext"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    aput-object v3, v0, v2

    .line 47
    sget-object v0, Lcrittercism/android/p;->a:[Ljava/lang/reflect/Method;

    const/4 v2, 0x4

    const-class v3, Ljavax/net/ssl/SSLContextSpi;

    const-string v4, "engineGetServerSocketFactory"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    aput-object v3, v0, v2

    .line 48
    sget-object v0, Lcrittercism/android/p;->a:[Ljava/lang/reflect/Method;

    const/4 v2, 0x5

    const-class v3, Ljavax/net/ssl/SSLContextSpi;

    const-string v4, "engineGetSocketFactory"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    aput-object v3, v0, v2

    .line 49
    sget-object v0, Lcrittercism/android/p;->a:[Ljava/lang/reflect/Method;

    const/4 v2, 0x6

    const-class v3, Ljavax/net/ssl/SSLContextSpi;

    const-string v4, "engineInit"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljavax/net/ssl/KeyManager;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, [Ljavax/net/ssl/TrustManager;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/security/SecureRandom;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    aput-object v3, v0, v2

    .line 51
    sget-object v2, Lcrittercism/android/p;->a:[Ljava/lang/reflect/Method;

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    new-instance v0, Lcrittercism/android/p;

    new-instance v2, Lcrittercism/android/p;

    invoke-direct {v2}, Lcrittercism/android/p;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcrittercism/android/p;-><init>(Ljavax/net/ssl/SSLContextSpi;Lcrittercism/android/f;Lcrittercism/android/e;Lcrittercism/android/c;)V

    .line 55
    invoke-virtual {v0}, Lcrittercism/android/p;->engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;

    .line 60
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/p;->engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    .line 61
    invoke-virtual {v0}, Lcrittercism/android/p;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    .line 62
    invoke-virtual {v0}, Lcrittercism/android/p;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    .line 63
    invoke-virtual {v0}, Lcrittercism/android/p;->engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    .line 64
    invoke-virtual {v0}, Lcrittercism/android/p;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 65
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcrittercism/android/p;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcrittercism/android/p;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    return-void

    .line 70
    :catch_0
    move-exception v0

    invoke-static {}, Lcrittercism/android/dr;->c()V

    .line 72
    sput-boolean v1, Lcrittercism/android/p;->b:Z

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    .line 117
    return-void
.end method

.method private constructor <init>(Ljavax/net/ssl/SSLContextSpi;Lcrittercism/android/f;Lcrittercism/android/e;Lcrittercism/android/c;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    .line 88
    iput-object p1, p0, Lcrittercism/android/p;->c:Ljavax/net/ssl/SSLContextSpi;

    .line 89
    iput-object p2, p0, Lcrittercism/android/p;->d:Lcrittercism/android/f;

    .line 90
    iput-object p3, p0, Lcrittercism/android/p;->e:Lcrittercism/android/e;

    .line 91
    iput-object p4, p0, Lcrittercism/android/p;->f:Lcrittercism/android/c;

    .line 92
    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLContextSpi;Lcrittercism/android/f;Lcrittercism/android/e;Lcrittercism/android/c;)Lcrittercism/android/p;
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcrittercism/android/p;->b:Z

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcrittercism/android/p;

    invoke-direct {v0, p0, p1, p2, p3}, Lcrittercism/android/p;-><init>(Ljavax/net/ssl/SSLContextSpi;Lcrittercism/android/f;Lcrittercism/android/e;Lcrittercism/android/c;)V

    goto :goto_0
.end method

.method private varargs a(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcrittercism/android/p;->c:Ljavax/net/ssl/SSLContextSpi;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcrittercism/android/p;->a:[Ljava/lang/reflect/Method;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcrittercism/android/p;->c:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 133
    :catch_1
    move-exception v0

    .line 134
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 135
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 136
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 137
    if-nez v0, :cond_1

    .line 141
    new-instance v0, Lcrittercism/android/cc;

    invoke-direct {v0, v1}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 142
    :cond_1
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_2

    .line 143
    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 144
    :cond_2
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_3

    .line 145
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 149
    :cond_3
    new-instance v0, Lcrittercism/android/cc;

    invoke-direct {v0, v1}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 151
    :catch_3
    move-exception v0

    .line 152
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 168
    const/4 v0, 0x6

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcrittercism/android/p;->a(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 169
    :catch_0
    move-exception v0

    throw v0

    .line 171
    :catch_1
    move-exception v0

    throw v0

    .line 173
    :catch_2
    move-exception v0

    .line 174
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcrittercism/android/p;->b:Z

    return v0
.end method

.method private varargs b(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 158
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcrittercism/android/p;->a(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 159
    :catch_0
    move-exception v0

    throw v0

    .line 161
    :catch_1
    move-exception v0

    .line 162
    new-instance v1, Lcrittercism/android/cc;

    invoke-direct {v1, v0}, Lcrittercism/android/cc;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcrittercism/android/p;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method protected final engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v2, 0x1

    .line 185
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-direct {p0, v2, v0}, Lcrittercism/android/p;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method protected final engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 2

    .prologue
    .line 190
    const/4 v0, 0x2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/p;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSessionContext;

    return-object v0
.end method

.method protected final engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 2

    .prologue
    .line 195
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/p;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSessionContext;

    return-object v0
.end method

.method protected final engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x4

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/p;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLServerSocketFactory;

    return-object v0
.end method

.method protected final engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    .prologue
    .line 205
    const/4 v0, 0x5

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/p;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 208
    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    new-instance v1, Lcrittercism/android/q;

    iget-object v2, p0, Lcrittercism/android/p;->d:Lcrittercism/android/f;

    iget-object v3, p0, Lcrittercism/android/p;->e:Lcrittercism/android/e;

    iget-object v4, p0, Lcrittercism/android/p;->f:Lcrittercism/android/c;

    invoke-direct {v1, v0, v2, v3, v4}, Lcrittercism/android/q;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lcrittercism/android/f;Lcrittercism/android/e;Lcrittercism/android/c;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 218
    :cond_0
    :goto_0
    return-object v0

    .line 212
    :catch_0
    move-exception v0

    throw v0

    .line 214
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "km"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tm"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;

    .prologue
    .line 223
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v0}, Lcrittercism/android/p;->a([Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 228
    iget-object v0, p0, Lcrittercism/android/p;->c:Ljavax/net/ssl/SSLContextSpi;

    .line 229
    iget-object v0, p0, Lcrittercism/android/p;->c:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcrittercism/android/p;->c:Ljavax/net/ssl/SSLContextSpi;

    .line 235
    iget-object v0, p0, Lcrittercism/android/p;->c:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcrittercism/android/p;->c:Ljavax/net/ssl/SSLContextSpi;

    .line 241
    iget-object v0, p0, Lcrittercism/android/p;->c:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
