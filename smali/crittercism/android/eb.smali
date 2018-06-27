.class public abstract enum Lcrittercism/android/eb;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcrittercism/android/eb;

.field public static final enum b:Lcrittercism/android/eb;

.field public static final enum c:Lcrittercism/android/eb;

.field public static final enum d:Lcrittercism/android/eb;

.field public static final enum e:Lcrittercism/android/eb;

.field public static final enum f:Lcrittercism/android/eb;

.field private static final synthetic g:[Lcrittercism/android/eb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcrittercism/android/eb$1;

    const-string v1, "LT"

    invoke-direct {v0, v1}, Lcrittercism/android/eb$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcrittercism/android/eb;->a:Lcrittercism/android/eb;

    .line 36
    new-instance v0, Lcrittercism/android/eb$2;

    const-string v1, "LE"

    invoke-direct {v0, v1}, Lcrittercism/android/eb$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcrittercism/android/eb;->b:Lcrittercism/android/eb;

    .line 43
    new-instance v0, Lcrittercism/android/eb$3;

    const-string v1, "EQ"

    invoke-direct {v0, v1}, Lcrittercism/android/eb$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcrittercism/android/eb;->c:Lcrittercism/android/eb;

    .line 50
    new-instance v0, Lcrittercism/android/eb$4;

    const-string v1, "GE"

    invoke-direct {v0, v1}, Lcrittercism/android/eb$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcrittercism/android/eb;->d:Lcrittercism/android/eb;

    .line 57
    new-instance v0, Lcrittercism/android/eb$5;

    const-string v1, "GT"

    invoke-direct {v0, v1}, Lcrittercism/android/eb$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcrittercism/android/eb;->e:Lcrittercism/android/eb;

    .line 64
    new-instance v0, Lcrittercism/android/eb$6;

    const-string v1, "NE"

    invoke-direct {v0, v1}, Lcrittercism/android/eb$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcrittercism/android/eb;->f:Lcrittercism/android/eb;

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Lcrittercism/android/eb;

    const/4 v1, 0x0

    sget-object v2, Lcrittercism/android/eb;->a:Lcrittercism/android/eb;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcrittercism/android/eb;->b:Lcrittercism/android/eb;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcrittercism/android/eb;->c:Lcrittercism/android/eb;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcrittercism/android/eb;->d:Lcrittercism/android/eb;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcrittercism/android/eb;->e:Lcrittercism/android/eb;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcrittercism/android/eb;->f:Lcrittercism/android/eb;

    aput-object v2, v0, v1

    sput-object v0, Lcrittercism/android/eb;->g:[Lcrittercism/android/eb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcrittercism/android/eb;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/eb;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcrittercism/android/eb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/eb;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/eb;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcrittercism/android/eb;->g:[Lcrittercism/android/eb;

    invoke-virtual {v0}, [Lcrittercism/android/eb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/eb;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcrittercism/android/kn;)Lcrittercism/android/jf;
.end method
