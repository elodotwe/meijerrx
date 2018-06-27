.class public final Lcrittercism/android/hc;
.super Lcrittercism/android/hd;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final a:Lcrittercism/android/ju;


# direct methods
.method public constructor <init>(Lcrittercism/android/ju;I)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p2}, Lcrittercism/android/hd;-><init>(I)V

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lcrittercism/android/hc;->a:Lcrittercism/android/ju;

    .line 55
    return-void
.end method

.method private a(Lcrittercism/android/hc;)I
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcrittercism/android/hc;->a:Lcrittercism/android/ju;

    iget-object v1, p1, Lcrittercism/android/hc;->a:Lcrittercism/android/ju;

    invoke-virtual {v0, v1}, Lcrittercism/android/ju;->a(Lcrittercism/android/jl;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcrittercism/android/ha;Lcrittercism/android/ko;II)I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 135
    iget-object v0, p1, Lcrittercism/android/ha;->i:Lcrittercism/android/hh;

    iget-object v1, p0, Lcrittercism/android/hc;->a:Lcrittercism/android/ju;

    invoke-virtual {v0, v1}, Lcrittercism/android/hh;->b(Lcrittercism/android/ju;)I

    move-result v0

    .line 136
    sub-int v1, v0, p3

    .line 137
    iget v2, p0, Lcrittercism/android/hd;->b:I

    .line 139
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    const-string v3, "  [%x] %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcrittercism/android/hc;->a:Lcrittercism/android/ju;

    invoke-virtual {v6}, Lcrittercism/android/ju;->a_()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7, v3}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 142
    invoke-static {v1}, Lcrittercism/android/lb;->a(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    field_idx:    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 144
    invoke-static {v2}, Lcrittercism/android/lb;->a(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    access_flags: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x50df

    invoke-static {v2, v5, v8}, Lcrittercism/android/ir;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 149
    :cond_0
    invoke-interface {p2, v1}, Lcrittercism/android/ko;->e(I)I

    .line 150
    invoke-interface {p2, v2}, Lcrittercism/android/ko;->e(I)I

    .line 152
    return v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p1, Lcrittercism/android/ha;->i:Lcrittercism/android/hh;

    .line 101
    iget-object v1, p0, Lcrittercism/android/hc;->a:Lcrittercism/android/ju;

    invoke-virtual {v0, v1}, Lcrittercism/android/hh;->a(Lcrittercism/android/ju;)Lcrittercism/android/hg;

    .line 102
    return-void
.end method

.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcrittercism/android/hc;->a:Lcrittercism/android/ju;

    invoke-virtual {v0}, Lcrittercism/android/ju;->a_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lcrittercism/android/hc;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcrittercism/android/hc;->a(Lcrittercism/android/hc;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 64
    instance-of v1, p1, Lcrittercism/android/hc;

    if-nez v1, :cond_1

    .line 68
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcrittercism/android/hc;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcrittercism/android/hc;->a(Lcrittercism/android/hc;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcrittercism/android/hc;->a:Lcrittercism/android/ju;

    invoke-virtual {v0}, Lcrittercism/android/ju;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    iget v1, p0, Lcrittercism/android/hd;->b:I

    invoke-static {v1}, Lcrittercism/android/kw;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    iget-object v1, p0, Lcrittercism/android/hc;->a:Lcrittercism/android/ju;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 93
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
