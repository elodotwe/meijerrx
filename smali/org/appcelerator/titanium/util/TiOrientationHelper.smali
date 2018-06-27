.class public Lorg/appcelerator/titanium/util/TiOrientationHelper;
.super Ljava/lang/Object;
.source "TiOrientationHelper.java"


# static fields
.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_LANDSCAPE_REVERSE:I = 0x4

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_PORTRAIT_REVERSE:I = 0x3

.field public static final ORIENTATION_SQUARE:I = 0x5

.field public static final ORIENTATION_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertRotationToTiOrientationMode(I)I
    .locals 1
    .param p0, "rotation"    # I

    .prologue
    .line 25
    packed-switch p0, :pswitch_data_0

    .line 40
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 28
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 34
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 37
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
