.class public final Lcrittercism/android/eo;
.super Lcrittercism/android/kv;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/eo$a;
    }
.end annotation


# static fields
.field public static final a:Lcrittercism/android/eo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcrittercism/android/eo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrittercism/android/eo;-><init>(I)V

    sput-object v0, Lcrittercism/android/eo;->a:Lcrittercism/android/eo;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcrittercism/android/kv;-><init>(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public final a(I)Lcrittercism/android/eo$a;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcrittercism/android/eo;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/eo$a;

    return-object v0
.end method

.method public final a(ILcrittercism/android/eo$a;)V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lcrittercism/android/eo;->a(ILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 7
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 27
    check-cast p1, Lcrittercism/android/eo;

    .end local p1    # "x0":Ljava/lang/Object;
    if-eq p0, p1, :cond_3

    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v3, v0

    iget-object v0, p1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    invoke-virtual {p0, v2}, Lcrittercism/android/eo;->a(I)Lcrittercism/android/eo$a;

    move-result-object v0

    invoke-virtual {p1, v2}, Lcrittercism/android/eo;->a(I)Lcrittercism/android/eo$a;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcrittercism/android/eo$a;->a(Lcrittercism/android/eo$a;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    if-ge v3, v4, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    if-le v3, v4, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method
