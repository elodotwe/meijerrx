.class public final Lcrittercism/android/he;
.super Lcrittercism/android/hd;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lcrittercism/android/kd;

.field private final c:Lcrittercism/android/gx;


# direct methods
.method public constructor <init>(Lcrittercism/android/kd;ILcrittercism/android/er;Lcrittercism/android/kn;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0, p2}, Lcrittercism/android/hd;-><init>(I)V

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lcrittercism/android/he;->a:Lcrittercism/android/kd;

    .line 64
    if-nez p3, :cond_1

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/he;->c:Lcrittercism/android/gx;

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_1
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 68
    :goto_1
    new-instance v1, Lcrittercism/android/gx;

    invoke-direct {v1, p1, p3, v0, p4}, Lcrittercism/android/gx;-><init>(Lcrittercism/android/kd;Lcrittercism/android/er;ZLcrittercism/android/kn;)V

    iput-object v1, p0, Lcrittercism/android/he;->c:Lcrittercism/android/gx;

    goto :goto_0

    .line 67
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lcrittercism/android/he;)I
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcrittercism/android/he;->a:Lcrittercism/android/kd;

    iget-object v1, p1, Lcrittercism/android/he;->a:Lcrittercism/android/kd;

    invoke-virtual {v0, v1}, Lcrittercism/android/kd;->a(Lcrittercism/android/jl;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcrittercism/android/ha;Lcrittercism/android/ko;II)I
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    iget-object v0, p1, Lcrittercism/android/ha;->j:Lcrittercism/android/ht;

    iget-object v3, p0, Lcrittercism/android/he;->a:Lcrittercism/android/kd;

    invoke-virtual {v0, v3}, Lcrittercism/android/ht;->b(Lcrittercism/android/jo;)I

    move-result v4

    .line 162
    sub-int v5, v4, p3

    .line 163
    iget v6, p0, Lcrittercism/android/hd;->b:I

    .line 164
    iget-object v0, p0, Lcrittercism/android/he;->c:Lcrittercism/android/gx;

    invoke-static {v0}, Lcrittercism/android/hv;->b(Lcrittercism/android/hv;)I

    move-result v7

    .line 165
    if-eqz v7, :cond_0

    move v3, v1

    .line 166
    :goto_0
    and-int/lit16 v0, v6, 0x500

    if-nez v0, :cond_1

    move v0, v1

    .line 173
    :goto_1
    if-eq v3, v0, :cond_2

    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "code vs. access_flags mismatch"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v3, v2

    .line 165
    goto :goto_0

    :cond_1
    move v0, v2

    .line 166
    goto :goto_1

    .line 178
    :cond_2
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    const-string v0, "  [%x] %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v2

    iget-object v8, p0, Lcrittercism/android/he;->a:Lcrittercism/android/kd;

    invoke-virtual {v8}, Lcrittercism/android/kd;->a_()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 181
    invoke-static {v5}, Lcrittercism/android/lb;->a(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    method_idx:   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 183
    invoke-static {v6}, Lcrittercism/android/lb;->a(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    access_flags: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x31dff

    const/4 v3, 0x3

    invoke-static {v6, v2, v3}, Lcrittercism/android/ir;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 186
    invoke-static {v7}, Lcrittercism/android/lb;->a(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    code_off:     "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 190
    :cond_3
    invoke-interface {p2, v5}, Lcrittercism/android/ko;->e(I)I

    .line 191
    invoke-interface {p2, v6}, Lcrittercism/android/ko;->e(I)I

    .line 192
    invoke-interface {p2, v7}, Lcrittercism/android/ko;->e(I)I

    .line 194
    return v4
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p1, Lcrittercism/android/ha;->j:Lcrittercism/android/ht;

    .line 118
    iget-object v1, p1, Lcrittercism/android/ha;->b:Lcrittercism/android/hu;

    .line 120
    iget-object v2, p0, Lcrittercism/android/he;->a:Lcrittercism/android/kd;

    invoke-virtual {v0, v2}, Lcrittercism/android/ht;->a(Lcrittercism/android/jo;)Lcrittercism/android/hs;

    .line 122
    iget-object v0, p0, Lcrittercism/android/he;->c:Lcrittercism/android/gx;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcrittercism/android/he;->c:Lcrittercism/android/gx;

    invoke-virtual {v1, v0}, Lcrittercism/android/hu;->a(Lcrittercism/android/hv;)V

    .line 125
    :cond_0
    return-void
.end method

.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcrittercism/android/he;->a:Lcrittercism/android/kd;

    invoke-virtual {v0}, Lcrittercism/android/kd;->a_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Lcrittercism/android/he;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcrittercism/android/he;->a(Lcrittercism/android/he;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 74
    instance-of v1, p1, Lcrittercism/android/he;

    if-nez v1, :cond_1

    .line 78
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcrittercism/android/he;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcrittercism/android/he;->a(Lcrittercism/android/he;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    iget v1, p0, Lcrittercism/android/hd;->b:I

    invoke-static {v1}, Lcrittercism/android/kw;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    iget-object v1, p0, Lcrittercism/android/he;->a:Lcrittercism/android/kd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 104
    iget-object v1, p0, Lcrittercism/android/he;->c:Lcrittercism/android/gx;

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    iget-object v1, p0, Lcrittercism/android/he;->c:Lcrittercism/android/gx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 109
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
