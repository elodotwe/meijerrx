.class public final Lcrittercism/android/jv;
.super Lcrittercism/android/jy;


# static fields
.field public static final a:Lcrittercism/android/jv;

.field public static final b:Lcrittercism/android/jv;

.field public static final c:Lcrittercism/android/jv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/jv;->a(I)Lcrittercism/android/jv;

    move-result-object v0

    sput-object v0, Lcrittercism/android/jv;->a:Lcrittercism/android/jv;

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/jv;->a(I)Lcrittercism/android/jv;

    move-result-object v0

    sput-object v0, Lcrittercism/android/jv;->b:Lcrittercism/android/jv;

    .line 34
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/jv;->a(I)Lcrittercism/android/jv;

    move-result-object v0

    sput-object v0, Lcrittercism/android/jv;->c:Lcrittercism/android/jv;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcrittercism/android/jy;-><init>(I)V

    .line 57
    return-void
.end method

.method public static a(I)Lcrittercism/android/jv;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcrittercism/android/jv;

    invoke-direct {v0, p0}, Lcrittercism/android/jv;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcrittercism/android/jy;->h:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcrittercism/android/kl;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcrittercism/android/kl;->e:Lcrittercism/android/kl;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "float"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    iget v0, p0, Lcrittercism/android/jy;->h:I

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "float{0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
