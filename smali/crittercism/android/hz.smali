.class public abstract Lcrittercism/android/hz;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcrittercism/android/ha;

.field final b:I

.field c:I

.field private final d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcrittercism/android/ha;I)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-nez p2, :cond_0

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-static {p3}, Lcrittercism/android/hz;->a(I)V

    .line 76
    iput-object p1, p0, Lcrittercism/android/hz;->d:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcrittercism/android/hz;->a:Lcrittercism/android/ha;

    .line 78
    iput p3, p0, Lcrittercism/android/hz;->b:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/hz;->c:I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/hz;->e:Z

    .line 81
    return-void
.end method

.method public static a(I)V
    .locals 2

    .prologue
    .line 54
    if-lez p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid alignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a(Lcrittercism/android/hm;)I
.end method

.method public abstract a()Ljava/util/Collection;
.end method

.method protected abstract a_(Lcrittercism/android/ko;)V
.end method

.method public final b(I)I
    .locals 2

    .prologue
    .line 181
    if-gez p1, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "relative < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iget v0, p0, Lcrittercism/android/hz;->c:I

    if-gez v0, :cond_1

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fileOffset not yet set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    iget v0, p0, Lcrittercism/android/hz;->c:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected abstract c()V
.end method

.method public final c(Lcrittercism/android/ko;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-virtual {p0}, Lcrittercism/android/hz;->g()V

    .line 148
    iget v0, p0, Lcrittercism/android/hz;->b:I

    invoke-interface {p1, v0}, Lcrittercism/android/ko;->h(I)V

    .line 150
    invoke-interface {p1}, Lcrittercism/android/ko;->f()I

    move-result v0

    .line 152
    iget v1, p0, Lcrittercism/android/hz;->c:I

    if-gez v1, :cond_2

    .line 153
    iput v0, p0, Lcrittercism/android/hz;->c:I

    .line 160
    :cond_0
    invoke-interface {p1}, Lcrittercism/android/ko;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcrittercism/android/hz;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/hz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 168
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcrittercism/android/hz;->a_(Lcrittercism/android/ko;)V

    .line 169
    return-void

    .line 154
    :cond_2
    iget v1, p0, Lcrittercism/android/hz;->c:I

    if-eq v1, v0, :cond_0

    .line 155
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "alignment mismatch: for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", but expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcrittercism/android/hz;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_3
    if-eqz v0, :cond_1

    .line 164
    const-string v0, "\n"

    invoke-interface {p1, v2, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public abstract c_()I
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcrittercism/android/hz;->c:I

    if-gez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fileOffset not set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget v0, p0, Lcrittercism/android/hz;->c:I

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcrittercism/android/hz;->h()V

    .line 214
    invoke-virtual {p0}, Lcrittercism/android/hz;->c()V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/hz;->e:Z

    .line 216
    return-void
.end method

.method protected final g()V
    .locals 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcrittercism/android/hz;->e:Z

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not prepared"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    return-void
.end method

.method protected final h()V
    .locals 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lcrittercism/android/hz;->e:Z

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "already prepared"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    return-void
.end method
