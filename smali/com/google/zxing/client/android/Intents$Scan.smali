.class public final Lcom/google/zxing/client/android/Intents$Scan;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scan"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.google.zxing.client.android.SCAN"

.field public static final ALLOW_INSTRUCTIONS:Ljava/lang/String; = "ALLOW_INSTRUCTIONS"

.field public static final ALLOW_MENU:Ljava/lang/String; = "ALLOW_MENU"

.field public static final CHARACTER_SET:Ljava/lang/String; = "CHARACTER_SET"

.field public static final DATA_MATRIX_MODE:Ljava/lang/String; = "DATA_MATRIX_MODE"

.field public static final FORMATS:Ljava/lang/String; = "SCAN_FORMATS"

.field public static final HEIGHT:Ljava/lang/String; = "SCAN_HEIGHT"

.field public static final KEEP_OPEN:Ljava/lang/String; = "KEEP_OPEN"

.field public static final MODE:Ljava/lang/String; = "SCAN_MODE"

.field public static final ONE_D_MODE:Ljava/lang/String; = "ONE_D_MODE"

.field public static final PRODUCT_MODE:Ljava/lang/String; = "PRODUCT_MODE"

.field public static final PROMPT_MESSAGE:Ljava/lang/String; = "PROMPT_MESSAGE"

.field public static final QR_CODE_MODE:Ljava/lang/String; = "QR_CODE_MODE"

.field public static final RESULT:Ljava/lang/String; = "SCAN_RESULT"

.field public static final RESULT_BYTES:Ljava/lang/String; = "SCAN_RESULT_BYTES"

.field public static final RESULT_BYTE_SEGMENTS_PREFIX:Ljava/lang/String; = "SCAN_RESULT_BYTE_SEGMENTS_"

.field public static final RESULT_DISPLAY_DURATION_MS:Ljava/lang/String; = "RESULT_DISPLAY_DURATION_MS"

.field public static final RESULT_ERROR_CORRECTION_LEVEL:Ljava/lang/String; = "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

.field public static final RESULT_FORMAT:Ljava/lang/String; = "SCAN_RESULT_FORMAT"

.field public static final RESULT_ORIENTATION:Ljava/lang/String; = "SCAN_RESULT_ORIENTATION"

.field public static final SAVE_HISTORY:Ljava/lang/String; = "SAVE_HISTORY"

.field public static final SHOW_RECTANGLE:Ljava/lang/String; = "SHOW_RECTANGLE"

.field public static final USE_FRONT_CAMERA:Ljava/lang/String; = "USE_FRONT_CAMERA"

.field public static final USE_LED:Ljava/lang/String; = "USE_LED"

.field public static final WIDTH:Ljava/lang/String; = "SCAN_WIDTH"

.field public static overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/google/zxing/client/android/Intents$Scan;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method
