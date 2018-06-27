.class public final Lcrittercism/android/ej;
.super Ljava/lang/Object;


# instance fields
.field final a:[Lcrittercism/android/ei;

.field final b:Lcrittercism/android/kk;


# direct methods
.method public constructor <init>([Lcrittercism/android/ei;)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, [Lcrittercism/android/ei;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/ei;

    iput-object v0, p0, Lcrittercism/android/ej;->a:[Lcrittercism/android/ei;

    .line 33
    new-instance v0, Lcrittercism/android/kk;

    array-length v1, p1

    invoke-direct {v0, v1}, Lcrittercism/android/kk;-><init>(I)V

    iput-object v0, p0, Lcrittercism/android/ej;->b:Lcrittercism/android/kk;

    .line 34
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 35
    iget-object v1, p0, Lcrittercism/android/ej;->b:Lcrittercism/android/kk;

    aget-object v2, p1, v0

    iget-object v2, v2, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-virtual {v1, v0, v2}, Lcrittercism/android/kk;->a(ILcrittercism/android/kl;)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 47
    instance-of v0, p1, Lcrittercism/android/ej;

    if-eqz v0, :cond_0

    check-cast p1, Lcrittercism/android/ej;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcrittercism/android/ej;->a:[Lcrittercism/android/ei;

    iget-object v1, p0, Lcrittercism/android/ej;->a:[Lcrittercism/android/ei;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcrittercism/android/ej;->a:[Lcrittercism/android/ei;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcrittercism/android/ej;->a:[Lcrittercism/android/ei;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 57
    if-lez v0, :cond_0

    .line 58
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    iget-object v2, p0, Lcrittercism/android/ej;->a:[Lcrittercism/android/ei;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
