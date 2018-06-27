.class public abstract Lcrittercism/android/hq;
.super Lcrittercism/android/ig;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcrittercism/android/ha;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcrittercism/android/ig;-><init>(Ljava/lang/String;Lcrittercism/android/ha;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 4

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0}, Lcrittercism/android/hq;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/high16 v2, 0x10000

    if-le v1, v2, :cond_1

    .line 45
    instance-of v0, p0, Lcrittercism/android/ht;

    if-eqz v0, :cond_0

    const-string v0, "methods"

    .line 46
    :goto_0
    new-instance v1, Lcrittercism/android/kt;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Too many "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcrittercism/android/hq;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; max is 65536"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcrittercism/android/kt;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    const-string v0, "fields"

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcrittercism/android/hq;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hm;

    .line 51
    check-cast v0, Lcrittercism/android/hp;

    invoke-virtual {v0, v1}, Lcrittercism/android/hp;->a(I)V

    .line 52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 54
    :cond_2
    return-void
.end method
