.class public final Lcom/google/zxing/client/android/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/CaptureActivity$3;
    }
.end annotation


# static fields
.field private static final ABOUT_ID:I = 0x5

.field private static final BULK_MODE_SCAN_DELAY_MS:J = 0x3e8L

.field private static final DEFAULT_INTENT_RESULT_DURATION_MS:J = 0x5dcL

.field private static final DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            ">;"
        }
    .end annotation
.end field

.field private static final HELP_ID:I = 0x4

.field private static final HISTORY_ID:I = 0x2

.field public static final HISTORY_REQUEST_CODE:I = 0xbacc

.field public static PACKAGE_NAME:Ljava/lang/String; = null

.field private static final PRODUCT_SEARCH_URL_PREFIX:Ljava/lang/String; = "http://www.google"

.field private static final PRODUCT_SEARCH_URL_SUFFIX:Ljava/lang/String; = "/m/products/scan"

.field private static final RETURN_CODE_PLACEHOLDER:Ljava/lang/String; = "{CODE}"

.field private static final RETURN_URL_PARAM:Ljava/lang/String; = "ret"

.field private static final SETTINGS_ID:I = 0x3

.field private static final SHARE_ID:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final ZXING_URLS:[Ljava/lang/String;

.field private static _instance:Lcom/google/zxing/client/android/CaptureActivity;


# instance fields
.field private _layout:Landroid/widget/FrameLayout;

.field private final aboutListener:Landroid/content/DialogInterface$OnClickListener;

.field private allowMenu:Z

.field private beepManager:Lcom/google/zxing/client/android/BeepManager;

.field private cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private characterSet:Ljava/lang/String;

.field private copyToClipboard:Z

.field private decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private freezeStatusText:Z

.field private handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

.field private hasSurface:Z

.field private historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

.field private inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

.field private keepOpen:Z

.field private lastResult:Lcom/google/zxing/Result;

.field private resultView:Landroid/view/View;

.field private returnUrlTemplate:Ljava/lang/String;

.field private savedResultToShow:Lcom/google/zxing/Result;

.field private showRectangle:Z

.field private source:Lcom/google/zxing/client/android/IntentSource;

.field private sourceUrl:Ljava/lang/String;

.field private statusView:Landroid/widget/TextView;

.field private versionName:Ljava/lang/String;

.field private viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 88
    const-class v0, Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    .line 99
    const-string v0, "com.google.zxing.client.android"

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->PACKAGE_NAME:Ljava/lang/String;

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://zxing.appspot.com/scan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "zxing://scan/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->ZXING_URLS:[Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 139
    new-instance v0, Lcom/google/zxing/client/android/CaptureActivity$1;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/CaptureActivity$1;-><init>(Lcom/google/zxing/client/android/CaptureActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->aboutListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/zxing/client/android/CaptureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/zxing/client/android/CaptureActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->pause()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/zxing/client/android/CaptureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/zxing/client/android/CaptureActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->resume()V

    return-void
.end method

.method private decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 456
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez v1, :cond_0

    .line 457
    iput-object p2, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 468
    :goto_0
    return-void

    .line 459
    :cond_0
    if-eqz p2, :cond_1

    .line 460
    iput-object p2, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 462
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    if-eqz v1, :cond_2

    .line 463
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    const-string v2, "decode_succeeded"

    invoke-static {v2}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 464
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    .line 466
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    goto :goto_0
.end method

.method private displayFrameworkBugMessageAndExit()V
    .locals 3

    .prologue
    .line 790
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 791
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "app_name"

    invoke-static {v1}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 792
    const-string v1, "msg_camera_framework_bug"

    invoke-static {v1}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 793
    const-string v1, "button_ok"

    invoke-static {v1}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/google/zxing/client/android/FinishListener;

    invoke-direct {v2, p0}, Lcom/google/zxing/client/android/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 794
    new-instance v1, Lcom/google/zxing/client/android/FinishListener;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 795
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 796
    return-void
.end method

.method private static drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "a"    # Lcom/google/zxing/ResultPoint;
    .param p3, "b"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 575
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 576
    return-void
.end method

.method private drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 13
    .param p1, "barcode"    # Landroid/graphics/Bitmap;
    .param p2, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 546
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v7

    .line 547
    .local v7, "points":[Lcom/google/zxing/ResultPoint;
    if-eqz v7, :cond_0

    array-length v8, v7

    if-lez v8, :cond_0

    .line 548
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 549
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 550
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "result_image_border"

    invoke-static {v9}, Lti/barcode/RHelper;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 551
    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 552
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 553
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-direct {v1, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 554
    .local v1, "border":Landroid/graphics/Rect;
    invoke-virtual {v2, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 556
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "result_points"

    invoke-static {v9}, Lti/barcode/RHelper;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 557
    array-length v8, v7

    if-ne v8, v10, :cond_1

    .line 558
    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 559
    aget-object v8, v7, v11

    aget-object v9, v7, v12

    invoke-static {v2, v5, v8, v9}, Lcom/google/zxing/client/android/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 572
    .end local v1    # "border":Landroid/graphics/Rect;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_0
    :goto_0
    return-void

    .line 560
    .restart local v1    # "border":Landroid/graphics/Rect;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    :cond_1
    array-length v8, v7

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v8

    sget-object v9, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq v8, v9, :cond_2

    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v8

    sget-object v9, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne v8, v9, :cond_3

    .line 563
    :cond_2
    aget-object v8, v7, v11

    aget-object v9, v7, v12

    invoke-static {v2, v5, v8, v9}, Lcom/google/zxing/client/android/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 564
    aget-object v8, v7, v10

    const/4 v9, 0x3

    aget-object v9, v7, v9

    invoke-static {v2, v5, v8, v9}, Lcom/google/zxing/client/android/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    goto :goto_0

    .line 566
    :cond_3
    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 567
    move-object v0, v7

    .local v0, "arr$":[Lcom/google/zxing/ResultPoint;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 568
    .local v6, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    invoke-virtual {v2, v8, v9, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 567
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getInstance()Lcom/google/zxing/client/android/CaptureActivity;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->_instance:Lcom/google/zxing/client/android/CaptureActivity;

    return-object v0
.end method

.method private handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V
    .locals 17
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "resultHandler"    # Lcom/google/zxing/client/android/result/ResultHandler;
    .param p3, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 658
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/google/zxing/client/android/ViewfinderView;->drawResultBitmap(Landroid/graphics/Bitmap;)V

    .line 663
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/zxing/client/android/CaptureActivity;->freezeStatusText:Z

    if-nez v14, :cond_0

    .line 664
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayTitle()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/zxing/client/android/CaptureActivity;->copyToClipboard:Z

    if-eqz v14, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->areContentsSecure()Z

    move-result v14

    if-nez v14, :cond_1

    .line 667
    const-string v14, "clipboard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/zxing/client/android/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/ClipboardManager;

    .line 668
    .local v3, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 671
    .end local v3    # "clipboard":Landroid/text/ClipboardManager;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v15, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    if-ne v14, v15, :cond_7

    .line 675
    new-instance v9, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 676
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v14, 0x80000

    invoke-virtual {v9, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 677
    const-string v14, "SCAN_RESULT"

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const-string v14, "SCAN_RESULT_FORMAT"

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v12

    .line 680
    .local v12, "rawBytes":[B
    if-eqz v12, :cond_2

    array-length v14, v12

    if-lez v14, :cond_2

    .line 681
    const-string v14, "SCAN_RESULT_BYTES"

    invoke-virtual {v9, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 683
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v10

    .line 684
    .local v10, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    if-eqz v10, :cond_5

    .line 685
    sget-object v14, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 686
    .local v11, "orientation":Ljava/lang/Integer;
    if-eqz v11, :cond_3

    .line 687
    const-string v14, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    :cond_3
    sget-object v14, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 690
    .local v5, "ecLevel":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 691
    const-string v14, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    invoke-virtual {v9, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    :cond_4
    sget-object v14, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 694
    .local v2, "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    if-eqz v2, :cond_5

    .line 695
    const/4 v7, 0x0

    .line 696
    .local v7, "i":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 697
    .local v1, "byteSegment":[B
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 698
    add-int/lit8 v7, v7, 0x1

    .line 699
    goto :goto_0

    .line 702
    .end local v1    # "byteSegment":[B
    .end local v2    # "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    .end local v5    # "ecLevel":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "orientation":Ljava/lang/Integer;
    :cond_5
    const-string v14, "return_scan_result"

    invoke-static {v14}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9}, Lcom/google/zxing/client/android/CaptureActivity;->sendReplyMessage(ILjava/lang/Object;)V

    .line 728
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v12    # "rawBytes":[B
    :cond_6
    :goto_1
    return-void

    .line 704
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v15, Lcom/google/zxing/client/android/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

    if-ne v14, v15, :cond_8

    .line 708
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/client/android/CaptureActivity;->sourceUrl:Ljava/lang/String;

    const-string v15, "/scan"

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 709
    .local v6, "end":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/client/android/CaptureActivity;->sourceUrl:Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "?q="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&source=zxing"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 710
    .local v13, "replyURL":Ljava/lang/String;
    const-string v14, "launch_product_query"

    invoke-static {v14}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/google/zxing/client/android/CaptureActivity;->sendReplyMessage(ILjava/lang/Object;)V

    goto :goto_1

    .line 712
    .end local v6    # "end":I
    .end local v13    # "replyURL":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v15, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    if-ne v14, v15, :cond_6

    .line 716
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/client/android/CaptureActivity;->returnUrlTemplate:Ljava/lang/String;

    if-eqz v14, :cond_6

    .line 717
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 719
    .local v4, "codeReplacement":Ljava/lang/String;
    :try_start_0
    const-string v14, "UTF-8"

    invoke-static {v4, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 723
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/client/android/CaptureActivity;->returnUrlTemplate:Ljava/lang/String;

    const-string v15, "{CODE}"

    invoke-virtual {v14, v15, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 724
    .restart local v13    # "replyURL":Ljava/lang/String;
    const-string v14, "launch_product_query"

    invoke-static {v14}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/google/zxing/client/android/CaptureActivity;->sendReplyMessage(ILjava/lang/Object;)V

    goto :goto_1

    .line 720
    .end local v13    # "replyURL":Ljava/lang/String;
    :catch_0
    move-exception v14

    goto :goto_2
.end method

.method private handleDecodeInternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V
    .locals 30
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "resultHandler"    # Lcom/google/zxing/client/android/result/ResultHandler;
    .param p3, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Lcom/google/zxing/client/android/ViewfinderView;->setVisibility(I)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->resultView:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 584
    const-string v27, "barcode_image_view"

    invoke-static/range {v27 .. v27}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 585
    .local v6, "barcodeImageView":Landroid/widget/ImageView;
    if-nez p3, :cond_1

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const-string v28, "launcher_icon"

    invoke-static/range {v28 .. v28}, Lti/barcode/RHelper;->getDrawable(Ljava/lang/String;)I

    move-result v28

    invoke-static/range {v27 .. v28}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 591
    :goto_0
    const-string v27, "format_text_view"

    invoke-static/range {v27 .. v27}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 592
    .local v14, "formatTextView":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    const-string v27, "type_text_view"

    invoke-static/range {v27 .. v27}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 595
    .local v25, "typeTextView":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    const/16 v27, 0x3

    const/16 v28, 0x3

    invoke-static/range {v27 .. v28}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v16

    .line 598
    .local v16, "formatter":Ljava/text/DateFormat;
    new-instance v27, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getTimestamp()J

    move-result-wide v28

    invoke-direct/range {v27 .. v29}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 599
    .local v15, "formattedTime":Ljava/lang/String;
    const-string v27, "time_text_view"

    invoke-static/range {v27 .. v27}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 600
    .local v24, "timeTextView":Landroid/widget/TextView;
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    const-string v27, "meta_text_view"

    invoke-static/range {v27 .. v27}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 603
    .local v18, "metaTextView":Landroid/widget/TextView;
    const-string v27, "meta_text_view_label"

    invoke-static/range {v27 .. v27}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 604
    .local v19, "metaTextViewLabel":Landroid/view/View;
    const/16 v27, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    const/16 v27, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 606
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v20

    .line 607
    .local v20, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    if-eqz v20, :cond_3

    .line 608
    new-instance v21, Ljava/lang/StringBuilder;

    const/16 v27, 0x14

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 609
    .local v21, "metadataText":Ljava/lang/StringBuilder;
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 610
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    sget-object v27, Lcom/google/zxing/client/android/CaptureActivity;->DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 611
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0xa

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 588
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    .end local v14    # "formatTextView":Landroid/widget/TextView;
    .end local v15    # "formattedTime":Ljava/lang/String;
    .end local v16    # "formatter":Ljava/text/DateFormat;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "metaTextView":Landroid/widget/TextView;
    .end local v19    # "metaTextViewLabel":Landroid/view/View;
    .end local v20    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    .end local v21    # "metadataText":Ljava/lang/StringBuilder;
    .end local v24    # "timeTextView":Landroid/widget/TextView;
    .end local v25    # "typeTextView":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 614
    .restart local v14    # "formatTextView":Landroid/widget/TextView;
    .restart local v15    # "formattedTime":Ljava/lang/String;
    .restart local v16    # "formatter":Ljava/text/DateFormat;
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v18    # "metaTextView":Landroid/widget/TextView;
    .restart local v19    # "metaTextViewLabel":Landroid/view/View;
    .restart local v20    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    .restart local v21    # "metadataText":Ljava/lang/StringBuilder;
    .restart local v24    # "timeTextView":Landroid/widget/TextView;
    .restart local v25    # "typeTextView":Landroid/widget/TextView;
    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v27

    if-lez v27, :cond_3

    .line 615
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 616
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 618
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 622
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v21    # "metadataText":Ljava/lang/StringBuilder;
    :cond_3
    const-string v27, "contents_text_view"

    invoke-static/range {v27 .. v27}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 623
    .local v11, "contentsTextView":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v12

    .line 624
    .local v12, "displayContents":Ljava/lang/CharSequence;
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    const/16 v27, 0x16

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v28

    div-int/lit8 v28, v28, 0x4

    rsub-int/lit8 v28, v28, 0x20

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 627
    .local v22, "scaledSize":I
    const/16 v27, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 629
    const-string v27, "contents_supplement_text_view"

    invoke-static/range {v27 .. v27}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 630
    .local v23, "supplementTextView":Landroid/widget/TextView;
    const-string v27, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v27

    const-string v28, "preferences_supplemental"

    const/16 v29, 0x1

    invoke-interface/range {v27 .. v29}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 633
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, p0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->maybeInvokeRetrieval(Landroid/widget/TextView;Lcom/google/zxing/client/result/ParsedResult;Landroid/os/Handler;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V

    .line 636
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getButtonCount()I

    move-result v8

    .line 637
    .local v8, "buttonCount":I
    const-string v27, "result_button_view"

    invoke-static/range {v27 .. v27}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 638
    .local v9, "buttonView":Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 639
    const/16 v26, 0x0

    .local v26, "x":I
    :goto_2
    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 640
    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 641
    .local v7, "button":Landroid/widget/TextView;
    move/from16 v0, v26

    if-ge v0, v8, :cond_5

    .line 642
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/result/ResultHandler;->getButtonText(I)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 644
    new-instance v27, Lcom/google/zxing/client/android/result/ResultButtonListener;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/android/result/ResultButtonListener;-><init>(Lcom/google/zxing/client/android/result/ResultHandler;I)V

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 646
    :cond_5
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 650
    .end local v7    # "button":Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->copyToClipboard:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->areContentsSecure()Z

    move-result v27

    if-nez v27, :cond_7

    .line 651
    const-string v27, "clipboard"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/text/ClipboardManager;

    .line 652
    .local v10, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v10, v12}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 654
    .end local v10    # "clipboard":Landroid/text/ClipboardManager;
    :cond_7
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 6
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 772
    :try_start_0
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2, p1}, Lcom/google/zxing/client/android/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 774
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez v2, :cond_0

    .line 775
    new-instance v2, Lcom/google/zxing/client/android/CaptureActivityHandler;

    iget-object v3, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    iget-object v4, p0, Lcom/google/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/zxing/client/android/CaptureActivityHandler;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/client/android/camera/CameraManager;)V

    iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 777
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/client/android/CaptureActivity;->decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 787
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v1

    .line 779
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0

    .line 781
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected error initializing camera"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0
.end method

.method private static isZXingURL(Ljava/lang/String;)Z
    .locals 6
    .param p0, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 322
    if-nez p0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v4

    .line 325
    :cond_1
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->ZXING_URLS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 326
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 327
    const/4 v4, 0x1

    goto :goto_0

    .line 325
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private pause()V
    .locals 3

    .prologue
    .line 340
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/CaptureActivityHandler;->quitSynchronously()V

    .line 342
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 344
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/InactivityTimer;->onPause()V

    .line 345
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    .line 346
    iget-boolean v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-nez v2, :cond_1

    .line 347
    const-string v2, "preview_view"

    invoke-static {v2}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    .line 348
    .local v1, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 349
    .local v0, "surfaceHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 351
    .end local v0    # "surfaceHolder":Landroid/view/SurfaceHolder;
    .end local v1    # "surfaceView":Landroid/view/SurfaceView;
    :cond_1
    return-void
.end method

.method private resetStatusView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 806
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->resultView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 807
    iget-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->freezeStatusText:Z

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    const-string v1, "msg_default_status"

    invoke-static {v1}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 810
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0, v2}, Lcom/google/zxing/client/android/ViewfinderView;->setVisibility(I)V

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 812
    return-void
.end method

.method private resume()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 222
    new-instance v10, Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v13

    invoke-direct {v10, v13}, Lcom/google/zxing/client/android/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 224
    const-string v10, "viewfinder_view"

    invoke-static {v10}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/client/android/ViewfinderView;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    .line 225
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    iget-object v13, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v10, v13}, Lcom/google/zxing/client/android/ViewfinderView;->setCameraManager(Lcom/google/zxing/client/android/camera/CameraManager;)V

    .line 227
    const-string v10, "result_view"

    invoke-static {v10}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->resultView:Landroid/view/View;

    .line 228
    const-string v10, "status_view"

    invoke-static {v10}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    .line 230
    iput-object v14, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 231
    iput-object v14, p0, Lcom/google/zxing/client/android/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 233
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->resetStatusView()V

    .line 235
    const-string v10, "preview_view"

    invoke-static {v10}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/SurfaceView;

    .line 236
    .local v8, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v8}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    .line 237
    .local v7, "surfaceHolder":Landroid/view/SurfaceHolder;
    iget-boolean v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-eqz v10, :cond_5

    .line 240
    invoke-direct {p0, v7}, Lcom/google/zxing/client/android/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 247
    :goto_0
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {v10}, Lcom/google/zxing/client/android/BeepManager;->updatePrefs()V

    .line 249
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v10}, Lcom/google/zxing/client/android/InactivityTimer;->onResume()V

    .line 251
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 253
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 254
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v10, "preferences_copy_to_clipboard"

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v5, :cond_0

    const-string v10, "SAVE_HISTORY"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_0
    move v10, v11

    :goto_1
    iput-boolean v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->copyToClipboard:Z

    .line 257
    sget-object v10, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 258
    iput-object v14, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 259
    iput-object v14, p0, Lcom/google/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 261
    if-eqz v5, :cond_4

    .line 263
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "dataString":Ljava/lang/String;
    const-string v10, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 269
    sget-object v10, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 270
    invoke-static {v5}, Lcom/google/zxing/client/android/DecodeFormatManager;->parseDecodeFormats(Landroid/content/Intent;)Ljava/util/Collection;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 272
    const-string v10, "SCAN_WIDTH"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "SCAN_HEIGHT"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 273
    const-string v10, "SCAN_WIDTH"

    invoke-virtual {v5, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 274
    .local v9, "width":I
    const-string v10, "SCAN_HEIGHT"

    invoke-virtual {v5, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 275
    .local v3, "height":I
    if-lez v9, :cond_1

    if-lez v3, :cond_1

    .line 276
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v10, v9, v3}, Lcom/google/zxing/client/android/camera/CameraManager;->setManualFramingRect(II)V

    .line 280
    .end local v3    # "height":I
    .end local v9    # "width":I
    :cond_1
    const-string v10, "SHOW_RECTANGLE"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->showRectangle:Z

    .line 281
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    iget-boolean v13, p0, Lcom/google/zxing/client/android/CaptureActivity;->showRectangle:Z

    invoke-virtual {v10, v13}, Lcom/google/zxing/client/android/ViewfinderView;->setShowRectangle(Z)V

    .line 282
    const-string v10, "ALLOW_MENU"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->allowMenu:Z

    .line 283
    const-string v10, "ALLOW_INSTRUCTIONS"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 284
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->showHelpOnFirstLaunch()Z

    .line 287
    :cond_2
    const-string v10, "KEEP_OPEN"

    invoke-virtual {v5, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->keepOpen:Z

    .line 288
    const-string v10, "PROMPT_MESSAGE"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "customPromptMessage":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 290
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iput-boolean v11, p0, Lcom/google/zxing/client/android/CaptureActivity;->freezeStatusText:Z

    .line 316
    .end local v1    # "customPromptMessage":Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v10, "CHARACTER_SET"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 319
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "dataString":Ljava/lang/String;
    :cond_4
    return-void

    .line 243
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    invoke-interface {v7, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 244
    const/4 v10, 0x3

    invoke-interface {v7, v10}, Landroid/view/SurfaceHolder;->setType(I)V

    goto/16 :goto_0

    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_6
    move v10, v12

    .line 254
    goto/16 :goto_1

    .line 294
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "customPromptMessage":Ljava/lang/String;
    .restart local v2    # "dataString":Ljava/lang/String;
    :cond_7
    iput-boolean v12, p0, Lcom/google/zxing/client/android/CaptureActivity;->freezeStatusText:Z

    goto :goto_2

    .line 297
    .end local v1    # "customPromptMessage":Ljava/lang/String;
    :cond_8
    if-eqz v2, :cond_9

    const-string v10, "http://www.google"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "/m/products/scan"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 300
    sget-object v10, Lcom/google/zxing/client/android/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 301
    iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->sourceUrl:Ljava/lang/String;

    .line 302
    sget-object v10, Lcom/google/zxing/client/android/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Collection;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    goto :goto_2

    .line 304
    :cond_9
    invoke-static {v2}, Lcom/google/zxing/client/android/CaptureActivity;->isZXingURL(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 308
    sget-object v10, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 309
    iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->sourceUrl:Ljava/lang/String;

    .line 310
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->sourceUrl:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 311
    .local v4, "inputUri":Landroid/net/Uri;
    const-string v10, "ret"

    invoke-virtual {v4, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->returnUrlTemplate:Ljava/lang/String;

    .line 312
    invoke-static {v4}, Lcom/google/zxing/client/android/DecodeFormatManager;->parseDecodeFormats(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    goto :goto_2
.end method

.method private sendReplyMessage(ILjava/lang/Object;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 731
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 732
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "RESULT_DISPLAY_DURATION_MS"

    const-wide/16 v6, 0x5dc

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 733
    .local v2, "resultDurationMS":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 738
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private showHelpOnFirstLaunch()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 746
    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    sget-object v9, Lcom/google/zxing/client/android/CaptureActivity;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 747
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 750
    .local v0, "currentVersion":I
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->versionName:Ljava/lang/String;

    .line 751
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 752
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "preferences_help_version_shown"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 753
    .local v4, "lastVersion":I
    if-le v0, v4, :cond_0

    .line 754
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "preferences_help_version_shown"

    invoke-interface {v8, v9, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 755
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/google/zxing/client/android/HelpActivity;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 756
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x80000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 758
    if-nez v4, :cond_1

    const-string v5, "index.html"

    .line 759
    .local v5, "page":Ljava/lang/String;
    :goto_0
    const-string v8, "requested_page_key"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 761
    const/4 v7, 0x1

    .line 767
    .end local v0    # "currentVersion":I
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "lastVersion":I
    .end local v5    # "page":Ljava/lang/String;
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_1
    return v7

    .line 758
    .restart local v0    # "currentVersion":I
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "lastVersion":I
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    const-string v5, "whatsnew.html"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 763
    .end local v0    # "currentVersion":I
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "lastVersion":I
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 764
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 765
    sget-object v8, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->setResult(I)V

    .line 166
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    .line 167
    return-void
.end method

.method public doKeepOpen()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->keepOpen:Z

    return v0
.end method

.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/ViewfinderView;->drawViewfinder()V

    .line 816
    return-void
.end method

.method public getCameraManager()Lcom/google/zxing/client/android/camera/CameraManager;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    return-object v0
.end method

.method getViewfinderView()Lcom/google/zxing/client/android/ViewfinderView;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 500
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/InactivityTimer;->onActivity()V

    .line 501
    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 502
    invoke-static {p0, p1}, Lcom/google/zxing/client/android/result/ResultHandlerFactory;->makeResultHandler(Lcom/google/zxing/client/android/CaptureActivity;Lcom/google/zxing/Result;)Lcom/google/zxing/client/android/result/ResultHandler;

    move-result-object v1

    .line 503
    .local v1, "resultHandler":Lcom/google/zxing/client/android/result/ResultHandler;
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v2, p1, v1}, Lcom/google/zxing/client/android/history/HistoryManager;->addHistoryItem(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;)V

    .line 505
    if-nez p2, :cond_0

    .line 507
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/google/zxing/client/android/CaptureActivity;->handleDecodeInternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V

    .line 535
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/BeepManager;->playBeepSoundAndVibrate()V

    .line 510
    invoke-direct {p0, p2, p1}, Lcom/google/zxing/client/android/CaptureActivity;->drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V

    .line 511
    sget-object v2, Lcom/google/zxing/client/android/CaptureActivity$3;->$SwitchMap$com$google$zxing$client$android$IntentSource:[I

    iget-object v3, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    invoke-virtual {v3}, Lcom/google/zxing/client/android/IntentSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 514
    :pswitch_0
    invoke-direct {p0, p1, v1, p2}, Lcom/google/zxing/client/android/CaptureActivity;->handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 517
    :pswitch_1
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->returnUrlTemplate:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 518
    invoke-direct {p0, p1, v1, p2}, Lcom/google/zxing/client/android/CaptureActivity;->handleDecodeInternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 520
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/google/zxing/client/android/CaptureActivity;->handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 524
    :pswitch_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 525
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "preferences_bulk_mode"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 526
    const-string v2, "msg_bulk_mode_scanned"

    invoke-static {v2}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 528
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/client/android/CaptureActivity;->restartPreviewAfterDelay(J)V

    goto :goto_0

    .line 530
    :cond_2
    invoke-direct {p0, p1, v1, p2}, Lcom/google/zxing/client/android/CaptureActivity;->handleDecodeInternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 443
    if-ne p2, v3, :cond_0

    .line 444
    const v2, 0xbacc

    if-ne p1, v2, :cond_0

    .line 445
    const-string v2, "ITEM_NUMBER"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 446
    .local v1, "itemNumber":I
    if-ltz v1, :cond_0

    .line 447
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v2, v1}, Lcom/google/zxing/client/android/history/HistoryManager;->buildHistoryItem(I)Lcom/google/zxing/client/android/history/HistoryItem;

    move-result-object v0

    .line 448
    .local v0, "historyItem":Lcom/google/zxing/client/android/history/HistoryItem;
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/google/zxing/client/android/history/HistoryItem;->getResult()Lcom/google/zxing/Result;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/client/android/CaptureActivity;->decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V

    .line 452
    .end local v0    # "historyItem":Lcom/google/zxing/client/android/history/HistoryItem;
    .end local v1    # "itemNumber":I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 178
    .local v1, "window":Landroid/view/Window;
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 179
    sput-object p0, Lcom/google/zxing/client/android/CaptureActivity;->_instance:Lcom/google/zxing/client/android/CaptureActivity;

    .line 181
    const-string v2, "capture"

    invoke-static {v2}, Lti/barcode/RHelper;->getLayout(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->_layout:Landroid/widget/FrameLayout;

    .line 183
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->_layout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/google/zxing/client/android/CaptureActivity;->setContentView(Landroid/view/View;)V

    .line 185
    sget-object v2, Lcom/google/zxing/client/android/Intents$Scan;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v2, :cond_0

    .line 186
    sget-object v2, Lcom/google/zxing/client/android/Intents$Scan;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, "overlayView":Landroid/view/View;
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 191
    .end local v0    # "overlayView":Landroid/view/View;
    :cond_0
    iput-boolean v4, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 192
    new-instance v2, Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-direct {v2, p0}, Lcom/google/zxing/client/android/history/HistoryManager;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    .line 193
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/history/HistoryManager;->trimHistory()V

    .line 194
    new-instance v2, Lcom/google/zxing/client/android/InactivityTimer;

    invoke-direct {v2, p0}, Lcom/google/zxing/client/android/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    .line 195
    new-instance v2, Lcom/google/zxing/client/android/BeepManager;

    invoke-direct {v2, p0}, Lcom/google/zxing/client/android/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    .line 197
    const-string v2, "preferences"

    invoke-static {v2}, Lti/barcode/RHelper;->getXML(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2, v4}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 198
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 383
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 384
    iget-boolean v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->allowMenu:Z

    if-nez v2, :cond_0

    .line 392
    :goto_0
    return v0

    .line 387
    :cond_0
    const-string v2, "menu_share"

    invoke-static {v2}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const-string v3, "ic_menu_share"

    invoke-static {v3}, Lti/barcode/RHelper;->getDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 388
    const/4 v2, 0x2

    const-string v3, "menu_history"

    invoke-static {v3}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const-string v3, "ic_menu_recent_history"

    invoke-static {v3}, Lti/barcode/RHelper;->getDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 389
    const/4 v2, 0x3

    const-string v3, "menu_settings"

    invoke-static {v3}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const-string v3, "ic_menu_preferences"

    invoke-static {v3}, Lti/barcode/RHelper;->getDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 390
    const/4 v2, 0x4

    const-string v3, "menu_help"

    invoke-static {v3}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const-string v3, "ic_menu_help"

    invoke-static {v3}, Lti/barcode/RHelper;->getDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 391
    const/4 v2, 0x5

    const-string v3, "menu_about"

    invoke-static {v3}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const-string v2, "ic_menu_info_details"

    invoke-static {v2}, Lti/barcode/RHelper;->getDrawable(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    .line 392
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 355
    const/4 v0, 0x0

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->_instance:Lcom/google/zxing/client/android/CaptureActivity;

    .line 356
    sget-object v0, Lcom/google/zxing/client/android/Intents$Scan;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->_layout:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/google/zxing/client/android/Intents$Scan;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->shutdown()V

    .line 360
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 361
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 365
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 366
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    if-ne v1, v2, :cond_1

    .line 367
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->setResult(I)V

    .line 368
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    if-ne v1, v2, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    if-eqz v1, :cond_4

    .line 371
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/client/android/CaptureActivity;->restartPreviewAfterDelay(J)V

    goto :goto_0

    .line 374
    :cond_3
    const/16 v1, 0x50

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    .line 378
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/high16 v3, 0x80000

    .line 405
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 407
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 436
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 438
    :goto_0
    return v2

    .line 409
    :pswitch_0
    const-class v2, Lcom/google/zxing/client/android/share/ShareActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 438
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 413
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 415
    const-class v2, Lcom/google/zxing/client/android/history/HistoryActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const v2, 0xbacc

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/client/android/CaptureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 419
    :pswitch_2
    const-class v2, Lcom/google/zxing/client/android/PreferencesActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 423
    :pswitch_3
    const-class v2, Lcom/google/zxing/client/android/HelpActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 427
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title_about"

    invoke-static {v3}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/zxing/client/android/CaptureActivity;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg_about"

    invoke-static {v3}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "launcher_icon"

    invoke-static {v3}, Lti/barcode/RHelper;->getDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 430
    const-string v2, "launcher_icon"

    invoke-static {v2}, Lti/barcode/RHelper;->getDrawable(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 431
    const-string v2, "button_open_browser"

    invoke-static {v2}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/client/android/CaptureActivity;->aboutListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    const-string v2, "button_cancel"

    invoke-static {v2}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 433
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 407
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->pause()V

    .line 336
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 337
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 398
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 399
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 400
    return v1

    .line 399
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 214
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->resume()V

    .line 215
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/google/zxing/client/android/CaptureActivity$2;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/CaptureActivity$2;-><init>(Lcom/google/zxing/client/android/CaptureActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method public restartPreviewAfterDelay(J)V
    .locals 3
    .param p1, "delayMS"    # J

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    const-string v1, "restart_preview"

    invoke-static {v1}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 802
    :cond_0
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->resetStatusView()V

    .line 803
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 489
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 472
    if-nez p1, :cond_0

    .line 473
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    iget-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_1

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 477
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 479
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 484
    return-void
.end method
