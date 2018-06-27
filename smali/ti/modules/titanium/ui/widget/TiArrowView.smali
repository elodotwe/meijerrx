.class public Lti/modules/titanium/ui/widget/TiArrowView;
.super Landroid/view/View;
.source "TiArrowView.java"


# instance fields
.field private leftArrow:Z

.field private p:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/TiArrowView;->leftArrow:Z

    .line 27
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiArrowView;->setFocusable(Z)V

    .line 28
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiArrowView;->setFocusableInTouchMode(Z)V

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lti/modules/titanium/ui/widget/TiArrowView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 33
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->p:Landroid/graphics/Paint;

    .line 34
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiArrowView;->configureDrawable()V

    .line 35
    return-void
.end method

.method private configureDrawable()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    .line 45
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->leftArrow:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 47
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 48
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 57
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiArrowView;->setWillNotDraw(Z)V

    .line 58
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v5, 0xd8

    const/4 v4, 0x0

    .line 68
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiArrowView;->getWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 72
    .local v1, "w":I
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiArrowView;->getHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 73
    .local v0, "h":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    int-to-float v2, v1

    int-to-float v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 75
    iget-boolean v2, p0, Lti/modules/titanium/ui/widget/TiArrowView;->leftArrow:Z

    if-nez v2, :cond_0

    .line 76
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiArrowView;->p:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiArrowView;->p:Landroid/graphics/Paint;

    const/16 v3, 0xaf

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 81
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiArrowView;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiArrowView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 83
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiArrowView;->p:Landroid/graphics/Paint;

    const/16 v3, 0x4b

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 84
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiArrowView;->p:Landroid/graphics/Paint;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiArrowView;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 86
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiArrowView;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 87
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiArrowView;->p:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiArrowView;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiArrowView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 92
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 63
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiArrowView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiArrowView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiArrowView;->setMeasuredDimension(II)V

    .line 64
    return-void
.end method

.method public setLeft(Z)V
    .locals 0
    .param p1, "leftArrow"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiArrowView;->leftArrow:Z

    .line 39
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiArrowView;->configureDrawable()V

    .line 40
    return-void
.end method
