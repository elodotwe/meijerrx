.class public final enum Lcrittercism/android/fa$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcrittercism/android/fa$a;

.field public static final enum b:Lcrittercism/android/fa$a;

.field public static final enum c:Lcrittercism/android/fa$a;

.field public static final enum d:Lcrittercism/android/fa$a;

.field public static final enum e:Lcrittercism/android/fa$a;

.field public static final enum f:Lcrittercism/android/fa$a;

.field private static final synthetic g:[Lcrittercism/android/fa$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    new-instance v0, Lcrittercism/android/fa$a;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcrittercism/android/fa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/fa$a;->a:Lcrittercism/android/fa$a;

    .line 96
    new-instance v0, Lcrittercism/android/fa$a;

    const-string v1, "END_SIMPLY"

    invoke-direct {v0, v1, v4}, Lcrittercism/android/fa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/fa$a;->b:Lcrittercism/android/fa$a;

    .line 99
    new-instance v0, Lcrittercism/android/fa$a;

    const-string v1, "END_REPLACED"

    invoke-direct {v0, v1, v5}, Lcrittercism/android/fa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/fa$a;->c:Lcrittercism/android/fa$a;

    .line 102
    new-instance v0, Lcrittercism/android/fa$a;

    const-string v1, "END_MOVED"

    invoke-direct {v0, v1, v6}, Lcrittercism/android/fa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/fa$a;->d:Lcrittercism/android/fa$a;

    .line 108
    new-instance v0, Lcrittercism/android/fa$a;

    const-string v1, "END_CLOBBERED_BY_PREV"

    invoke-direct {v0, v1, v7}, Lcrittercism/android/fa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/fa$a;->e:Lcrittercism/android/fa$a;

    .line 114
    new-instance v0, Lcrittercism/android/fa$a;

    const-string v1, "END_CLOBBERED_BY_NEXT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcrittercism/android/fa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/fa$a;->f:Lcrittercism/android/fa$a;

    .line 91
    const/4 v0, 0x6

    new-array v0, v0, [Lcrittercism/android/fa$a;

    sget-object v1, Lcrittercism/android/fa$a;->a:Lcrittercism/android/fa$a;

    aput-object v1, v0, v3

    sget-object v1, Lcrittercism/android/fa$a;->b:Lcrittercism/android/fa$a;

    aput-object v1, v0, v4

    sget-object v1, Lcrittercism/android/fa$a;->c:Lcrittercism/android/fa$a;

    aput-object v1, v0, v5

    sget-object v1, Lcrittercism/android/fa$a;->d:Lcrittercism/android/fa$a;

    aput-object v1, v0, v6

    sget-object v1, Lcrittercism/android/fa$a;->e:Lcrittercism/android/fa$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcrittercism/android/fa$a;->f:Lcrittercism/android/fa$a;

    aput-object v2, v0, v1

    sput-object v0, Lcrittercism/android/fa$a;->g:[Lcrittercism/android/fa$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/fa$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const-class v0, Lcrittercism/android/fa$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/fa$a;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/fa$a;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcrittercism/android/fa$a;->g:[Lcrittercism/android/fa$a;

    invoke-virtual {v0}, [Lcrittercism/android/fa$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/fa$a;

    return-object v0
.end method
