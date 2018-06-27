.class public final Lcom/google/zxing/client/android/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/google/zxing/client/android/CaptureActivity;

.field private final cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private final decodeThread:Lcom/google/zxing/client/android/DecodeThread;

.field private state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/client/android/camera/CameraManager;)V
    .locals 3
    .param p1, "activity"    # Lcom/google/zxing/client/android/CaptureActivity;
    .param p3, "characterSet"    # Ljava/lang/String;
    .param p4, "cameraManager"    # Lcom/google/zxing/client/android/camera/CameraManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/android/CaptureActivity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/zxing/client/android/camera/CameraManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "decodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    .line 57
    new-instance v0, Lcom/google/zxing/client/android/DecodeThread;

    new-instance v1, Lcom/google/zxing/client/android/ViewfinderResultPointCallback;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/CaptureActivity;->getViewfinderView()Lcom/google/zxing/client/android/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/client/android/ViewfinderResultPointCallback;-><init>(Lcom/google/zxing/client/android/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/zxing/client/android/DecodeThread;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    .line 58
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/DecodeThread;->start()V

    .line 59
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 62
    iput-object p4, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 63
    invoke-virtual {p4}, Lcom/google/zxing/client/android/camera/CameraManager;->startPreview()V

    .line 64
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 65
    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    sget-object v1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 134
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 135
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string v2, "decode"

    invoke-static {v2}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 136
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    const-string v1, "auto_focus"

    invoke-static {v1}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/google/zxing/client/android/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 137
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/CaptureActivity;->drawViewfinder()V

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v10, -0x1

    .line 69
    iget v8, p1, Landroid/os/Message;->what:I

    const-string v9, "auto_focus"

    invoke-static {v9}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 73
    iget-object v8, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    sget-object v9, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    if-ne v8, v9, :cond_0

    .line 74
    iget-object v8, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    const-string v9, "auto_focus"

    invoke-static {v9}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, p0, v9}, Lcom/google/zxing/client/android/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget v8, p1, Landroid/os/Message;->what:I

    const-string v9, "restart_preview"

    invoke-static {v9}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 77
    sget-object v8, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v9, "Got restart preview message"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 79
    :cond_2
    iget v8, p1, Landroid/os/Message;->what:I

    const-string v9, "decode_succeeded"

    invoke-static {v9}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 80
    sget-object v8, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v9, "Got decode succeeded message"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v8, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v8, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 82
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 83
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_3

    const/4 v0, 0x0

    .line 84
    .local v0, "barcode":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v9, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/google/zxing/Result;

    invoke-virtual {v9, v8, v0}, Lcom/google/zxing/client/android/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 83
    .end local v0    # "barcode":Landroid/graphics/Bitmap;
    :cond_3
    const-string v8, "barcode_bitmap"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    move-object v0, v8

    goto :goto_1

    .line 85
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_4
    iget v8, p1, Landroid/os/Message;->what:I

    const-string v9, "decode_failed"

    invoke-static {v9}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 87
    sget-object v8, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v8, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 88
    iget-object v8, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    iget-object v9, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v9}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const-string v10, "decode"

    invoke-static {v10}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 89
    :cond_5
    iget v8, p1, Landroid/os/Message;->what:I

    const-string v9, "return_scan_result"

    invoke-static {v9}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_8

    .line 90
    sget-object v8, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v9, "Got return scan result message"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    .line 92
    .local v4, "msgObj":Landroid/content/Intent;
    iget-object v8, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v8}, Lcom/google/zxing/client/android/CaptureActivity;->doKeepOpen()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 93
    const-string v8, "SCAN_RESULT_FORMAT"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "scanResultFormat":Ljava/lang/String;
    const-string v8, "SCAN_RESULT"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "scanResult":Ljava/lang/String;
    invoke-static {}, Lti/barcode/BarcodeModule;->getInstance()Lti/barcode/BarcodeModule;

    move-result-object v1

    .line 96
    .local v1, "barcodeModule":Lti/barcode/BarcodeModule;
    if-eqz v1, :cond_6

    .line 97
    invoke-virtual {v1, v6, v5, v10}, Lti/barcode/BarcodeModule;->processResult(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    :goto_2
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto/16 :goto_0

    .line 99
    :cond_6
    sget-object v8, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v9, "Unable to find an instance of the barcode module!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 103
    .end local v1    # "barcodeModule":Lti/barcode/BarcodeModule;
    .end local v5    # "scanResult":Ljava/lang/String;
    .end local v6    # "scanResultFormat":Ljava/lang/String;
    :cond_7
    iget-object v9, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/content/Intent;

    invoke-virtual {v9, v10, v8}, Lcom/google/zxing/client/android/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 104
    iget-object v8, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v8}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    goto/16 :goto_0

    .line 106
    .end local v4    # "msgObj":Landroid/content/Intent;
    :cond_8
    iget v8, p1, Landroid/os/Message;->what:I

    const-string v9, "launch_product_query"

    invoke-static {v9}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 107
    sget-object v8, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v9, "Got product query message"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 109
    .local v7, "url":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x80000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    iget-object v8, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v8, v3}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public quitSynchronously()V
    .locals 4

    .prologue
    .line 116
    sget-object v1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->DONE:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 117
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/camera/CameraManager;->stopPreview()V

    .line 118
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string v2, "quit"

    invoke-static {v2}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, "quit":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/client/android/DecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    const-string v1, "decode_succeeded"

    invoke-static {v1}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    .line 129
    const-string v1, "decode_failed"

    invoke-static {v1}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    .line 130
    return-void

    .line 123
    :catch_0
    move-exception v1

    goto :goto_0
.end method
