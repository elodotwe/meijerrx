.class final Lcrittercism/android/jc$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/jc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Lcrittercism/android/km;

.field c:Lcrittercism/android/iy;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Lcrittercism/android/jc$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 643
    instance-of v0, p1, Lcrittercism/android/jc;

    if-nez v0, :cond_0

    .line 644
    const/4 v0, 0x0

    .line 648
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 647
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcrittercism/android/jc;

    .line 648
    .end local p1    # "other":Ljava/lang/Object;
    iget v0, p0, Lcrittercism/android/jc$a;->a:I

    iget-object v1, p0, Lcrittercism/android/jc$a;->b:Lcrittercism/android/km;

    iget-object v2, p0, Lcrittercism/android/jc$a;->c:Lcrittercism/android/iy;

    invoke-static {p1, v0, v1, v2}, Lcrittercism/android/jc;->a(Lcrittercism/android/jc;ILcrittercism/android/km;Lcrittercism/android/iy;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 654
    iget v0, p0, Lcrittercism/android/jc$a;->a:I

    iget-object v1, p0, Lcrittercism/android/jc$a;->b:Lcrittercism/android/km;

    iget-object v2, p0, Lcrittercism/android/jc$a;->c:Lcrittercism/android/iy;

    invoke-static {v0, v1, v2}, Lcrittercism/android/jc;->a(ILcrittercism/android/km;Lcrittercism/android/iy;)I

    move-result v0

    return v0
.end method
