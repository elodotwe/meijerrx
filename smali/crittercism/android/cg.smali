.class public final enum Lcrittercism/android/cg;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcrittercism/android/cg;

.field public static final enum b:Lcrittercism/android/cg;

.field public static final enum c:Lcrittercism/android/cg;

.field public static final enum d:Lcrittercism/android/cg;

.field public static final enum e:Lcrittercism/android/cg;

.field private static final synthetic f:[Lcrittercism/android/cg;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcrittercism/android/cg;

    const-string v1, "Generic"

    invoke-direct {v0, v1, v2}, Lcrittercism/android/cg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    .line 9
    new-instance v0, Lcrittercism/android/cg;

    const-string v1, "NSURLConnection"

    invoke-direct {v0, v1, v3}, Lcrittercism/android/cg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/cg;->b:Lcrittercism/android/cg;

    .line 10
    new-instance v0, Lcrittercism/android/cg;

    const-string v1, "ASI"

    invoke-direct {v0, v1, v4}, Lcrittercism/android/cg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/cg;->c:Lcrittercism/android/cg;

    .line 11
    new-instance v0, Lcrittercism/android/cg;

    const-string v1, "Android"

    invoke-direct {v0, v1, v5}, Lcrittercism/android/cg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/cg;->d:Lcrittercism/android/cg;

    .line 12
    new-instance v0, Lcrittercism/android/cg;

    const-string v1, "XMLHttpRequest"

    invoke-direct {v0, v1, v6}, Lcrittercism/android/cg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/cg;->e:Lcrittercism/android/cg;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcrittercism/android/cg;

    sget-object v1, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    aput-object v1, v0, v2

    sget-object v1, Lcrittercism/android/cg;->b:Lcrittercism/android/cg;

    aput-object v1, v0, v3

    sget-object v1, Lcrittercism/android/cg;->c:Lcrittercism/android/cg;

    aput-object v1, v0, v4

    sget-object v1, Lcrittercism/android/cg;->d:Lcrittercism/android/cg;

    aput-object v1, v0, v5

    sget-object v1, Lcrittercism/android/cg;->e:Lcrittercism/android/cg;

    aput-object v1, v0, v6

    sput-object v0, Lcrittercism/android/cg;->f:[Lcrittercism/android/cg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)I
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcrittercism/android/cg;->d:Lcrittercism/android/cg;

    invoke-virtual {v0}, Lcrittercism/android/cg;->ordinal()I

    move-result v0

    .line 15
    instance-of v1, p0, Lcom/crittercism/error/CRXMLHttpRequestException;

    if-eqz v1, :cond_0

    .line 19
    sget-object v0, Lcrittercism/android/cg;->e:Lcrittercism/android/cg;

    invoke-virtual {v0}, Lcrittercism/android/cg;->ordinal()I

    move-result v0

    .line 21
    :cond_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/cg;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcrittercism/android/cg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/cg;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/cg;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcrittercism/android/cg;->f:[Lcrittercism/android/cg;

    invoke-virtual {v0}, [Lcrittercism/android/cg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/cg;

    return-object v0
.end method
