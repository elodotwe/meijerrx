.class public final Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# static fields
.field private static final MAX_PREVIEW_PIXELS:I = 0x5dc00

.field private static final MIN_PREVIEW_PIXELS:I = 0x12c00

.field private static final TAG:Ljava/lang/String; = "CameraConfiguration"


# instance fields
.field private cameraResolution:Landroid/graphics/Point;

.field private final context:Landroid/content/Context;

.field private screenResolution:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private static doSetTorch(Landroid/hardware/Camera$Parameters;Z)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "newSetting"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 145
    if-eqz p1, :cond_1

    .line 146
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "torch"

    aput-object v3, v2, v4

    const-string v3, "on"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void

    .line 150
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "flashMode":Ljava/lang/String;
    goto :goto_0
.end method

.method private static findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 11
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "screenResolution"    # Landroid/graphics/Point;
    .param p2, "portrait"    # Z

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "bestSize":Landroid/graphics/Point;
    const v2, 0x7fffffff

    .line 163
    .local v2, "diff":I
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 164
    .local v7, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    iget v9, v7, Landroid/hardware/Camera$Size;->height:I

    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    mul-int v5, v9, v10

    .line 165
    .local v5, "pixels":I
    const v9, 0x12c00

    if-lt v5, v9, :cond_0

    const v9, 0x5dc00

    if-gt v5, v9, :cond_0

    .line 168
    if-eqz p2, :cond_3

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    .line 169
    .local v8, "supportedWidth":I
    :goto_1
    if-eqz p2, :cond_4

    iget v6, v7, Landroid/hardware/Camera$Size;->width:I

    .line 170
    .local v6, "supportedHeight":I
    :goto_2
    iget v9, p1, Landroid/graphics/Point;->x:I

    mul-int/2addr v9, v6

    iget v10, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr v10, v8

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 171
    .local v4, "newDiff":I
    if-nez v4, :cond_5

    .line 172
    new-instance v0, Landroid/graphics/Point;

    .end local v0    # "bestSize":Landroid/graphics/Point;
    invoke-direct {v0, v8, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 180
    .end local v4    # "newDiff":I
    .end local v5    # "pixels":I
    .end local v6    # "supportedHeight":I
    .end local v7    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    .end local v8    # "supportedWidth":I
    .restart local v0    # "bestSize":Landroid/graphics/Point;
    :cond_1
    if-nez v0, :cond_2

    .line 181
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 182
    .local v1, "defaultSize":Landroid/hardware/Camera$Size;
    new-instance v0, Landroid/graphics/Point;

    .end local v0    # "bestSize":Landroid/graphics/Point;
    iget v9, v1, Landroid/hardware/Camera$Size;->width:I

    iget v10, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 184
    .end local v1    # "defaultSize":Landroid/hardware/Camera$Size;
    .restart local v0    # "bestSize":Landroid/graphics/Point;
    :cond_2
    return-object v0

    .line 168
    .restart local v5    # "pixels":I
    .restart local v7    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_3
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    goto :goto_1

    .line 169
    .restart local v8    # "supportedWidth":I
    :cond_4
    iget v6, v7, Landroid/hardware/Camera$Size;->height:I

    goto :goto_2

    .line 175
    .restart local v4    # "newDiff":I
    .restart local v6    # "supportedHeight":I
    :cond_5
    if-ge v4, v2, :cond_0

    .line 176
    new-instance v0, Landroid/graphics/Point;

    .end local v0    # "bestSize":Landroid/graphics/Point;
    invoke-direct {v0, v8, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 177
    .restart local v0    # "bestSize":Landroid/graphics/Point;
    move v2, v4

    goto :goto_0
.end method

.method private static varargs findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "desiredValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "supportedValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v5, "CameraConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Supported values: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v4, 0x0

    .line 191
    .local v4, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 192
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 193
    .local v1, "desiredValue":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 194
    move-object v4, v1

    .line 199
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "desiredValue":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    const-string v5, "CameraConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Settable value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-object v4

    .line 192
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "desiredValue":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static initializeTorch(Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;)V
    .locals 3
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 139
    const-string v1, "preferences_front_light"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 140
    .local v0, "currentSetting":Z
    invoke-static {p0, v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera$Parameters;Z)V

    .line 141
    return-void
.end method


# virtual methods
.method getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method public getFrontCamera()Z
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "preferences_front_camera"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method getScreenResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method public getTorch()Z
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "preferences_front_light"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method initFromCameraParameters(Landroid/hardware/Camera;)V
    .locals 9
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 55
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v6, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 56
    .local v2, "manager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 57
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 58
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 61
    .local v1, "height":I
    if-ge v5, v1, :cond_0

    .line 62
    const-string v6, "CameraConfiguration"

    const-string v7, "Display reports portrait orientation; assuming this is incorrect"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    move v4, v5

    .line 64
    .local v4, "temp":I
    move v5, v1

    .line 65
    move v1, v4

    .line 67
    .end local v4    # "temp":I
    :cond_0
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v5, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    .line 68
    const-string v6, "CameraConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screen resolution: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v6, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v6

    iput-object v6, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    .line 70
    const-string v6, "CameraConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Camera resolution: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method setDesiredCameraParameters(Landroid/hardware/Camera;)V
    .locals 7
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 76
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 77
    const-string v3, "CameraConfiguration"

    const-string v4, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v3, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 83
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v1, v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->initializeTorch(Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;)V

    .line 84
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "auto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "macro"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "focusMode":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 92
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public setFrontCamera(Z)V
    .locals 5
    .param p1, "newSetting"    # Z

    .prologue
    .line 104
    iget-object v3, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 105
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "preferences_front_camera"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 106
    .local v0, "currentSetting":Z
    if-eq v0, p1, :cond_0

    .line 107
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 108
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "preferences_front_camera"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setTorch(Landroid/hardware/Camera;Z)V
    .locals 6
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "newSetting"    # Z

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 126
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-static {v2, p2}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera$Parameters;Z)V

    .line 127
    invoke-virtual {p1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 129
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    iget-object v4, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 130
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "preferences_front_light"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 131
    .local v0, "currentSetting":Z
    if-eq v0, p2, :cond_1

    .line 132
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 133
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "preferences_front_light"

    invoke-interface {v1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method
