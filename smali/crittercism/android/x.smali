.class public final Lcrittercism/android/x;
.super Lcrittercism/android/v;


# instance fields
.field private d:Lcrittercism/android/y;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcrittercism/android/y;I)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcrittercism/android/v;-><init>(Lcrittercism/android/v;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcrittercism/android/x;->f:I

    .line 15
    iput-object p1, p0, Lcrittercism/android/x;->d:Lcrittercism/android/y;

    .line 16
    iput p2, p0, Lcrittercism/android/x;->e:I

    .line 17
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 21
    iget v2, p0, Lcrittercism/android/x;->f:I

    iget v3, p0, Lcrittercism/android/x;->e:I

    add-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 24
    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 25
    iget-object v0, p0, Lcrittercism/android/v;->a:Lcrittercism/android/ab;

    invoke-virtual {p0}, Lcrittercism/android/x;->a()I

    move-result v2

    invoke-interface {v0, v2}, Lcrittercism/android/ab;->b(I)V

    .line 26
    iget-object v0, p0, Lcrittercism/android/v;->a:Lcrittercism/android/ab;

    sget-object v2, Lcrittercism/android/ai;->d:Lcrittercism/android/ai;

    invoke-interface {v0, v2}, Lcrittercism/android/ab;->a(Lcrittercism/android/v;)V

    move v0, v1

    .line 27
    goto :goto_0

    .line 30
    :cond_2
    iget v2, p0, Lcrittercism/android/x;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcrittercism/android/x;->c:I

    .line 31
    int-to-char v2, p1

    .line 32
    iget v3, p0, Lcrittercism/android/x;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcrittercism/android/x;->f:I

    .line 34
    iget v3, p0, Lcrittercism/android/x;->f:I

    iget v4, p0, Lcrittercism/android/x;->e:I

    if-le v3, v4, :cond_0

    .line 35
    if-ne v2, v5, :cond_3

    .line 41
    iget-object v0, p0, Lcrittercism/android/x;->d:Lcrittercism/android/y;

    invoke-virtual {p0}, Lcrittercism/android/x;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcrittercism/android/y;->b(I)V

    .line 42
    iget-object v0, p0, Lcrittercism/android/v;->a:Lcrittercism/android/ab;

    iget-object v2, p0, Lcrittercism/android/x;->d:Lcrittercism/android/y;

    invoke-interface {v0, v2}, Lcrittercism/android/ab;->a(Lcrittercism/android/v;)V

    move v0, v1

    .line 43
    goto :goto_0

    .line 46
    :cond_3
    iget v3, p0, Lcrittercism/android/x;->f:I

    iget v4, p0, Lcrittercism/android/x;->e:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    if-eq v2, v5, :cond_0

    .line 48
    iget-object v0, p0, Lcrittercism/android/v;->a:Lcrittercism/android/ab;

    sget-object v2, Lcrittercism/android/ai;->d:Lcrittercism/android/ai;

    invoke-interface {v0, v2}, Lcrittercism/android/ab;->a(Lcrittercism/android/v;)V

    move v0, v1

    .line 49
    goto :goto_0
.end method

.method public final a(Lorg/apache/http/util/CharArrayBuffer;)Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcrittercism/android/v;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcrittercism/android/x;->d:Lcrittercism/android/y;

    return-object v0
.end method

.method public final c()Lcrittercism/android/v;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcrittercism/android/v;->a:Lcrittercism/android/ab;

    invoke-virtual {p0}, Lcrittercism/android/x;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcrittercism/android/ab;->b(I)V

    .line 87
    iget-object v0, p0, Lcrittercism/android/v;->a:Lcrittercism/android/ab;

    sget-object v1, Lcrittercism/android/ai;->d:Lcrittercism/android/ai;

    invoke-interface {v0, v1}, Lcrittercism/android/ab;->a(Lcrittercism/android/v;)V

    .line 88
    return-void
.end method
