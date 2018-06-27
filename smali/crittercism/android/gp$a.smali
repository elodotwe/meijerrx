.class final Lcrittercism/android/gp$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/gp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcrittercism/android/gp$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Lcrittercism/android/gp;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcrittercism/android/gp;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-static {p1}, Lcrittercism/android/gp;->a(Lcrittercism/android/gp;)Lcrittercism/android/id;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/id;->d()I

    move-result v0

    invoke-static {p2}, Lcrittercism/android/gp;->a(Lcrittercism/android/gp;)Lcrittercism/android/id;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/id;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
