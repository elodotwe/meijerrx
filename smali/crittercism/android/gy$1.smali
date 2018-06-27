.class final Lcrittercism/android/gy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/gy;
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
    .line 495
    iput-object p1, p0, Lcrittercism/android/gy$1;->a:Lcrittercism/android/gy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 495
    check-cast p1, Lcrittercism/android/ff$a;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcrittercism/android/ff$a;

    .end local p2    # "x1":Ljava/lang/Object;
    iget v0, p1, Lcrittercism/android/ff$a;->a:I

    iget v1, p2, Lcrittercism/android/ff$a;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 501
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
