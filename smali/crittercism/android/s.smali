.class public final Lcrittercism/android/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/net/SocketImplFactory;


# static fields
.field private static f:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/Class;

.field private b:Ljava/net/SocketImplFactory;

.field private c:Lcrittercism/android/f;

.field private d:Lcrittercism/android/e;

.field private e:Lcrittercism/android/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "org.apache.harmony.luni.net.PlainSocketImpl"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "java.net.PlainSocketImpl"

    aput-object v2, v0, v1

    sput-object v0, Lcrittercism/android/s;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcrittercism/android/f;Lcrittercism/android/e;Lcrittercism/android/c;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcrittercism/android/s;->c:Lcrittercism/android/f;

    .line 34
    iput-object p3, p0, Lcrittercism/android/s;->d:Lcrittercism/android/e;

    .line 35
    iput-object p4, p0, Lcrittercism/android/s;->e:Lcrittercism/android/c;

    .line 36
    iput-object p1, p0, Lcrittercism/android/s;->a:Ljava/lang/Class;

    .line 37
    iget-object v0, p0, Lcrittercism/android/s;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcrittercism/android/s;->a(Ljava/lang/Class;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketImplFactory;Lcrittercism/android/f;Lcrittercism/android/e;)V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcrittercism/android/s;->c:Lcrittercism/android/f;

    .line 47
    iput-object p3, p0, Lcrittercism/android/s;->d:Lcrittercism/android/e;

    .line 48
    iput-object p1, p0, Lcrittercism/android/s;->b:Ljava/net/SocketImplFactory;

    .line 49
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljava/net/SocketImplFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcrittercism/android/cd;

    const-string v1, "Factory was null"

    invoke-direct {v0, v1}, Lcrittercism/android/cd;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcrittercism/android/cd;

    const-string v1, "Factory does not work"

    invoke-direct {v0, v1}, Lcrittercism/android/cd;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcrittercism/android/cd;

    const-string v2, "Factory does not work"

    invoke-direct {v1, v2, v0}, Lcrittercism/android/cd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/Class;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 53
    if-nez p0, :cond_0

    .line 54
    new-instance v0, Lcrittercism/android/cd;

    const-string v1, "Class was null"

    invoke-direct {v0, v1}, Lcrittercism/android/cd;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    sget-object v2, Lcrittercism/android/s;->f:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 62
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 67
    invoke-virtual {v4, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    const/4 v0, 0x1

    .line 73
    :cond_1
    if-nez v0, :cond_3

    .line 74
    new-instance v0, Lcrittercism/android/cd;

    const-string v1, "Unrecognized SocketImpl class."

    invoke-direct {v0, v1}, Lcrittercism/android/cd;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :catch_0
    move-exception v4

    .line 60
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    return-void

    .line 79
    :catch_1
    move-exception v0

    .line 80
    new-instance v1, Lcrittercism/android/cd;

    const-string v2, "Unable to create new instance"

    invoke-direct {v1, v2, v0}, Lcrittercism/android/cd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final createSocketImpl()Ljava/net/SocketImpl;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 102
    .line 104
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    move-object v1, v0

    .line 123
    :goto_0
    new-instance v3, Lcrittercism/android/t;

    iget-object v0, p0, Lcrittercism/android/s;->c:Lcrittercism/android/f;

    iget-object v4, p0, Lcrittercism/android/s;->d:Lcrittercism/android/e;

    invoke-direct {v3, v0, v4}, Lcrittercism/android/t;-><init>(Lcrittercism/android/f;Lcrittercism/android/e;)V

    .line 125
    if-eqz v1, :cond_1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/s;->e:Lcrittercism/android/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcrittercism/android/c;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketImpl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcrittercism/android/cd; {:try_start_0 .. :try_end_0} :catch_3

    .line 135
    invoke-virtual {v3, v0}, Lcrittercism/android/t;->a(Ljava/net/SocketImpl;)V

    :goto_1
    move-object v1, v0

    .line 137
    :goto_2
    return-object v1

    .line 107
    :cond_0
    iget-object v0, p0, Lcrittercism/android/s;->a:Ljava/lang/Class;

    .line 111
    :try_start_1
    iget-object v0, p0, Lcrittercism/android/s;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketImpl;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    .line 118
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v1, v2

    .line 118
    goto :goto_0

    .line 115
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    .line 128
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 131
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method
