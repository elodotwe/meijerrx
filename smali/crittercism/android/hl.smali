.class public abstract Lcrittercism/android/hl;
.super Lcrittercism/android/hm;


# instance fields
.field e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcrittercism/android/hm;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/hl;->e:I

    .line 32
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcrittercism/android/hl;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index already set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput p1, p0, Lcrittercism/android/hl;->e:I

    .line 70
    return-void
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcrittercism/android/hl;->e:I

    if-gez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index not yet set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iget v0, p0, Lcrittercism/android/hl;->e:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcrittercism/android/hl;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
