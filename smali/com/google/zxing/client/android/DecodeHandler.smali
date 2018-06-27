.class final Lcom/google/zxing/client/android/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/google/zxing/client/android/CaptureActivity;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/zxing/client/android/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/DecodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Map;)V
    .locals 1
    .param p1, "activity"    # Lcom/google/zxing/client/android/CaptureActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/android/CaptureActivity;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/client/android/DecodeHandler;->running:Z

    .line 45
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 46
    iget-object v0, p0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 47
    iput-object p1, p0, Lcom/google/zxing/client/android/DecodeHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    .line 48
    return-void
.end method

.method private decode([BII)V
    .locals 18
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 73
    .local v12, "start":J
    const/4 v10, 0x0

    .line 74
    .local v10, "rawResult":Lcom/google/zxing/Result;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/client/android/DecodeHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v14}, Lcom/google/zxing/client/android/CaptureActivity;->getCameraManager()Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object v14

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/client/android/PlanarYUVLuminanceSource;

    move-result-object v11

    .line 75
    .local v11, "source":Lcom/google/zxing/client/android/PlanarYUVLuminanceSource;
    if-eqz v11, :cond_0

    .line 76
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    new-instance v14, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v14, v11}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v4, v14}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 78
    .local v4, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v14, v4}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 82
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v14}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 86
    .end local v4    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/client/android/DecodeHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v14}, Lcom/google/zxing/client/android/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 87
    .local v8, "handler":Landroid/os/Handler;
    if-eqz v10, :cond_2

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 90
    .local v6, "end":J
    sget-object v14, Lcom/google/zxing/client/android/DecodeHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Found barcode in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v6, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-eqz v8, :cond_1

    .line 92
    const-string v14, "decode_succeeded"

    invoke-static {v14}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v14

    invoke-static {v8, v14, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 93
    .local v9, "message":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v14, "barcode_bitmap"

    invoke-virtual {v11}, Lcom/google/zxing/client/android/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 95
    invoke-virtual {v9, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 104
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "end":J
    .end local v9    # "message":Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    .line 79
    .end local v8    # "handler":Landroid/os/Handler;
    .restart local v4    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :catch_0
    move-exception v14

    .line 82
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v14}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v14

    .line 99
    .end local v4    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .restart local v8    # "handler":Landroid/os/Handler;
    :cond_2
    if-eqz v8, :cond_1

    .line 100
    const-string v14, "decode_failed"

    invoke-static {v14}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v14

    invoke-static {v8, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    .line 101
    .restart local v9    # "message":Landroid/os/Message;
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/zxing/client/android/DecodeHandler;->running:Z

    if-nez v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "decode"

    invoke-static {v1}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 56
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/zxing/client/android/DecodeHandler;->decode([BII)V

    goto :goto_0

    .line 57
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "quit"

    invoke-static {v1}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/DecodeHandler;->running:Z

    .line 59
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method
