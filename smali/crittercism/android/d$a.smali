.class public final enum Lcrittercism/android/d$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcrittercism/android/d$a;

.field public static final enum b:Lcrittercism/android/d$a;

.field public static final enum c:Lcrittercism/android/d$a;

.field public static final enum d:Lcrittercism/android/d$a;

.field public static final enum e:Lcrittercism/android/d$a;

.field public static final enum f:Lcrittercism/android/d$a;

.field public static final enum g:Lcrittercism/android/d$a;

.field public static final enum h:Lcrittercism/android/d$a;

.field public static final enum i:Lcrittercism/android/d$a;

.field public static final enum j:Lcrittercism/android/d$a;

.field public static final enum k:Lcrittercism/android/d$a;

.field public static final enum l:Lcrittercism/android/d$a;

.field private static final synthetic n:[Lcrittercism/android/d$a;


# instance fields
.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    new-instance v0, Lcrittercism/android/d$a;

    const-string v1, "NOT_LOGGED_YET"

    const-string v2, "Not logged"

    invoke-direct {v0, v1, v4, v2}, Lcrittercism/android/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/d$a;->a:Lcrittercism/android/d$a;

    .line 40
    new-instance v0, Lcrittercism/android/d$a;

    const-string v1, "INPUT_STREAM_READ"

    const-string v2, "InputStream.read()"

    invoke-direct {v0, v1, v5, v2}, Lcrittercism/android/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/d$a;->b:Lcrittercism/android/d$a;

    .line 41
    new-instance v0, Lcrittercism/android/d$a;

    const-string v1, "INPUT_STREAM_CLOSE"

    const-string v2, "InputStream.close()"

    invoke-direct {v0, v1, v6, v2}, Lcrittercism/android/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/d$a;->c:Lcrittercism/android/d$a;

    .line 42
    new-instance v0, Lcrittercism/android/d$a;

    const-string v1, "SOCKET_CLOSE"

    const-string v2, "Socket.close()"

    invoke-direct {v0, v1, v7, v2}, Lcrittercism/android/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/d$a;->d:Lcrittercism/android/d$a;

    .line 43
    new-instance v0, Lcrittercism/android/d$a;

    const-string v1, "LEGACY_JAVANET"

    const-string v2, "Legacy java.net"

    invoke-direct {v0, v1, v8, v2}, Lcrittercism/android/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/d$a;->e:Lcrittercism/android/d$a;

    .line 44
    new-instance v0, Lcrittercism/android/d$a;

    const-string v1, "HTTP_CONTENT_LENGTH_PARSER"

    const/4 v2, 0x5

    const-string v3, "parse()"

    invoke-direct {v0, v1, v2, v3}, Lcrittercism/android/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/d$a;->f:Lcrittercism/android/d$a;

    .line 45
    new-instance v0, Lcrittercism/android/d$a;

    const-string v1, "INPUT_STREAM_FINISHED"

    const/4 v2, 0x6

    const-string v3, "finishedMessage()"

    invoke-direct {v0, v1, v2, v3}, Lcrittercism/android/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/d$a;->g:Lcrittercism/android/d$a;

    .line 46
    new-instance v0, Lcrittercism/android/d$a;

    const-string v1, "PARSING_INPUT_STREAM_LOG_ERROR"

    const/4 v2, 0x7

    const-string v3, "logError()"

    invoke-direct {v0, v1, v2, v3}, Lcrittercism/android/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/d$a;->h:Lcrittercism/android/d$a;

    .line 47
    new-instance v0, Lcrittercism/android/d$a;

    const-string v1, "SOCKET_IMPL_CONNECT"

    const/16 v2, 0x8

    const-string v3, "MonitoredSocketImpl.connect()"

    invoke-direct {v0, v1, v2, v3}, Lcrittercism/android/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/d$a;->i:Lcrittercism/android/d$a;

    .line 48
    new-instance v0, Lcrittercism/android/d$a;

    const-string v1, "SSL_SOCKET_START_HANDSHAKE"

    const/16 v2, 0x9

    const-string v3, "MonitoredSSLSocket.startHandshake"

    invoke-direct {v0, v1, v2, v3}, Lcrittercism/android/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/d$a;->j:Lcrittercism/android/d$a;

    .line 49
    new-instance v0, Lcrittercism/android/d$a;

    const-string v1, "UNIT_TEST"

    const/16 v2, 0xa

    const-string v3, "Unit test"

    invoke-direct {v0, v1, v2, v3}, Lcrittercism/android/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/d$a;->k:Lcrittercism/android/d$a;

    .line 50
    new-instance v0, Lcrittercism/android/d$a;

    const-string v1, "LOG_ENDPOINT"

    const/16 v2, 0xb

    const-string v3, "logEndpoint"

    invoke-direct {v0, v1, v2, v3}, Lcrittercism/android/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/d$a;->l:Lcrittercism/android/d$a;

    .line 38
    const/16 v0, 0xc

    new-array v0, v0, [Lcrittercism/android/d$a;

    sget-object v1, Lcrittercism/android/d$a;->a:Lcrittercism/android/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lcrittercism/android/d$a;->b:Lcrittercism/android/d$a;

    aput-object v1, v0, v5

    sget-object v1, Lcrittercism/android/d$a;->c:Lcrittercism/android/d$a;

    aput-object v1, v0, v6

    sget-object v1, Lcrittercism/android/d$a;->d:Lcrittercism/android/d$a;

    aput-object v1, v0, v7

    sget-object v1, Lcrittercism/android/d$a;->e:Lcrittercism/android/d$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcrittercism/android/d$a;->f:Lcrittercism/android/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcrittercism/android/d$a;->g:Lcrittercism/android/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcrittercism/android/d$a;->h:Lcrittercism/android/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcrittercism/android/d$a;->i:Lcrittercism/android/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcrittercism/android/d$a;->j:Lcrittercism/android/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcrittercism/android/d$a;->k:Lcrittercism/android/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcrittercism/android/d$a;->l:Lcrittercism/android/d$a;

    aput-object v2, v0, v1

    sput-object v0, Lcrittercism/android/d$a;->n:[Lcrittercism/android/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcrittercism/android/d$a;->m:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/d$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcrittercism/android/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/d$a;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/d$a;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcrittercism/android/d$a;->n:[Lcrittercism/android/d$a;

    invoke-virtual {v0}, [Lcrittercism/android/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/d$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcrittercism/android/d$a;->m:Ljava/lang/String;

    return-object v0
.end method
