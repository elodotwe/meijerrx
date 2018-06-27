.class public final Lcrittercism/android/lb;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .locals 2

    .prologue
    .line 41
    shr-int/lit8 v1, p0, 0x7

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    if-eqz v1, :cond_0

    .line 45
    shr-int/lit8 v1, v1, 0x7

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method
