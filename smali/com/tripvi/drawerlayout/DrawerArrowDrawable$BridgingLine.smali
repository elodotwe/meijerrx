.class Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;
.super Ljava/lang/Object;
.source "DrawerArrowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tripvi/drawerlayout/DrawerArrowDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BridgingLine"
.end annotation


# instance fields
.field private final pathA:Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;

.field private final pathB:Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;

.field final synthetic this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;


# direct methods
.method private constructor <init>(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;)V
    .locals 0
    .param p2, "pathA"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    .param p3, "pathB"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->pathA:Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;

    .line 88
    iput-object p3, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->pathB:Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;
    .param p2, "x1"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    .param p3, "x2"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    .param p4, "x3"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable$1;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;-><init>(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->pathA:Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;

    iget-object v1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$000(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v1

    iget-object v2, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$100(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;->access$200(Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;F[F)V

    .line 97
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->pathB:Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;

    iget-object v1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$000(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v1

    iget-object v2, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$300(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;->access$200(Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;F[F)V

    .line 98
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$400(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->insetPointsForRoundCaps()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$100(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v0

    aget v1, v0, v3

    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$100(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v0

    aget v2, v0, v4

    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$300(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v0

    aget v3, v0, v3

    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$300(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v0

    aget v4, v0, v4

    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$500(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 100
    return-void
.end method

.method private insetPointsForRoundCaps()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    iget-object v1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$300(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v1

    aget v1, v1, v4

    iget-object v2, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$100(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v2

    aget v2, v2, v4

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$602(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;F)F

    .line 108
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    iget-object v1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$300(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v1

    aget v1, v1, v5

    iget-object v2, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$100(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v2

    aget v2, v2, v5

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$702(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;F)F

    .line 110
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    iget-object v1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$600(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v1

    iget-object v2, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$600(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$700(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v2

    iget-object v3, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v3}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$700(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-static {v0, v1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$802(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;F)F

    .line 111
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    iget-object v1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$800(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v1

    iget-object v2, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$1000(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$800(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$902(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;F)F

    .line 112
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    iget-object v1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$1000(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v1

    iget-object v2, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$800(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$1102(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;F)F

    .line 114
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$100(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$300(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v1

    aget v1, v1, v4

    iget-object v2, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$600(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v2

    iget-object v3, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v3}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$900(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 115
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$100(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$300(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v1

    aget v1, v1, v5

    iget-object v2, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$700(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v2

    iget-object v3, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v3}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$900(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v5

    .line 116
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$300(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$300(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v1

    aget v1, v1, v4

    iget-object v2, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$600(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v2

    iget-object v3, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v3}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$1100(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 117
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$300(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$300(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F

    move-result-object v1

    aget v1, v1, v5

    iget-object v2, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v2}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$700(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v2

    iget-object v3, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->this$0:Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    invoke-static {v3}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->access$1100(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v5

    .line 118
    return-void
.end method
