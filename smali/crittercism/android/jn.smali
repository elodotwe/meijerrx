.class public final Lcrittercism/android/jn;
.super Lcrittercism/android/jl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/jn$a;
    }
.end annotation


# instance fields
.field private final a:Lcrittercism/android/jn$a;


# direct methods
.method public constructor <init>(Lcrittercism/android/jn$a;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcrittercism/android/jl;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "list == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcrittercism/android/jn$a;->g()V

    .line 41
    iput-object p1, p0, Lcrittercism/android/jn;->a:Lcrittercism/android/jn$a;

    .line 42
    return-void
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcrittercism/android/jn;->a:Lcrittercism/android/jn$a;

    const-string v1, "{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lcrittercism/android/jn$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcrittercism/android/jl;)I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcrittercism/android/jn;->a:Lcrittercism/android/jn$a;

    check-cast p1, Lcrittercism/android/jn;

    iget-object v1, p1, Lcrittercism/android/jn;->a:Lcrittercism/android/jn$a;

    invoke-virtual {v0, v1}, Lcrittercism/android/jn$a;->a(Lcrittercism/android/jn$a;)I

    move-result v0

    return v0
.end method

.method public final b()Lcrittercism/android/jn$a;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcrittercism/android/jn;->a:Lcrittercism/android/jn$a;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "array"

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 47
    instance-of v0, p1, Lcrittercism/android/jn;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 51
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcrittercism/android/jn;->a:Lcrittercism/android/jn$a;

    check-cast p1, Lcrittercism/android/jn;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcrittercism/android/jn;->a:Lcrittercism/android/jn$a;

    invoke-virtual {v0, v1}, Lcrittercism/android/jn$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcrittercism/android/jn;->a:Lcrittercism/android/jn$a;

    invoke-virtual {v0}, Lcrittercism/android/jn$a;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 69
    iget-object v0, p0, Lcrittercism/android/jn;->a:Lcrittercism/android/jn$a;

    const-string v1, "array{"

    const-string v2, ", "

    const-string v3, "}"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcrittercism/android/kv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
