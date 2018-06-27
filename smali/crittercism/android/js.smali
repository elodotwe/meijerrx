.class public final Lcrittercism/android/js;
.super Lcrittercism/android/jz;


# static fields
.field public static final a:Lcrittercism/android/js;

.field public static final b:Lcrittercism/android/js;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lcrittercism/android/js;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcrittercism/android/js;-><init>(J)V

    sput-object v0, Lcrittercism/android/js;->a:Lcrittercism/android/js;

    .line 32
    new-instance v0, Lcrittercism/android/js;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcrittercism/android/js;-><init>(J)V

    sput-object v0, Lcrittercism/android/js;->b:Lcrittercism/android/js;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcrittercism/android/jz;-><init>(J)V

    .line 56
    return-void
.end method

.method public static a(J)Lcrittercism/android/js;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcrittercism/android/js;

    invoke-direct {v0, p0, p1}, Lcrittercism/android/js;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcrittercism/android/jz;->c:J

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcrittercism/android/kl;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcrittercism/android/kl;->d:Lcrittercism/android/kl;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "double"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    iget-wide v0, p0, Lcrittercism/android/jz;->c:J

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "double{0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/kw;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
