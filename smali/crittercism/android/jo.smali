.class public abstract Lcrittercism/android/jo;
.super Lcrittercism/android/kc;


# instance fields
.field private final c:Lcrittercism/android/kj;

.field private d:Lcrittercism/android/kj;


# direct methods
.method constructor <init>(Lcrittercism/android/kh;Lcrittercism/android/ke;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcrittercism/android/kc;-><init>(Lcrittercism/android/kh;Lcrittercism/android/ke;)V

    .line 49
    iget-object v0, p0, Lcrittercism/android/kc;->b:Lcrittercism/android/ke;

    invoke-virtual {v0}, Lcrittercism/android/ke;->c()Lcrittercism/android/kg;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/kg;->h()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcrittercism/android/kj;->a(Ljava/lang/String;)Lcrittercism/android/kj;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/jo;->c:Lcrittercism/android/kj;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/jo;->d:Lcrittercism/android/kj;

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Z)I
    .locals 2

    .prologue
    .line 125
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcrittercism/android/jo;->c:Lcrittercism/android/kj;

    :goto_0
    invoke-virtual {v0}, Lcrittercism/android/kj;->b()Lcrittercism/android/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/kk;->b()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcrittercism/android/jo;->d:Lcrittercism/android/kj;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcrittercism/android/kc;->a:Lcrittercism/android/kh;

    invoke-virtual {v0}, Lcrittercism/android/kh;->f()Lcrittercism/android/kl;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/jo;->c:Lcrittercism/android/kj;

    invoke-virtual {v1, v0}, Lcrittercism/android/kj;->a(Lcrittercism/android/kl;)Lcrittercism/android/kj;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/jo;->d:Lcrittercism/android/kj;

    :cond_1
    iget-object v0, p0, Lcrittercism/android/jo;->d:Lcrittercism/android/kj;

    goto :goto_0
.end method

.method protected final b(Lcrittercism/android/jl;)I
    .locals 2

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcrittercism/android/kc;->b(Lcrittercism/android/jl;)I

    move-result v0

    .line 92
    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return v0

    .line 96
    :cond_0
    check-cast p1, Lcrittercism/android/jo;

    .line 97
    iget-object v0, p0, Lcrittercism/android/jo;->c:Lcrittercism/android/kj;

    iget-object v1, p1, Lcrittercism/android/jo;->c:Lcrittercism/android/kj;

    invoke-virtual {v0, v1}, Lcrittercism/android/kj;->a(Lcrittercism/android/kj;)I

    move-result v0

    goto :goto_0
.end method

.method public final b()Lcrittercism/android/kl;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcrittercism/android/jo;->c:Lcrittercism/android/kj;

    invoke-virtual {v0}, Lcrittercism/android/kj;->a()Lcrittercism/android/kl;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcrittercism/android/kj;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcrittercism/android/jo;->c:Lcrittercism/android/kj;

    return-object v0
.end method
