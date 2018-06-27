.class public abstract Lcrittercism/android/es;
.super Ljava/lang/Object;


# instance fields
.field c:I

.field final d:Lcrittercism/android/eu;

.field final e:Lcrittercism/android/ji;

.field public final f:Lcrittercism/android/jd;


# direct methods
.method public constructor <init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "opcode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    if-nez p2, :cond_1

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "position == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    if-nez p3, :cond_2

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "registers == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/es;->c:I

    .line 109
    iput-object p1, p0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    .line 110
    iput-object p2, p0, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    .line 111
    iput-object p3, p0, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 112
    return-void
.end method

.method public static a(Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jc;)Lcrittercism/android/fi;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1}, Lcrittercism/android/jc;->i()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 58
    :goto_0
    invoke-virtual {p1}, Lcrittercism/android/jc;->b()Lcrittercism/android/kl;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/kl;->i()Z

    move-result v1

    .line 59
    invoke-virtual {p1}, Lcrittercism/android/jc;->e()I

    move-result v2

    .line 60
    invoke-virtual {p2}, Lcrittercism/android/jc;->e()I

    move-result v3

    .line 63
    or-int/2addr v3, v2

    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    .line 64
    if-eqz v1, :cond_1

    sget-object v0, Lcrittercism/android/ev;->i:Lcrittercism/android/eu;

    .line 74
    :goto_1
    new-instance v1, Lcrittercism/android/fi;

    invoke-static {p1, p2}, Lcrittercism/android/jd;->a(Lcrittercism/android/jc;Lcrittercism/android/jc;)Lcrittercism/android/jd;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Lcrittercism/android/fi;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;)V

    return-object v1

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Lcrittercism/android/ev;->c:Lcrittercism/android/eu;

    goto :goto_1

    :cond_2
    sget-object v0, Lcrittercism/android/ev;->f:Lcrittercism/android/eu;

    goto :goto_1

    .line 66
    :cond_3
    const/16 v3, 0x100

    if-ge v2, v3, :cond_6

    .line 67
    if-eqz v1, :cond_4

    sget-object v0, Lcrittercism/android/ev;->j:Lcrittercism/android/eu;

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    sget-object v0, Lcrittercism/android/ev;->d:Lcrittercism/android/eu;

    goto :goto_1

    :cond_5
    sget-object v0, Lcrittercism/android/ev;->g:Lcrittercism/android/eu;

    goto :goto_1

    .line 70
    :cond_6
    if-eqz v1, :cond_7

    sget-object v0, Lcrittercism/android/ev;->k:Lcrittercism/android/eu;

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    sget-object v0, Lcrittercism/android/ev;->e:Lcrittercism/android/eu;

    goto :goto_1

    :cond_8
    sget-object v0, Lcrittercism/android/ev;->h:Lcrittercism/android/eu;

    goto :goto_1
.end method


# virtual methods
.method public abstract a(Lcrittercism/android/eu;)Lcrittercism/android/es;
.end method

.method public abstract a(Lcrittercism/android/jd;)Lcrittercism/android/es;
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 346
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcrittercism/android/es;->a(Z)Ljava/lang/String;

    move-result-object v1

    .line 348
    if-nez v1, :cond_0

    .line 349
    const/4 v0, 0x0

    .line 356
    :goto_0
    return-object v0

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcrittercism/android/es;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 354
    if-nez p2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 356
    :goto_1
    const-string v4, ""

    invoke-static {v2, v3, v4, v1, v0}, Lcrittercism/android/lg;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 354
    :cond_1
    sub-int v0, p2, v3

    goto :goto_1
.end method

.method protected abstract a(Z)Ljava/lang/String;
.end method

.method public abstract a(Lcrittercism/android/ko;)V
.end method

.method public abstract c(I)Lcrittercism/android/es;
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcrittercism/android/es;->c:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Lcrittercism/android/es;->c:I

    if-gez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "address not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget v0, p0, Lcrittercism/android/es;->c:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 323
    iget v0, p0, Lcrittercism/android/es;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 324
    const-string v0, "%04x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcrittercism/android/es;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract f()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x20

    .line 117
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 119
    invoke-virtual {p0}, Lcrittercism/android/es;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    iget-object v0, p0, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 123
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    iget-object v0, p0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    iget v0, v0, Lcrittercism/android/eu;->a:I

    invoke-static {v0}, Lcrittercism/android/ik;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const/4 v0, 0x0

    .line 127
    iget-object v2, p0, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    iget-object v2, v2, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v0, p0, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    const-string v2, " "

    const-string v3, ", "

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcrittercism/android/jd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const/4 v0, 0x1

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/es;->a()Ljava/lang/String;

    move-result-object v2

    .line 133
    if-eqz v2, :cond_2

    .line 134
    if-eqz v0, :cond_1

    .line 135
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
