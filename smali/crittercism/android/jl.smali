.class public abstract Lcrittercism/android/jl;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/lf;
.implements Ljava/lang/Comparable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/jl;)I
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 52
    if-eq v0, v1, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcrittercism/android/jl;->b(Lcrittercism/android/jl;)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract b(Lcrittercism/android/jl;)I
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Lcrittercism/android/jl;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcrittercism/android/jl;->a(Lcrittercism/android/jl;)I

    move-result v0

    return v0
.end method

.method public abstract e()Ljava/lang/String;
.end method
