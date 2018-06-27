.class public Lorg/appcelerator/titanium/view/TiBorderWrapperView;
.super Landroid/widget/FrameLayout;
.source "TiBorderWrapperView.java"


# static fields
.field public static final SOLID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TiBorderWrapperView"


# instance fields
.field private alpha:I

.field private bgColor:I

.field private borderPath:Landroid/graphics/Path;

.field private borderWidth:F

.field private child:Landroid/view/View;

.field private color:I

.field private innerPath:Landroid/graphics/Path;

.field private innerRect:Landroid/graphics/RectF;

.field private outerRect:Landroid/graphics/RectF;

.field private paint:Landroid/graphics/Paint;

.field private radius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput v2, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->color:I

    .line 39
    iput v2, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->bgColor:I

    .line 40
    iput v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->radius:F

    .line 41
    iput v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderWidth:F

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->alpha:I

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->outerRect:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerRect:Landroid/graphics/RectF;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->paint:Landroid/graphics/Paint;

    .line 55
    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setWillNotDraw(Z)V

    .line 56
    return-void
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 128
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setAlphaAndColor()V

    .line 129
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 130
    return-void
.end method

.method private setAlphaAndColor()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->alpha:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 138
    :cond_0
    return-void
.end method

.method private updateBorderPath()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 91
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 92
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->outerRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 94
    const/4 v4, 0x0

    .line 95
    .local v4, "padding":I
    const/4 v2, 0x0

    .line 97
    .local v2, "maxPadding":I
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->outerRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    div-float/2addr v5, v7

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->outerRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v2, v5

    .line 98
    iget v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderWidth:F

    int-to-float v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v4, v5

    .line 99
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerRect:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v4

    int-to-float v7, v7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    int-to-float v8, v8

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v4

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 101
    iget v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->radius:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_1

    .line 102
    new-array v3, v11, [F

    .line 103
    .local v3, "outerRadii":[F
    iget v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->radius:F

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([FF)V

    .line 104
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    .line 105
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->outerRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v3, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 106
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 107
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerPath:Landroid/graphics/Path;

    .line 108
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 109
    iget v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->radius:F

    int-to-float v6, v4

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v10

    if-lez v5, :cond_0

    .line 110
    new-array v1, v11, [F

    .line 111
    .local v1, "innerRadii":[F
    iget v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->radius:F

    int-to-float v6, v4

    sub-float/2addr v5, v6

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([FF)V

    .line 112
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v1, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 113
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v1, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 124
    .end local v1    # "innerRadii":[F
    .end local v3    # "outerRadii":[F
    :goto_0
    return-void

    .line 115
    .restart local v3    # "outerRadii":[F
    :cond_0
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 116
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 119
    .end local v3    # "outerRadii":[F
    :cond_1
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    .line 120
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->outerRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 121
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 122
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->updateBorderPath()V

    .line 62
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->drawBorder(Landroid/graphics/Canvas;)V

    .line 63
    iget v1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->radius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 67
    :try_start_0
    iget v1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->bgColor:I

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->bgColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerPath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 72
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 76
    iget v1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->bgColor:I

    if-eqz v1, :cond_1

    .line 77
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setAlphaAndColor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TiBorderWrapperView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clipPath failed on canvas: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method public onSetAlpha(I)Z
    .locals 5
    .param p1, "alpha"    # I

    .prologue
    const/4 v2, 0x0

    .line 163
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_2

    .line 171
    iput p1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->alpha:I

    .line 172
    int-to-float v2, p1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v0, v2, v3

    .line 173
    .local v0, "falpha":F
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->child:Landroid/view/View;

    if-nez v2, :cond_0

    .line 175
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->child:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->child:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 183
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->child:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 185
    :cond_1
    const/4 v2, 0x1

    .line 187
    .end local v0    # "falpha":F
    :cond_2
    return v2

    .line 176
    .restart local v0    # "falpha":F
    :catch_0
    move-exception v1

    .line 178
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->child:Landroid/view/View;

    goto :goto_0
.end method

.method public setBgColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 147
    iput p1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->bgColor:I

    .line 148
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 0
    .param p1, "borderWidth"    # F

    .prologue
    .line 157
    iput p1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderWidth:F

    .line 158
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 142
    iput p1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->color:I

    .line 143
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 152
    iput p1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->radius:F

    .line 153
    return-void
.end method
