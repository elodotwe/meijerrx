.class public final Lcrittercism/android/gz;
.super Lcrittercism/android/hv;


# instance fields
.field private final a:Lcrittercism/android/er;

.field private c:[B

.field private final d:Z

.field private final e:Lcrittercism/android/kd;


# direct methods
.method public constructor <init>(Lcrittercism/android/er;ZLcrittercism/android/kd;)V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcrittercism/android/hv;-><init>(II)V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "code == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lcrittercism/android/gz;->a:Lcrittercism/android/er;

    .line 52
    iput-boolean p2, p0, Lcrittercism/android/gz;->d:Z

    .line 53
    iput-object p3, p0, Lcrittercism/android/gz;->e:Lcrittercism/android/kd;

    .line 54
    return-void
.end method


# virtual methods
.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcrittercism/android/hn;->o:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method protected final a(Lcrittercism/android/hz;I)V
    .locals 4

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p1, Lcrittercism/android/hz;->a:Lcrittercism/android/ha;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcrittercism/android/gz;->a(Lcrittercism/android/ha;Ljava/lang/String;Lcrittercism/android/ko;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/gz;->c:[B

    .line 75
    iget-object v0, p0, Lcrittercism/android/gz;->c:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcrittercism/android/gz;->a(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-void

    .line 76
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while placing debug info for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcrittercism/android/gz;->e:Lcrittercism/android/kd;

    invoke-virtual {v2}, Lcrittercism/android/kd;->a_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcrittercism/android/ku;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcrittercism/android/ku;

    move-result-object v0

    throw v0
.end method

.method final a(Lcrittercism/android/ha;Ljava/lang/String;Lcrittercism/android/ko;Z)[B
    .locals 8

    .prologue
    .line 142
    iget-object v0, p0, Lcrittercism/android/gz;->a:Lcrittercism/android/er;

    invoke-virtual {v0}, Lcrittercism/android/er;->a()V

    iget-object v1, v0, Lcrittercism/android/er;->e:Lcrittercism/android/ff;

    iget-object v0, p0, Lcrittercism/android/gz;->a:Lcrittercism/android/er;

    invoke-virtual {v0}, Lcrittercism/android/er;->a()V

    iget-object v2, v0, Lcrittercism/android/er;->f:Lcrittercism/android/fa;

    iget-object v0, p0, Lcrittercism/android/gz;->a:Lcrittercism/android/er;

    invoke-virtual {v0}, Lcrittercism/android/er;->b()Lcrittercism/android/et;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/et;->b()I

    move-result v4

    iget v5, v0, Lcrittercism/android/et;->a:I

    new-instance v0, Lcrittercism/android/gy;

    iget-boolean v6, p0, Lcrittercism/android/gz;->d:Z

    iget-object v7, p0, Lcrittercism/android/gz;->e:Lcrittercism/android/kd;

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcrittercism/android/gy;-><init>(Lcrittercism/android/ff;Lcrittercism/android/fa;Lcrittercism/android/ha;IIZLcrittercism/android/kd;)V

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lcrittercism/android/gy;->a()[B

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    .line 142
    :cond_0
    iput-object p2, v0, Lcrittercism/android/gy;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lcrittercism/android/gy;->b:Ljava/io/PrintWriter;

    iput-object p3, v0, Lcrittercism/android/gy;->a:Lcrittercism/android/ko;

    iput-boolean p4, v0, Lcrittercism/android/gy;->d:Z

    invoke-virtual {v0}, Lcrittercism/android/gy;->a()[B

    move-result-object v0

    goto :goto_0
.end method

.method protected final a_(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 2

    .prologue
    .line 115
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/gz;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " debug info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcrittercism/android/ko;->a(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcrittercism/android/gz;->a(Lcrittercism/android/ha;Ljava/lang/String;Lcrittercism/android/ko;Z)[B

    .line 125
    :cond_0
    iget-object v0, p0, Lcrittercism/android/gz;->c:[B

    invoke-interface {p2, v0}, Lcrittercism/android/ko;->a([B)V

    .line 126
    return-void
.end method
