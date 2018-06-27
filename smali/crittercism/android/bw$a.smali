.class public final enum Lcrittercism/android/bw$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcrittercism/android/bw$a;

.field public static final enum b:Lcrittercism/android/bw$a;

.field public static final enum c:Lcrittercism/android/bw$a;

.field public static final enum d:Lcrittercism/android/bw$a;

.field public static final enum e:Lcrittercism/android/bw$a;

.field private static final synthetic f:[Lcrittercism/android/bw$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcrittercism/android/bw$a;

    const-string v1, "INTERNET_UP"

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bw$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/bw$a;->a:Lcrittercism/android/bw$a;

    new-instance v0, Lcrittercism/android/bw$a;

    const-string v1, "INTERNET_DOWN"

    invoke-direct {v0, v1, v3}, Lcrittercism/android/bw$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/bw$a;->b:Lcrittercism/android/bw$a;

    new-instance v0, Lcrittercism/android/bw$a;

    const-string v1, "CONN_TYPE_GAINED"

    invoke-direct {v0, v1, v4}, Lcrittercism/android/bw$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/bw$a;->c:Lcrittercism/android/bw$a;

    new-instance v0, Lcrittercism/android/bw$a;

    const-string v1, "CONN_TYPE_LOST"

    invoke-direct {v0, v1, v5}, Lcrittercism/android/bw$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/bw$a;->d:Lcrittercism/android/bw$a;

    new-instance v0, Lcrittercism/android/bw$a;

    const-string v1, "CONN_TYPE_SWITCHED"

    invoke-direct {v0, v1, v6}, Lcrittercism/android/bw$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/bw$a;->e:Lcrittercism/android/bw$a;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcrittercism/android/bw$a;

    sget-object v1, Lcrittercism/android/bw$a;->a:Lcrittercism/android/bw$a;

    aput-object v1, v0, v2

    sget-object v1, Lcrittercism/android/bw$a;->b:Lcrittercism/android/bw$a;

    aput-object v1, v0, v3

    sget-object v1, Lcrittercism/android/bw$a;->c:Lcrittercism/android/bw$a;

    aput-object v1, v0, v4

    sget-object v1, Lcrittercism/android/bw$a;->d:Lcrittercism/android/bw$a;

    aput-object v1, v0, v5

    sget-object v1, Lcrittercism/android/bw$a;->e:Lcrittercism/android/bw$a;

    aput-object v1, v0, v6

    sput-object v0, Lcrittercism/android/bw$a;->f:[Lcrittercism/android/bw$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/bw$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcrittercism/android/bw$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bw$a;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/bw$a;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcrittercism/android/bw$a;->f:[Lcrittercism/android/bw$a;

    invoke-virtual {v0}, [Lcrittercism/android/bw$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/bw$a;

    return-object v0
.end method
