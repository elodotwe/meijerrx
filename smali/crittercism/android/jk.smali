.class public final Lcrittercism/android/jk;
.super Lcrittercism/android/iw;


# instance fields
.field private final a:Lcrittercism/android/kn;


# direct methods
.method public constructor <init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/kn;)V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcrittercism/android/iw;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;)V

    .line 67
    iget v0, p1, Lcrittercism/android/jf;->c:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus branchingness"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    if-nez p4, :cond_1

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "catches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    iput-object p4, p0, Lcrittercism/android/jk;->a:Lcrittercism/android/kn;

    .line 76
    return-void
.end method

.method public static a(Lcrittercism/android/kn;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 43
    const-string v0, "catch"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    invoke-interface {p0}, Lcrittercism/android/kn;->a()I

    move-result v2

    .line 46
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 47
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-interface {p0, v0}, Lcrittercism/android/kn;->a(I)Lcrittercism/android/kl;

    move-result-object v3

    invoke-virtual {v3}, Lcrittercism/android/kl;->a_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcrittercism/android/iw$b;)V
    .locals 0

    .prologue
    .line 93
    invoke-interface {p1, p0}, Lcrittercism/android/iw$b;->a(Lcrittercism/android/jk;)V

    .line 94
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcrittercism/android/jk;->a:Lcrittercism/android/kn;

    invoke-static {v0}, Lcrittercism/android/jk;->a(Lcrittercism/android/kn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcrittercism/android/kn;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcrittercism/android/jk;->a:Lcrittercism/android/kn;

    return-object v0
.end method
