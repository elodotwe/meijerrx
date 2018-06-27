.class public final Lcrittercism/android/jr;
.super Lcrittercism/android/jy;


# static fields
.field public static final a:Lcrittercism/android/jr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Lcrittercism/android/jr;->a(C)Lcrittercism/android/jr;

    move-result-object v0

    sput-object v0, Lcrittercism/android/jr;->a:Lcrittercism/android/jr;

    return-void
.end method

.method private constructor <init>(C)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcrittercism/android/jy;-><init>(I)V

    .line 66
    return-void
.end method

.method public static a(C)Lcrittercism/android/jr;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcrittercism/android/jr;

    invoke-direct {v0, p0}, Lcrittercism/android/jr;-><init>(C)V

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
    sget-object v0, Lcrittercism/android/kl;->c:Lcrittercism/android/kl;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "char"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    iget v0, p0, Lcrittercism/android/jy;->h:I

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "char{0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->b(I)Ljava/lang/String;

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
