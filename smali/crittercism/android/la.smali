.class public Lcrittercism/android/la;
.super Lcrittercism/android/kv;


# instance fields
.field public final a:Lcrittercism/android/ky;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcrittercism/android/kv;-><init>(I)V

    .line 35
    new-instance v0, Lcrittercism/android/ky;

    invoke-direct {v0, p1}, Lcrittercism/android/ky;-><init>(I)V

    iput-object v0, p0, Lcrittercism/android/la;->a:Lcrittercism/android/ky;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(ILcrittercism/android/kz;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 175
    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcrittercism/android/kz;

    .line 177
    invoke-virtual {p0, p1, p2}, Lcrittercism/android/la;->a(ILjava/lang/Object;)V

    .line 179
    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lcrittercism/android/kz;->a()I

    move-result v0

    iget-object v1, p0, Lcrittercism/android/la;->a:Lcrittercism/android/ky;

    invoke-virtual {v1, v0, v4}, Lcrittercism/android/ky;->a(II)V

    .line 183
    :cond_0
    if-eqz p2, :cond_2

    .line 184
    invoke-interface {p2}, Lcrittercism/android/kz;->a()I

    move-result v1

    iget-object v0, p0, Lcrittercism/android/la;->a:Lcrittercism/android/ky;

    invoke-virtual {v0}, Lcrittercism/android/ky;->a()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    sub-int v3, v1, v2

    if-gt v0, v3, :cond_1

    iget-object v3, p0, Lcrittercism/android/la;->a:Lcrittercism/android/ky;

    invoke-virtual {v3, v4}, Lcrittercism/android/ky;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcrittercism/android/la;->a:Lcrittercism/android/ky;

    invoke-virtual {v0, v1, p1}, Lcrittercism/android/ky;->a(II)V

    .line 186
    :cond_2
    return-void
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcrittercism/android/la;->a:Lcrittercism/android/ky;

    invoke-virtual {v0}, Lcrittercism/android/ky;->a()I

    move-result v0

    .line 67
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcrittercism/android/la;->a:Lcrittercism/android/ky;

    invoke-virtual {v1, v0}, Lcrittercism/android/ky;->a(I)I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 72
    iget-object v1, p0, Lcrittercism/android/la;->a:Lcrittercism/android/ky;

    invoke-virtual {v1, v0}, Lcrittercism/android/ky;->c(I)V

    .line 74
    return v0
.end method
