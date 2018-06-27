.class public final Lcrittercism/android/jx;
.super Lcrittercism/android/ka;


# static fields
.field public static final a:Lcrittercism/android/jx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcrittercism/android/jx;

    invoke-direct {v0}, Lcrittercism/android/jx;-><init>()V

    sput-object v0, Lcrittercism/android/jx;->a:Lcrittercism/android/jx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcrittercism/android/ka;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "null"

    return-object v0
.end method

.method protected final b(Lcrittercism/android/jl;)I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcrittercism/android/kl;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcrittercism/android/kl;->j:Lcrittercism/android/kl;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "known-null"

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 39
    instance-of v0, p1, Lcrittercism/android/jx;

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 108
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x4466757a

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "known-null"

    return-object v0
.end method
