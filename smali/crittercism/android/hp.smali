.class public abstract Lcrittercism/android/hp;
.super Lcrittercism/android/hk;


# instance fields
.field final b:Lcrittercism/android/kc;


# direct methods
.method public constructor <init>(Lcrittercism/android/kc;)V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p1}, Lcrittercism/android/kc;->g()Lcrittercism/android/kh;

    move-result-object v0

    invoke-direct {p0, v0}, Lcrittercism/android/hk;-><init>(Lcrittercism/android/kh;)V

    .line 41
    iput-object p1, p0, Lcrittercism/android/hp;->b:Lcrittercism/android/kc;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lcrittercism/android/ha;)V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcrittercism/android/hk;->a(Lcrittercism/android/ha;)V

    .line 55
    iget-object v0, p1, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    .line 56
    iget-object v1, p0, Lcrittercism/android/hp;->b:Lcrittercism/android/kc;

    invoke-virtual {v1}, Lcrittercism/android/kc;->h()Lcrittercism/android/ke;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/ke;->b()Lcrittercism/android/kg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/ic;->a(Lcrittercism/android/kg;)Lcrittercism/android/ib;

    .line 57
    return-void
.end method

.method public final a(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 62
    iget-object v0, p1, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    .line 63
    iget-object v1, p1, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    .line 64
    iget-object v2, p0, Lcrittercism/android/hp;->b:Lcrittercism/android/kc;

    invoke-virtual {v2}, Lcrittercism/android/kc;->h()Lcrittercism/android/ke;

    move-result-object v2

    .line 65
    iget-object v3, p0, Lcrittercism/android/hk;->a:Lcrittercism/android/kh;

    invoke-virtual {v0, v3}, Lcrittercism/android/ie;->b(Lcrittercism/android/kh;)I

    move-result v0

    .line 66
    invoke-virtual {v2}, Lcrittercism/android/ke;->b()Lcrittercism/android/kg;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcrittercism/android/ic;->b(Lcrittercism/android/kg;)I

    move-result v1

    .line 67
    invoke-virtual {p0, p1}, Lcrittercism/android/hp;->b(Lcrittercism/android/ha;)I

    move-result v2

    .line 69
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/hp;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcrittercism/android/hp;->b:Lcrittercism/android/kc;

    invoke-virtual {v4}, Lcrittercism/android/kc;->a_()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v8, v3}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  class_idx: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7, v3}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 72
    const-string v3, "  %-10s %s"

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/hp;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    invoke-static {v2}, Lcrittercism/android/kw;->b(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7, v3}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 74
    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  name_idx:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 77
    :cond_0
    invoke-interface {p2, v0}, Lcrittercism/android/ko;->c(I)V

    .line 78
    invoke-interface {p2, v2}, Lcrittercism/android/ko;->c(I)V

    .line 79
    invoke-interface {p2, v1}, Lcrittercism/android/ko;->d(I)V

    .line 80
    return-void
.end method

.method protected abstract b(Lcrittercism/android/ha;)I
.end method

.method public final b_()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x8

    return v0
.end method

.method protected abstract c()Ljava/lang/String;
.end method
