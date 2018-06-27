.class public final Lcrittercism/android/eq;
.super Lcrittercism/android/ew;


# instance fields
.field public final a:Lcrittercism/android/jl;

.field b:I

.field private g:I


# direct methods
.method public constructor <init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/jl;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcrittercism/android/ew;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;)V

    .line 58
    if-nez p4, :cond_0

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "constant == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p4, p0, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    .line 63
    iput v0, p0, Lcrittercism/android/eq;->b:I

    .line 64
    iput v0, p0, Lcrittercism/android/eq;->g:I

    .line 65
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/eu;)Lcrittercism/android/es;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Lcrittercism/android/eq;

    iget-object v1, p0, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    iget-object v2, p0, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    iget-object v3, p0, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    invoke-direct {v0, p1, v1, v2, v3}, Lcrittercism/android/eq;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/jl;)V

    .line 73
    iget v1, p0, Lcrittercism/android/eq;->b:I

    if-ltz v1, :cond_0

    .line 74
    iget v1, p0, Lcrittercism/android/eq;->b:I

    invoke-virtual {v0, v1}, Lcrittercism/android/eq;->a(I)V

    .line 77
    :cond_0
    iget v1, p0, Lcrittercism/android/eq;->g:I

    if-ltz v1, :cond_1

    .line 78
    iget v1, p0, Lcrittercism/android/eq;->g:I

    invoke-virtual {v0, v1}, Lcrittercism/android/eq;->b(I)V

    .line 81
    :cond_1
    return-object v0
.end method

.method public final a(Lcrittercism/android/jd;)Lcrittercism/android/es;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Lcrittercism/android/eq;

    iget-object v1, p0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    iget-object v2, p0, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    iget-object v3, p0, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    invoke-direct {v0, v1, v2, p1, v3}, Lcrittercism/android/eq;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/jl;)V

    .line 90
    iget v1, p0, Lcrittercism/android/eq;->b:I

    if-ltz v1, :cond_0

    .line 91
    iget v1, p0, Lcrittercism/android/eq;->b:I

    invoke-virtual {v0, v1}, Lcrittercism/android/eq;->a(I)V

    .line 94
    :cond_0
    iget v1, p0, Lcrittercism/android/eq;->g:I

    if-ltz v1, :cond_1

    .line 95
    iget v1, p0, Lcrittercism/android/eq;->g:I

    invoke-virtual {v0, v1}, Lcrittercism/android/eq;->b(I)V

    .line 98
    :cond_1
    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    invoke-virtual {v0}, Lcrittercism/android/jl;->a_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 142
    if-gez p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget v0, p0, Lcrittercism/android/eq;->b:I

    if-ltz v0, :cond_1

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index already set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    iput p1, p0, Lcrittercism/android/eq;->b:I

    .line 151
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 117
    iget v0, p0, Lcrittercism/android/eq;->b:I

    if-gez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index not yet set for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget v0, p0, Lcrittercism/android/eq;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 189
    if-gez p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iget v0, p0, Lcrittercism/android/eq;->g:I

    if-ltz v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "class index already set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    iput p1, p0, Lcrittercism/android/eq;->g:I

    .line 198
    return-void
.end method
