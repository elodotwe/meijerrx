.class public final enum Lcrittercism/android/io;
.super Ljava/lang/Enum;

# interfaces
.implements Lcrittercism/android/lf;


# static fields
.field public static final enum a:Lcrittercism/android/io;

.field public static final enum b:Lcrittercism/android/io;

.field public static final enum c:Lcrittercism/android/io;

.field public static final enum d:Lcrittercism/android/io;

.field private static final synthetic f:[Lcrittercism/android/io;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcrittercism/android/io;

    const-string v1, "RUNTIME"

    const-string v2, "runtime"

    invoke-direct {v0, v1, v3, v2}, Lcrittercism/android/io;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/io;->a:Lcrittercism/android/io;

    .line 26
    new-instance v0, Lcrittercism/android/io;

    const-string v1, "BUILD"

    const-string v2, "build"

    invoke-direct {v0, v1, v4, v2}, Lcrittercism/android/io;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/io;->b:Lcrittercism/android/io;

    .line 27
    new-instance v0, Lcrittercism/android/io;

    const-string v1, "SYSTEM"

    const-string v2, "system"

    invoke-direct {v0, v1, v5, v2}, Lcrittercism/android/io;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/io;->c:Lcrittercism/android/io;

    .line 28
    new-instance v0, Lcrittercism/android/io;

    const-string v1, "EMBEDDED"

    const-string v2, "embedded"

    invoke-direct {v0, v1, v6, v2}, Lcrittercism/android/io;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/io;->d:Lcrittercism/android/io;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcrittercism/android/io;

    sget-object v1, Lcrittercism/android/io;->a:Lcrittercism/android/io;

    aput-object v1, v0, v3

    sget-object v1, Lcrittercism/android/io;->b:Lcrittercism/android/io;

    aput-object v1, v0, v4

    sget-object v1, Lcrittercism/android/io;->c:Lcrittercism/android/io;

    aput-object v1, v0, v5

    sget-object v1, Lcrittercism/android/io;->d:Lcrittercism/android/io;

    aput-object v1, v0, v6

    sput-object v0, Lcrittercism/android/io;->f:[Lcrittercism/android/io;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcrittercism/android/io;->e:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/io;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcrittercism/android/io;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/io;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/io;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcrittercism/android/io;->f:[Lcrittercism/android/io;

    invoke-virtual {v0}, [Lcrittercism/android/io;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/io;

    return-object v0
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcrittercism/android/io;->e:Ljava/lang/String;

    return-object v0
.end method
