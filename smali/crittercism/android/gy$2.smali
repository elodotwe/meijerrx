.class final Lcrittercism/android/gy$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/gy;->c()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/gy;


# direct methods
.method constructor <init>(Lcrittercism/android/gy;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcrittercism/android/gy$2;->a:Lcrittercism/android/gy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 552
    check-cast p1, Lcrittercism/android/fa$b;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcrittercism/android/fa$b;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p1}, Lcrittercism/android/fa$b;->g()I

    move-result v0

    invoke-virtual {p2}, Lcrittercism/android/fa$b;->g()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 558
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
