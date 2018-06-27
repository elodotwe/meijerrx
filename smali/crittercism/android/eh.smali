.class public final Lcrittercism/android/eh;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcrittercism/android/ei;

.field final b:Lcrittercism/android/ei;

.field final c:Ljava/lang/String;

.field final d:Lcrittercism/android/ej;

.field final e:Lcrittercism/android/ke;

.field final f:Lcrittercism/android/kd;


# direct methods
.method constructor <init>(Lcrittercism/android/ei;Lcrittercism/android/ei;Ljava/lang/String;Lcrittercism/android/ej;)V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45
    :cond_1
    iput-object p1, p0, Lcrittercism/android/eh;->a:Lcrittercism/android/ei;

    .line 46
    iput-object p2, p0, Lcrittercism/android/eh;->b:Lcrittercism/android/ei;

    .line 47
    iput-object p3, p0, Lcrittercism/android/eh;->c:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcrittercism/android/eh;->d:Lcrittercism/android/ej;

    .line 49
    new-instance v0, Lcrittercism/android/ke;

    new-instance v1, Lcrittercism/android/kg;

    invoke-direct {v1, p3}, Lcrittercism/android/kg;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcrittercism/android/kg;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcrittercism/android/eh;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcrittercism/android/kg;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcrittercism/android/ke;-><init>(Lcrittercism/android/kg;Lcrittercism/android/kg;)V

    iput-object v0, p0, Lcrittercism/android/eh;->e:Lcrittercism/android/ke;

    .line 50
    new-instance v0, Lcrittercism/android/kd;

    iget-object v1, p1, Lcrittercism/android/ei;->n:Lcrittercism/android/kh;

    iget-object v2, p0, Lcrittercism/android/eh;->e:Lcrittercism/android/ke;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/kd;-><init>(Lcrittercism/android/kh;Lcrittercism/android/ke;)V

    iput-object v0, p0, Lcrittercism/android/eh;->f:Lcrittercism/android/kd;

    .line 51
    return-void
.end method

.method private a(Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcrittercism/android/eh;->a:Lcrittercism/android/ei;

    iget-object v0, v0, Lcrittercism/android/ei;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    iget-object v0, p0, Lcrittercism/android/eh;->d:Lcrittercism/android/ej;

    iget-object v2, v0, Lcrittercism/android/ej;->a:[Lcrittercism/android/ei;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 89
    iget-object v4, v4, Lcrittercism/android/ei;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v0, p0, Lcrittercism/android/eh;->b:Lcrittercism/android/ei;

    iget-object v0, v0, Lcrittercism/android/ei;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcrittercism/android/kj;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcrittercism/android/eh;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/kj;->a(Ljava/lang/String;)Lcrittercism/android/kj;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 101
    .local p0, "this":Lcrittercism/android/eh;, "Lcrittercism/android/eh<TD;TR;>;"
    instance-of v0, p1, Lcrittercism/android/eh;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcrittercism/android/eh;

    iget-object v0, v0, Lcrittercism/android/eh;->a:Lcrittercism/android/ei;

    iget-object v1, p0, Lcrittercism/android/eh;->a:Lcrittercism/android/ei;

    invoke-virtual {v0, v1}, Lcrittercism/android/ei;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcrittercism/android/eh;

    iget-object v0, v0, Lcrittercism/android/eh;->c:Ljava/lang/String;

    iget-object v1, p0, Lcrittercism/android/eh;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcrittercism/android/eh;

    iget-object v0, v0, Lcrittercism/android/eh;->d:Lcrittercism/android/ej;

    iget-object v1, p0, Lcrittercism/android/eh;->d:Lcrittercism/android/ej;

    invoke-virtual {v0, v1}, Lcrittercism/android/ej;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcrittercism/android/eh;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcrittercism/android/eh;->b:Lcrittercism/android/ei;

    iget-object v1, p0, Lcrittercism/android/eh;->b:Lcrittercism/android/ei;

    invoke-virtual {v0, v1}, Lcrittercism/android/ei;->equals(Ljava/lang/Object;)Z

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
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcrittercism/android/eh;->a:Lcrittercism/android/ei;

    invoke-virtual {v0}, Lcrittercism/android/ei;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 111
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcrittercism/android/eh;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcrittercism/android/eh;->d:Lcrittercism/android/ej;

    invoke-virtual {v1}, Lcrittercism/android/ej;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcrittercism/android/eh;->b:Lcrittercism/android/ei;

    invoke-virtual {v1}, Lcrittercism/android/ei;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcrittercism/android/eh;->a:Lcrittercism/android/ei;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/eh;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/eh;->d:Lcrittercism/android/ej;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
