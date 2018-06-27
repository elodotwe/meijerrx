.class public final Lcrittercism/android/jq;
.super Lcrittercism/android/jy;


# static fields
.field public static final a:Lcrittercism/android/jq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Lcrittercism/android/jq;->a(B)Lcrittercism/android/jq;

    move-result-object v0

    sput-object v0, Lcrittercism/android/jq;->a:Lcrittercism/android/jq;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcrittercism/android/jy;-><init>(I)V

    .line 66
    return-void
.end method

.method public static a(B)Lcrittercism/android/jq;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcrittercism/android/jq;

    invoke-direct {v0, p0}, Lcrittercism/android/jq;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcrittercism/android/jy;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcrittercism/android/kl;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcrittercism/android/kl;->b:Lcrittercism/android/kl;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "byte"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    iget v0, p0, Lcrittercism/android/jy;->h:I

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byte{0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
