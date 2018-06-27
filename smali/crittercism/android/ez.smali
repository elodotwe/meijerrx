.class public final Lcrittercism/android/ez;
.super Lcrittercism/android/fm;


# instance fields
.field final a:Lcrittercism/android/jc;


# direct methods
.method private constructor <init>(Lcrittercism/android/ji;Lcrittercism/android/jc;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcrittercism/android/fm;-><init>(Lcrittercism/android/ji;)V

    .line 50
    if-nez p2, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "local == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p2, p0, Lcrittercism/android/ez;->a:Lcrittercism/android/jc;

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/jd;)Lcrittercism/android/es;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcrittercism/android/ez;

    iget-object v1, p0, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    iget-object v2, p0, Lcrittercism/android/ez;->a:Lcrittercism/android/jc;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/ez;-><init>(Lcrittercism/android/ji;Lcrittercism/android/jc;)V

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcrittercism/android/ez;->a:Lcrittercism/android/jc;

    invoke-virtual {v0}, Lcrittercism/android/jc;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "local-end "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/ez;->a:Lcrittercism/android/jc;

    invoke-static {v1}, Lcrittercism/android/fc;->a(Lcrittercism/android/jc;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lcrittercism/android/es;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcrittercism/android/ez;

    iget-object v1, p0, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    iget-object v2, p0, Lcrittercism/android/ez;->a:Lcrittercism/android/jc;

    invoke-virtual {v2, p1}, Lcrittercism/android/jc;->b(I)Lcrittercism/android/jc;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcrittercism/android/ez;-><init>(Lcrittercism/android/ji;Lcrittercism/android/jc;)V

    return-object v0
.end method
