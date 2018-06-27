.class Lcom/meijer/rx/android/AssetCryptImpl$Range;
.super Ljava/lang/Object;
.source "AssetCryptImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meijer/rx/android/AssetCryptImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Range"
.end annotation


# instance fields
.field length:I

.field offset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/meijer/rx/android/AssetCryptImpl$Range;->offset:I

    .line 25
    iput p2, p0, Lcom/meijer/rx/android/AssetCryptImpl$Range;->length:I

    .line 26
    return-void
.end method
