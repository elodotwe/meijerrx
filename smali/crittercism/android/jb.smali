.class public final Lcrittercism/android/jb;
.super Lcrittercism/android/iw;


# direct methods
.method public constructor <init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jc;)V
    .locals 1

    .prologue
    .line 68
    invoke-static {p4}, Lcrittercism/android/jd;->a(Lcrittercism/android/jc;)Lcrittercism/android/jd;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcrittercism/android/jb;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcrittercism/android/iw;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;)V

    .line 44
    iget v0, p1, Lcrittercism/android/jf;->c:I

    packed-switch v0, :pswitch_data_0

    .line 51
    if-eqz p3, :cond_0

    iget v0, p1, Lcrittercism/android/jf;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t mix branchingness with result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus branchingness"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    return-void

    .line 44
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcrittercism/android/iw$b;)V
    .locals 0

    .prologue
    .line 80
    invoke-interface {p1, p0}, Lcrittercism/android/iw$b;->a(Lcrittercism/android/jb;)V

    .line 81
    return-void
.end method

.method public final c()Lcrittercism/android/kn;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcrittercism/android/kk;->a:Lcrittercism/android/kk;

    return-object v0
.end method
