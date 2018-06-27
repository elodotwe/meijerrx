.class public final Lcrittercism/android/fd;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcrittercism/android/fe;

.field public b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcrittercism/android/ek;III)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcrittercism/android/fe;

    invoke-direct {v0, p1, p2, p4}, Lcrittercism/android/fe;-><init>(Lcrittercism/android/ek;II)V

    iput-object v0, p0, Lcrittercism/android/fd;->a:Lcrittercism/android/fe;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcrittercism/android/fd;->b:Ljava/util/ArrayList;

    .line 57
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcrittercism/android/fd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 115
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 116
    iget-object v3, p0, Lcrittercism/android/fd;->a:Lcrittercism/android/fe;

    iget-object v0, p0, Lcrittercism/android/fd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/es;

    invoke-virtual {v3, v0}, Lcrittercism/android/fe;->a(Lcrittercism/android/es;)V

    .line 115
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/fd;->b:Ljava/util/ArrayList;

    .line 120
    return-void
.end method

.method public final a(Lcrittercism/android/es;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcrittercism/android/fd;->a:Lcrittercism/android/fe;

    invoke-virtual {v0, p1}, Lcrittercism/android/fe;->a(Lcrittercism/android/es;)V

    .line 66
    return-void
.end method
