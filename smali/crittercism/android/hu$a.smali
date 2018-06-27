.class final enum Lcrittercism/android/hu$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcrittercism/android/hu$a;

.field public static final enum b:Lcrittercism/android/hu$a;

.field public static final enum c:Lcrittercism/android/hu$a;

.field private static final synthetic d:[Lcrittercism/android/hu$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcrittercism/android/hu$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcrittercism/android/hu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/hu$a;->a:Lcrittercism/android/hu$a;

    .line 47
    new-instance v0, Lcrittercism/android/hu$a;

    const-string v1, "TYPE"

    invoke-direct {v0, v1, v3}, Lcrittercism/android/hu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/hu$a;->b:Lcrittercism/android/hu$a;

    .line 50
    new-instance v0, Lcrittercism/android/hu$a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v4}, Lcrittercism/android/hu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/hu$a;->c:Lcrittercism/android/hu$a;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcrittercism/android/hu$a;

    sget-object v1, Lcrittercism/android/hu$a;->a:Lcrittercism/android/hu$a;

    aput-object v1, v0, v2

    sget-object v1, Lcrittercism/android/hu$a;->b:Lcrittercism/android/hu$a;

    aput-object v1, v0, v3

    sget-object v1, Lcrittercism/android/hu$a;->c:Lcrittercism/android/hu$a;

    aput-object v1, v0, v4

    sput-object v0, Lcrittercism/android/hu$a;->d:[Lcrittercism/android/hu$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/hu$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcrittercism/android/hu$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hu$a;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/hu$a;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcrittercism/android/hu$a;->d:[Lcrittercism/android/hu$a;

    invoke-virtual {v0}, [Lcrittercism/android/hu$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/hu$a;

    return-object v0
.end method
