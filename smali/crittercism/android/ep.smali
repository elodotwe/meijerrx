.class public final Lcrittercism/android/ep;
.super Lcrittercism/android/fm;


# direct methods
.method public constructor <init>(Lcrittercism/android/ji;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcrittercism/android/fm;-><init>(Lcrittercism/android/ji;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/jd;)Lcrittercism/android/es;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcrittercism/android/ep;

    iget-object v1, p0, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    invoke-direct {v0, v1}, Lcrittercism/android/ep;-><init>(Lcrittercism/android/ji;)V

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "code-address"

    return-object v0
.end method
