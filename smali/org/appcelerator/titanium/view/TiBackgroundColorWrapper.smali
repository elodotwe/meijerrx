.class public Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;
.super Ljava/lang/Object;
.source "TiBackgroundColorWrapper.java"


# static fields
.field private static final COLOR_DRAWABLE_STATE_VAR:Ljava/lang/String; = "mState"

.field private static final COLOR_DRAWABLE_USE_COLOR_VAR:Ljava/lang/String; = "mUseColor"

.field private static final ERR_BACKGROUND_COLOR:Ljava/lang/String; = "Unable to determine the current background color. Transparent will be returned as the color value."

.field private static final IS_HONEYCOMB_OR_GREATER:Z

.field private static final TAG:Ljava/lang/String;

.field private static cdBackgroundReflectionReady:Z

.field private static cdBackgroundStateColorField:Ljava/lang/reflect/Field;

.field private static cdBackgroundStateField:Ljava/lang/reflect/Field;


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 33
    const-class v0, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->TAG:Ljava/lang/String;

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->IS_HONEYCOMB_OR_GREATER:Z

    .line 43
    sput-object v3, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->cdBackgroundStateField:Ljava/lang/reflect/Field;

    .line 44
    sput-object v3, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->cdBackgroundStateColorField:Ljava/lang/reflect/Field;

    .line 45
    sput-boolean v1, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->cdBackgroundReflectionReady:Z

    return-void

    :cond_0
    move v0, v1

    .line 36
    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->view:Landroid/view/View;

    .line 52
    return-void
.end method

.method private findNearestBackgroundDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    move-object v1, p1

    .line 72
    .local v1, "checkView":Landroid/view/View;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    instance-of v5, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_1

    move-object v3, v0

    .line 81
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 83
    .local v3, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 84
    .local v2, "layerCount":I
    if-lez v2, :cond_1

    .line 85
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    .end local v2    # "layerCount":I
    .end local v3    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    if-nez v0, :cond_0

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 97
    .local v4, "parent":Landroid/view/ViewParent;
    const/4 v1, 0x0

    .line 98
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_0

    move-object v1, v4

    .line 99
    check-cast v1, Landroid/view/View;

    goto :goto_0

    .line 104
    .end local v4    # "parent":Landroid/view/ViewParent;
    :cond_2
    return-object v0
.end method

.method private getColorFromColorDrawable(Landroid/graphics/drawable/ColorDrawable;)I
    .locals 5
    .param p1, "colorDrawable"    # Landroid/graphics/drawable/ColorDrawable;

    .prologue
    const/4 v1, 0x0

    .line 184
    sget-boolean v3, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->IS_HONEYCOMB_OR_GREATER:Z

    if-eqz v3, :cond_0

    .line 185
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->getColorFromColorDrawableHC(Landroid/graphics/drawable/ColorDrawable;)I

    move-result v1

    .line 221
    :goto_0
    return v1

    .line 188
    :cond_0
    sget-boolean v3, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->cdBackgroundReflectionReady:Z

    if-nez v3, :cond_1

    .line 189
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->initColorDrawableReflection(Landroid/graphics/drawable/ColorDrawable;)V

    .line 192
    :cond_1
    sget-object v3, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->cdBackgroundStateField:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_2

    sget-object v3, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->cdBackgroundStateColorField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_3

    .line 194
    :cond_2
    sget-object v3, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Unable to determine the current background color. Transparent will be returned as the color value."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_3
    const/4 v0, 0x0

    .line 201
    .local v0, "colorStatusInstance":Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->cdBackgroundStateField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 207
    if-nez v0, :cond_4

    .line 208
    sget-object v3, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Unable to determine the current background color. Transparent will be returned as the color value."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Unable to determine the current background color. Transparent will be returned as the color value."

    invoke-static {v3, v4, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 212
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v1, 0x0

    .line 215
    .local v1, "colorValue":I
    :try_start_1
    sget-object v3, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->cdBackgroundStateColorField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 217
    :catch_1
    move-exception v2

    .line 218
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v3, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Unable to determine the current background color. Transparent will be returned as the color value."

    invoke-static {v3, v4, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getColorFromColorDrawableHC(Landroid/graphics/drawable/ColorDrawable;)I
    .locals 1
    .param p1, "colorDrawable"    # Landroid/graphics/drawable/ColorDrawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    return v0
.end method

.method private initColorDrawableReflection(Landroid/graphics/drawable/ColorDrawable;)V
    .locals 5
    .param p1, "colorDrawable"    # Landroid/graphics/drawable/ColorDrawable;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 152
    sput-boolean v2, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->cdBackgroundReflectionReady:Z

    .line 154
    const-class v0, Landroid/graphics/drawable/ColorDrawable;

    .line 157
    .local v0, "cdClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/drawable/ColorDrawable;>;"
    :try_start_0
    const-string v2, "mState"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->cdBackgroundStateField:Ljava/lang/reflect/Field;

    .line 159
    sget-object v2, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->cdBackgroundStateField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :try_start_1
    sget-object v2, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->cdBackgroundStateField:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mUseColor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->cdBackgroundStateColorField:Ljava/lang/reflect/Field;

    .line 171
    sget-object v2, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->cdBackgroundStateColorField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->TAG:Ljava/lang/String;

    const-string v3, "Reflection failed while trying to determine background color of view."

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    sput-object v4, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->cdBackgroundStateField:Ljava/lang/reflect/Field;

    goto :goto_0

    .line 172
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 173
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v2, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->TAG:Ljava/lang/String;

    const-string v3, "Reflection failed while trying to determine background color of view."

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    sput-object v4, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->cdBackgroundStateColorField:Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method public static wrap(Landroid/view/View;)Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 56
    new-instance v0, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->view:Landroid/view/View;

    if-nez v4, :cond_0

    .line 110
    sget-object v4, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->TAG:Ljava/lang/String;

    const-string v5, "View was not set. Unable to determine the current background color. Returning Color.TRANSPARENT."

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return v3

    .line 115
    :cond_0
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->view:Landroid/view/View;

    invoke-direct {p0, v4}, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->findNearestBackgroundDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 118
    sget-object v4, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->TAG:Ljava/lang/String;

    const-string v5, "Unable to determine the current background color. Transparent will be returned as the color value."

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_1
    instance-of v4, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_2

    .line 123
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->getColorFromColorDrawable(Landroid/graphics/drawable/ColorDrawable;)I

    move-result v3

    goto :goto_0

    .line 126
    .restart local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    instance-of v4, v0, Lorg/appcelerator/titanium/view/TiGradientDrawable;

    if-eqz v4, :cond_4

    .line 127
    check-cast v0, Lorg/appcelerator/titanium/view/TiGradientDrawable;

    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiGradientDrawable;->getColors()[I

    move-result-object v1

    .line 130
    .local v1, "gradientColors":[I
    array-length v4, v1

    if-lez v4, :cond_3

    .line 132
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget v3, v1, v3

    goto :goto_0

    .line 134
    :cond_3
    sget-object v4, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->TAG:Ljava/lang/String;

    const-string v5, "Unable to determine the current background color. Transparent will be returned as the color value."

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    .end local v1    # "gradientColors":[I
    .restart local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    instance-of v4, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v4, :cond_5

    .line 140
    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 141
    .local v2, "paint":Landroid/graphics/Paint;
    if-eqz v2, :cond_5

    .line 142
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    goto :goto_0

    .line 146
    .end local v2    # "paint":Landroid/graphics/Paint;
    :cond_5
    sget-object v4, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->TAG:Ljava/lang/String;

    const-string v5, "Unable to determine the current background color. Transparent will be returned as the color value."

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 234
    sget-object v0, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Wrapped view is null. Cannot set background color."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
