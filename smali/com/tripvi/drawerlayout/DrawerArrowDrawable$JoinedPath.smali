.class Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
.super Ljava/lang/Object;
.source "DrawerArrowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tripvi/drawerlayout/DrawerArrowDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JoinedPath"
.end annotation


# instance fields
.field private final lengthFirst:F

.field private final lengthSecond:F

.field private final measureFirst:Landroid/graphics/PathMeasure;

.field private final measureSecond:Landroid/graphics/PathMeasure;


# direct methods
.method private constructor <init>(Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 2
    .param p1, "pathFirst"    # Landroid/graphics/Path;
    .param p2, "pathSecond"    # Landroid/graphics/Path;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;->measureFirst:Landroid/graphics/PathMeasure;

    .line 56
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;->measureSecond:Landroid/graphics/PathMeasure;

    .line 57
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;->measureFirst:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iput v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;->lengthFirst:F

    .line 58
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;->measureSecond:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iput v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;->lengthSecond:F

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Path;Landroid/graphics/Path;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/Path;
    .param p2, "x1"    # Landroid/graphics/Path;
    .param p3, "x2"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable$1;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;F[F)V
    .locals 0
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    .param p1, "x1"    # F
    .param p2, "x2"    # [F

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;->getPointOnLine(F[F)V

    return-void
.end method

.method private getPointOnLine(F[F)V
    .locals 4
    .param p1, "parameter"    # F
    .param p2, "coords"    # [F

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 69
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    .line 70
    mul-float/2addr p1, v2

    .line 71
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;->measureFirst:Landroid/graphics/PathMeasure;

    iget v1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;->lengthFirst:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1, p2, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    sub-float/2addr p1, v1

    .line 74
    mul-float/2addr p1, v2

    .line 75
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;->measureSecond:Landroid/graphics/PathMeasure;

    iget v1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;->lengthSecond:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1, p2, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    goto :goto_0
.end method
