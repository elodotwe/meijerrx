.class public abstract Lcrittercism/android/kc;
.super Lcrittercism/android/ki;


# instance fields
.field public final a:Lcrittercism/android/kh;

.field public final b:Lcrittercism/android/ke;


# direct methods
.method constructor <init>(Lcrittercism/android/kh;Lcrittercism/android/ke;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcrittercism/android/ki;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "definingClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    if-nez p2, :cond_1

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nat == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    iput-object p1, p0, Lcrittercism/android/kc;->a:Lcrittercism/android/kh;

    .line 45
    iput-object p2, p0, Lcrittercism/android/kc;->b:Lcrittercism/android/ke;

    .line 46
    return-void
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcrittercism/android/kc;->a:Lcrittercism/android/kh;

    invoke-virtual {v1}, Lcrittercism/android/kh;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/kc;->b:Lcrittercism/android/ke;

    invoke-virtual {v1}, Lcrittercism/android/ke;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcrittercism/android/jl;)I
    .locals 2

    .prologue
    .line 75
    check-cast p1, Lcrittercism/android/kc;

    .line 76
    iget-object v0, p0, Lcrittercism/android/kc;->a:Lcrittercism/android/kh;

    iget-object v1, p1, Lcrittercism/android/kc;->a:Lcrittercism/android/kh;

    invoke-virtual {v0, v1}, Lcrittercism/android/kh;->a(Lcrittercism/android/jl;)I

    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcrittercism/android/kc;->b:Lcrittercism/android/ke;

    invoke-virtual {v0}, Lcrittercism/android/ke;->b()Lcrittercism/android/kg;

    move-result-object v0

    .line 83
    iget-object v1, p1, Lcrittercism/android/kc;->b:Lcrittercism/android/ke;

    invoke-virtual {v1}, Lcrittercism/android/ke;->b()Lcrittercism/android/kg;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcrittercism/android/kg;->a(Lcrittercism/android/jl;)I

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 56
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 55
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcrittercism/android/kc;

    .line 56
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p0, Lcrittercism/android/kc;->a:Lcrittercism/android/kh;

    iget-object v2, p1, Lcrittercism/android/kc;->a:Lcrittercism/android/kh;

    invoke-virtual {v1, v2}, Lcrittercism/android/kh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcrittercism/android/kc;->b:Lcrittercism/android/ke;

    iget-object v2, p1, Lcrittercism/android/kc;->b:Lcrittercism/android/ke;

    invoke-virtual {v1, v2}, Lcrittercism/android/ke;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final g()Lcrittercism/android/kh;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcrittercism/android/kc;->a:Lcrittercism/android/kh;

    return-object v0
.end method

.method public final h()Lcrittercism/android/ke;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcrittercism/android/kc;->b:Lcrittercism/android/ke;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcrittercism/android/kc;->a:Lcrittercism/android/kh;

    invoke-virtual {v0}, Lcrittercism/android/kh;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcrittercism/android/kc;->b:Lcrittercism/android/ke;

    invoke-virtual {v1}, Lcrittercism/android/ke;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/kc;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcrittercism/android/kc;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
