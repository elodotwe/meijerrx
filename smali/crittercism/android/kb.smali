.class public final Lcrittercism/android/kb;
.super Lcrittercism/android/jz;


# static fields
.field public static final a:Lcrittercism/android/kb;

.field public static final b:Lcrittercism/android/kb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcrittercism/android/kb;->a(J)Lcrittercism/android/kb;

    move-result-object v0

    sput-object v0, Lcrittercism/android/kb;->a:Lcrittercism/android/kb;

    .line 31
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcrittercism/android/kb;->a(J)Lcrittercism/android/kb;

    move-result-object v0

    sput-object v0, Lcrittercism/android/kb;->b:Lcrittercism/android/kb;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcrittercism/android/jz;-><init>(J)V

    .line 54
    return-void
.end method

.method public static a(J)Lcrittercism/android/kb;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcrittercism/android/kb;

    invoke-direct {v0, p0, p1}, Lcrittercism/android/kb;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcrittercism/android/jz;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcrittercism/android/kl;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcrittercism/android/kl;->g:Lcrittercism/android/kl;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "long"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    iget-wide v0, p0, Lcrittercism/android/jz;->c:J

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "long{0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/kw;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
