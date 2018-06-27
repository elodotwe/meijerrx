.class public final Lcrittercism/android/il;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 354
    if-ge p0, v2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 356
    :cond_1
    if-ne p0, v2, :cond_2

    move v0, v1

    .line 357
    goto :goto_0

    .line 360
    :cond_2
    and-int/lit16 v2, p0, 0xff

    .line 361
    if-eqz v2, :cond_3

    const/16 v3, 0xff

    if-ne v2, v3, :cond_4

    :cond_3
    move v0, v1

    .line 362
    goto :goto_0

    .line 365
    :cond_4
    const v2, 0xff00

    and-int/2addr v2, p0

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
