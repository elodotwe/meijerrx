.class public final Lcrittercism/android/it;
.super Lcrittercism/android/la;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/it$a;
    }
.end annotation


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcrittercism/android/la;-><init>(I)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/it;->b:I

    .line 45
    return-void
.end method


# virtual methods
.method public final a(I)Lcrittercism/android/is;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcrittercism/android/it;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/is;

    return-object v0
.end method

.method public final a(ILcrittercism/android/is;)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcrittercism/android/la;->a(ILcrittercism/android/kz;)V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/it;->b:I

    .line 81
    return-void
.end method

.method public final a(Lcrittercism/android/iw$b;)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v1, v0

    .line 176
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 177
    invoke-virtual {p0, v0}, Lcrittercism/android/it;->a(I)Lcrittercism/android/is;

    move-result-object v2

    .line 178
    iget-object v2, v2, Lcrittercism/android/is;->b:Lcrittercism/android/ix;

    .line 179
    invoke-virtual {v2, p1}, Lcrittercism/android/ix;->a(Lcrittercism/android/iw$b;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcrittercism/android/it;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 93
    new-instance v0, Lcrittercism/android/it$a;

    invoke-direct {v0}, Lcrittercism/android/it$a;-><init>()V

    .line 94
    invoke-virtual {p0, v0}, Lcrittercism/android/it;->a(Lcrittercism/android/iw$b;)V

    .line 95
    iget v0, v0, Lcrittercism/android/it$a;->a:I

    iput v0, p0, Lcrittercism/android/it;->b:I

    .line 98
    :cond_0
    iget v0, p0, Lcrittercism/android/it;->b:I

    return v0
.end method

.method public final b(I)Lcrittercism/android/is;
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcrittercism/android/la;->a:Lcrittercism/android/ky;

    invoke-virtual {v0}, Lcrittercism/android/ky;->a()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, -0x1

    .line 160
    :goto_0
    if-gez v0, :cond_1

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no such label: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcrittercism/android/kw;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcrittercism/android/la;->a:Lcrittercism/android/ky;

    invoke-virtual {v0, p1}, Lcrittercism/android/ky;->a(I)I

    move-result v0

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0, v0}, Lcrittercism/android/it;->a(I)Lcrittercism/android/is;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v3, v1

    move v2, v0

    move v1, v0

    .line 111
    :goto_0
    if-ge v2, v3, :cond_0

    .line 112
    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lcrittercism/android/is;

    .line 113
    if-eqz v0, :cond_1

    .line 114
    iget-object v0, v0, Lcrittercism/android/is;->b:Lcrittercism/android/ix;

    iget-object v0, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    add-int/2addr v0, v1

    .line 111
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 118
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
