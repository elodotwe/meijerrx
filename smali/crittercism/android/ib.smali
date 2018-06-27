.class public final Lcrittercism/android/ib;
.super Lcrittercism/android/hl;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lcrittercism/android/kg;

.field private b:Lcrittercism/android/ia;


# direct methods
.method public constructor <init>(Lcrittercism/android/kg;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcrittercism/android/hl;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcrittercism/android/ib;->a:Lcrittercism/android/kg;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/ib;->b:Lcrittercism/android/ia;

    .line 47
    return-void
.end method


# virtual methods
.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcrittercism/android/hn;->b:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcrittercism/android/ib;->b:Lcrittercism/android/ia;

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p1, Lcrittercism/android/ha;->e:Lcrittercism/android/hu;

    .line 90
    new-instance v1, Lcrittercism/android/ia;

    iget-object v2, p0, Lcrittercism/android/ib;->a:Lcrittercism/android/kg;

    invoke-direct {v1, v2}, Lcrittercism/android/ia;-><init>(Lcrittercism/android/kg;)V

    iput-object v1, p0, Lcrittercism/android/ib;->b:Lcrittercism/android/ia;

    .line 91
    iget-object v1, p0, Lcrittercism/android/ib;->b:Lcrittercism/android/ia;

    invoke-virtual {v0, v1}, Lcrittercism/android/hu;->a(Lcrittercism/android/hv;)V

    .line 93
    :cond_0
    return-void
.end method

.method public final a(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcrittercism/android/ib;->b:Lcrittercism/android/ia;

    invoke-virtual {v0}, Lcrittercism/android/ia;->d()I

    move-result v0

    .line 100
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/ib;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcrittercism/android/ib;->a:Lcrittercism/android/kg;

    invoke-virtual {v3}, Lcrittercism/android/kg;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 102
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  string_data_off: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 105
    :cond_0
    invoke-interface {p2, v0}, Lcrittercism/android/ko;->d(I)V

    .line 106
    return-void
.end method

.method public final b_()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x4

    return v0
.end method

.method public final c()Lcrittercism/android/kg;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcrittercism/android/ib;->a:Lcrittercism/android/kg;

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Lcrittercism/android/ib;

    .line 69
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v0, p0, Lcrittercism/android/ib;->a:Lcrittercism/android/kg;

    iget-object v1, p1, Lcrittercism/android/ib;->a:Lcrittercism/android/kg;

    invoke-virtual {v0, v1}, Lcrittercism/android/kg;->a(Lcrittercism/android/jl;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 52
    instance-of v0, p1, Lcrittercism/android/ib;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 57
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 56
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcrittercism/android/ib;

    .line 57
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v0, p0, Lcrittercism/android/ib;->a:Lcrittercism/android/kg;

    iget-object v1, p1, Lcrittercism/android/ib;->a:Lcrittercism/android/kg;

    invoke-virtual {v0, v1}, Lcrittercism/android/kg;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcrittercism/android/ib;->a:Lcrittercism/android/kg;

    invoke-virtual {v0}, Lcrittercism/android/kg;->hashCode()I

    move-result v0

    return v0
.end method
