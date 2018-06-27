.class final Lcrittercism/android/hu$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Lcrittercism/android/hv;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcrittercism/android/hv;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p1}, Lcrittercism/android/hv;->a()Lcrittercism/android/hn;

    move-result-object v0

    invoke-virtual {p2}, Lcrittercism/android/hv;->a()Lcrittercism/android/hn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/hn;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method
