.class final enum Lcrittercism/android/ay$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcrittercism/android/ay$a;

.field public static final enum b:Lcrittercism/android/ay$a;

.field public static final enum c:Lcrittercism/android/ay$a;

.field public static final enum d:Lcrittercism/android/ay$a;

.field public static final enum e:Lcrittercism/android/ay$a;

.field public static final enum f:Lcrittercism/android/ay$a;

.field public static final enum g:Lcrittercism/android/ay$a;

.field public static final enum h:Lcrittercism/android/ay$a;

.field public static final enum i:Lcrittercism/android/ay$a;

.field private static final synthetic j:[Lcrittercism/android/ay$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Lcrittercism/android/ay$a;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v3}, Lcrittercism/android/ay$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ay$a;->a:Lcrittercism/android/ay$a;

    new-instance v0, Lcrittercism/android/ay$a;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcrittercism/android/ay$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ay$a;->b:Lcrittercism/android/ay$a;

    new-instance v0, Lcrittercism/android/ay$a;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v5}, Lcrittercism/android/ay$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ay$a;->c:Lcrittercism/android/ay$a;

    new-instance v0, Lcrittercism/android/ay$a;

    const-string v1, "SLOW"

    invoke-direct {v0, v1, v6}, Lcrittercism/android/ay$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ay$a;->d:Lcrittercism/android/ay$a;

    new-instance v0, Lcrittercism/android/ay$a;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcrittercism/android/ay$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ay$a;->e:Lcrittercism/android/ay$a;

    new-instance v0, Lcrittercism/android/ay$a;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcrittercism/android/ay$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ay$a;->f:Lcrittercism/android/ay$a;

    new-instance v0, Lcrittercism/android/ay$a;

    const-string v1, "CRASHED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcrittercism/android/ay$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ay$a;->g:Lcrittercism/android/ay$a;

    new-instance v0, Lcrittercism/android/ay$a;

    const-string v1, "ABORTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcrittercism/android/ay$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ay$a;->h:Lcrittercism/android/ay$a;

    new-instance v0, Lcrittercism/android/ay$a;

    const-string v1, "INTERRUPTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcrittercism/android/ay$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ay$a;->i:Lcrittercism/android/ay$a;

    .line 48
    const/16 v0, 0x9

    new-array v0, v0, [Lcrittercism/android/ay$a;

    sget-object v1, Lcrittercism/android/ay$a;->a:Lcrittercism/android/ay$a;

    aput-object v1, v0, v3

    sget-object v1, Lcrittercism/android/ay$a;->b:Lcrittercism/android/ay$a;

    aput-object v1, v0, v4

    sget-object v1, Lcrittercism/android/ay$a;->c:Lcrittercism/android/ay$a;

    aput-object v1, v0, v5

    sget-object v1, Lcrittercism/android/ay$a;->d:Lcrittercism/android/ay$a;

    aput-object v1, v0, v6

    sget-object v1, Lcrittercism/android/ay$a;->e:Lcrittercism/android/ay$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcrittercism/android/ay$a;->f:Lcrittercism/android/ay$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcrittercism/android/ay$a;->g:Lcrittercism/android/ay$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcrittercism/android/ay$a;->h:Lcrittercism/android/ay$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcrittercism/android/ay$a;->i:Lcrittercism/android/ay$a;

    aput-object v2, v0, v1

    sput-object v0, Lcrittercism/android/ay$a;->j:[Lcrittercism/android/ay$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/ay$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcrittercism/android/ay$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ay$a;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/ay$a;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcrittercism/android/ay$a;->j:[Lcrittercism/android/ay$a;

    invoke-virtual {v0}, [Lcrittercism/android/ay$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/ay$a;

    return-object v0
.end method
