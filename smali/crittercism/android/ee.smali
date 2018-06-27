.class public final Lcrittercism/android/ee;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcrittercism/android/ei;

.field final b:Lcrittercism/android/ei;

.field final c:Ljava/lang/String;

.field final d:Lcrittercism/android/ke;

.field public final e:Lcrittercism/android/ju;


# direct methods
.method constructor <init>(Lcrittercism/android/ei;Lcrittercism/android/ei;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_1
    iput-object p1, p0, Lcrittercism/android/ee;->a:Lcrittercism/android/ei;

    .line 43
    iput-object p2, p0, Lcrittercism/android/ee;->b:Lcrittercism/android/ei;

    .line 44
    iput-object p3, p0, Lcrittercism/android/ee;->c:Ljava/lang/String;

    .line 45
    new-instance v0, Lcrittercism/android/ke;

    new-instance v1, Lcrittercism/android/kg;

    invoke-direct {v1, p3}, Lcrittercism/android/kg;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcrittercism/android/kg;

    iget-object v3, p2, Lcrittercism/android/ei;->l:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcrittercism/android/kg;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcrittercism/android/ke;-><init>(Lcrittercism/android/kg;Lcrittercism/android/kg;)V

    iput-object v0, p0, Lcrittercism/android/ee;->d:Lcrittercism/android/ke;

    .line 46
    new-instance v0, Lcrittercism/android/ju;

    iget-object v1, p1, Lcrittercism/android/ei;->n:Lcrittercism/android/kh;

    iget-object v2, p0, Lcrittercism/android/ee;->d:Lcrittercism/android/ke;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/ju;-><init>(Lcrittercism/android/kh;Lcrittercism/android/ke;)V

    iput-object v0, p0, Lcrittercism/android/ee;->e:Lcrittercism/android/ju;

    .line 47
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 62
    .local p0, "this":Lcrittercism/android/ee;, "Lcrittercism/android/ee<TD;TV;>;"
    instance-of v0, p1, Lcrittercism/android/ee;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcrittercism/android/ee;

    iget-object v0, v0, Lcrittercism/android/ee;->a:Lcrittercism/android/ei;

    iget-object v1, p0, Lcrittercism/android/ee;->a:Lcrittercism/android/ei;

    invoke-virtual {v0, v1}, Lcrittercism/android/ei;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcrittercism/android/ee;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcrittercism/android/ee;->c:Ljava/lang/String;

    iget-object v1, p0, Lcrittercism/android/ee;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    .line 68
    iget-object v0, p0, Lcrittercism/android/ee;->a:Lcrittercism/android/ei;

    invoke-virtual {v0}, Lcrittercism/android/ei;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcrittercism/android/ee;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcrittercism/android/ee;->a:Lcrittercism/android/ei;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/ee;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
