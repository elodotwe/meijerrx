.class public final Lcom/google/zxing/client/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x2a3

.field private static final MAX_FRAME_WIDTH:I = 0x4b0

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final autoFocusCallback:Lcom/google/zxing/client/android/camera/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

.field private previewing:Z

.field private requestedFramingRectHeight:I

.field private requestedFramingRectWidth:I

.field private reverseImage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    .line 73
    new-instance v0, Lcom/google/zxing/client/android/camera/PreviewCallback;

    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/camera/PreviewCallback;-><init>(Lcom/google/zxing/client/android/camera/CameraConfigurationManager;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

    .line 74
    new-instance v0, Lcom/google/zxing/client/android/camera/AutoFocusCallback;

    invoke-direct {v0}, Lcom/google/zxing/client/android/camera/AutoFocusCallback;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusCallback:Lcom/google/zxing/client/android/camera/AutoFocusCallback;

    .line 75
    return-void
.end method

.method private static findDesiredDimensionInRange(III)I
    .locals 2
    .param p0, "resolution"    # I
    .param p1, "hardMin"    # I
    .param p2, "hardMax"    # I

    .prologue
    .line 297
    mul-int/lit8 v1, p0, 0x5

    div-int/lit8 v0, v1, 0x8

    .line 298
    .local v0, "dim":I
    if-ge v0, p1, :cond_0

    .line 304
    .end local p1    # "hardMin":I
    :goto_0
    return p1

    .line 301
    .restart local p1    # "hardMin":I
    :cond_0
    if-le v0, p2, :cond_1

    move p1, p2

    .line 302
    goto :goto_0

    :cond_1
    move p1, v0

    .line 304
    goto :goto_0
.end method

.method private openFrontFacingCamera()Landroid/hardware/Camera;
    .locals 17

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 94
    .local v2, "camera":Landroid/hardware/Camera;
    :try_start_0
    const-string v13, "android.hardware.Camera"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 95
    .local v3, "cameraClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 96
    .local v5, "cameraInfo":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 97
    .local v10, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .line 98
    .local v4, "cameraCount":I
    const-string v13, "getNumberOfCameras"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v3, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 99
    .local v12, "getNumberOfCamerasMethod":Ljava/lang/reflect/Method;
    if-eqz v12, :cond_0

    .line 100
    const/4 v14, 0x0

    const/4 v13, 0x0

    check-cast v13, [Ljava/lang/Object;

    invoke-virtual {v12, v14, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 102
    :cond_0
    const-string v13, "android.hardware.Camera$CameraInfo"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 103
    .local v6, "cameraInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v6, :cond_1

    .line 104
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 106
    .end local v5    # "cameraInfo":Ljava/lang/Object;
    :cond_1
    if-eqz v5, :cond_2

    .line 107
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "facing"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 109
    :cond_2
    const-string v13, "getCameraInfo"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v6, v14, v15

    invoke-virtual {v3, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 110
    .local v11, "getCameraInfoMethod":Ljava/lang/reflect/Method;
    if-eqz v11, :cond_4

    if-eqz v6, :cond_4

    if-eqz v10, :cond_4

    .line 111
    const/4 v1, 0x0

    .local v1, "camIdx":I
    :goto_0
    if-ge v1, v4, :cond_4

    .line 112
    const/4 v13, 0x0

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    invoke-virtual {v11, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {v10, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_7

    move-result v9

    .line 114
    .local v9, "facing":I
    const/4 v13, 0x1

    if-ne v9, v13, :cond_3

    .line 116
    :try_start_1
    const-string v13, "open"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 117
    .local v7, "cameraOpenMethod":Ljava/lang/reflect/Method;
    if-eqz v7, :cond_3

    .line 118
    const/4 v13, 0x0

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v7, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Landroid/hardware/Camera;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7

    .line 111
    .end local v7    # "cameraOpenMethod":Ljava/lang/reflect/Method;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v8

    .line 121
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v13, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Camera failed to open: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_1

    .line 128
    .end local v1    # "camIdx":I
    .end local v3    # "cameraClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "cameraCount":I
    .end local v6    # "cameraInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v9    # "facing":I
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "getCameraInfoMethod":Ljava/lang/reflect/Method;
    .end local v12    # "getNumberOfCamerasMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v8

    .line 129
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    sget-object v13, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ClassNotFoundException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/ClassNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    :cond_4
    :goto_2
    return-object v2

    .line 130
    :catch_2
    move-exception v8

    .line 131
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    sget-object v13, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NoSuchMethodException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/NoSuchMethodException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 132
    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v8

    .line 133
    .local v8, "e":Ljava/lang/NoSuchFieldException;
    sget-object v13, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NoSuchFieldException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/NoSuchFieldException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 134
    .end local v8    # "e":Ljava/lang/NoSuchFieldException;
    :catch_4
    move-exception v8

    .line 135
    .local v8, "e":Ljava/lang/IllegalAccessException;
    sget-object v13, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IllegalAccessException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 136
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v8

    .line 137
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v13, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "InvocationTargetException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 138
    .end local v8    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_6
    move-exception v8

    .line 139
    .local v8, "e":Ljava/lang/InstantiationException;
    sget-object v13, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "InstantiationException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/InstantiationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 140
    .end local v8    # "e":Ljava/lang/InstantiationException;
    :catch_7
    move-exception v8

    .line 141
    .local v8, "e":Ljava/lang/SecurityException;
    sget-object v13, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SecurityException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/client/android/PlanarYUVLuminanceSource;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v9

    .line 367
    .local v9, "rect":Landroid/graphics/Rect;
    if-nez v9, :cond_0

    .line 368
    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/zxing/client/android/PlanarYUVLuminanceSource;

    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v5, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-boolean v8, p0, Lcom/google/zxing/client/android/camera/CameraManager;->reverseImage:Z

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/client/android/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    goto :goto_0
.end method

.method public closeDriver()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 199
    iput-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 202
    iput-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 203
    iput-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 205
    :cond_0
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0xf0

    .line 272
    iget-object v6, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v6, :cond_2

    .line 273
    iget-object v6, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v6, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-object v5

    .line 276
    :cond_1
    iget-object v6, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v6}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 277
    .local v2, "screenResolution":Landroid/graphics/Point;
    if-eqz v2, :cond_0

    .line 282
    iget v5, v2, Landroid/graphics/Point;->x:I

    const/16 v6, 0x4b0

    invoke-static {v5, v7, v6}, Lcom/google/zxing/client/android/camera/CameraManager;->findDesiredDimensionInRange(III)I

    move-result v4

    .line 284
    .local v4, "width":I
    iget v5, v2, Landroid/graphics/Point;->y:I

    const/16 v6, 0x2a3

    invoke-static {v5, v7, v6}, Lcom/google/zxing/client/android/camera/CameraManager;->findDesiredDimensionInRange(III)I

    move-result v0

    .line 287
    .local v0, "height":I
    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    div-int/lit8 v1, v5, 0x2

    .line 288
    .local v1, "leftOffset":I
    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    div-int/lit8 v3, v5, 0x2

    .line 289
    .local v3, "topOffset":I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v4

    add-int v7, v3, v0

    invoke-direct {v5, v1, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 291
    sget-object v5, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calculated framing rect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v0    # "height":I
    .end local v1    # "leftOffset":I
    .end local v2    # "screenResolution":Landroid/graphics/Point;
    .end local v3    # "topOffset":I
    .end local v4    # "width":I
    :cond_2
    iget-object v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 312
    iget-object v4, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 314
    .local v1, "framingRect":Landroid/graphics/Rect;
    if-nez v1, :cond_0

    .line 315
    const/4 v4, 0x0

    .line 326
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    :goto_0
    return-object v4

    .line 317
    .restart local v1    # "framingRect":Landroid/graphics/Rect;
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 318
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v4}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 319
    .local v0, "cameraResolution":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v4}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v3

    .line 320
    .local v3, "screenResolution":Landroid/graphics/Point;
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 321
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 322
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 323
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 324
    iput-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 326
    .end local v0    # "cameraResolution":Landroid/graphics/Point;
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "screenResolution":Landroid/graphics/Point;
    :cond_1
    iget-object v4, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "hadCamera":Z
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 155
    const/4 v0, 0x1

    .line 156
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->stopPreview()V

    .line 157
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->openFrontFacingCamera()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_2

    .line 166
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 169
    :cond_2
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_3

    .line 171
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 175
    iget-boolean v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->initialized:Z

    if-nez v2, :cond_4

    .line 176
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->initialized:Z

    .line 177
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    iget-object v3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 178
    iget v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I

    if-lez v2, :cond_4

    .line 179
    iget v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    iget v3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/client/android/camera/CameraManager;->setManualFramingRect(II)V

    .line 180
    iput v4, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    .line 181
    iput v4, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I

    .line 184
    :cond_4
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    iget-object v3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 186
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 187
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "preferences_reverse_image"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->reverseImage:Z

    .line 188
    if-eqz v0, :cond_5

    .line 189
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->startPreview()V

    .line 191
    :cond_5
    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 253
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusCallback:Lcom/google/zxing/client/android/camera/AutoFocusCallback;

    invoke-virtual {v1, p1, p2}, Lcom/google/zxing/client/android/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusCallback:Lcom/google/zxing/client/android/camera/AutoFocusCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 259
    .local v0, "re":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected exception while focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 240
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {v1, p1, p2}, Lcom/google/zxing/client/android/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 242
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 244
    :cond_0
    return-void
.end method

.method public setManualFramingRect(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 337
    iget-boolean v3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->initialized:Z

    if-eqz v3, :cond_2

    .line 338
    iget-object v3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 339
    .local v1, "screenResolution":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    if-le p1, v3, :cond_0

    .line 340
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 342
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->y:I

    if-le p2, v3, :cond_1

    .line 343
    iget p2, v1, Landroid/graphics/Point;->y:I

    .line 345
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p1

    div-int/lit8 v0, v3, 0x2

    .line 346
    .local v0, "leftOffset":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p2

    div-int/lit8 v2, v3, 0x2

    .line 347
    .local v2, "topOffset":I
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v0, p1

    add-int v5, v2, p2

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 348
    sget-object v3, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated manual framing rect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 354
    .end local v0    # "leftOffset":I
    .end local v1    # "screenResolution":Landroid/graphics/Point;
    .end local v2    # "topOffset":I
    :goto_0
    return-void

    .line 351
    :cond_2
    iput p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    .line 352
    iput p2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I

    goto :goto_0
.end method

.method public startPreview()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 212
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 213
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    .line 216
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 222
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 224
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/client/android/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 225
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusCallback:Lcom/google/zxing/client/android/camera/AutoFocusCallback;

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/client/android/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 226
    iput-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    .line 228
    :cond_0
    return-void
.end method
