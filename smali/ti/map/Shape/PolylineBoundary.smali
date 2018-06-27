.class public Lti/map/Shape/PolylineBoundary;
.super Ljava/lang/Object;
.source "PolylineBoundary.java"


# static fields
.field public static defaultDistance:D


# instance fields
.field private distance:D

.field private point:Landroid/graphics/PointF;

.field private points:[Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    sput-wide v0, Lti/map/Shape/PolylineBoundary;->defaultDistance:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected cast(Lcom/google/android/gms/maps/model/LatLng;)Lti/map/Shape/PolylineBoundary;
    .locals 4
    .param p1, "ll"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 34
    new-instance v0, Landroid/graphics/PointF;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    double-to-float v1, v2

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lti/map/Shape/PolylineBoundary;->point:Landroid/graphics/PointF;

    .line 35
    return-object p0
.end method

.method protected cast(Lti/map/PolylineProxy;)Lti/map/Shape/PolylineBoundary;
    .locals 8
    .param p1, "p"    # Lti/map/PolylineProxy;

    .prologue
    .line 40
    invoke-virtual {p1}, Lti/map/PolylineProxy;->getPolyline()Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 41
    .local v2, "npoints":I
    new-array v5, v2, [Landroid/graphics/PointF;

    iput-object v5, p0, Lti/map/Shape/PolylineBoundary;->points:[Landroid/graphics/PointF;

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 45
    invoke-virtual {p1}, Lti/map/PolylineProxy;->getPolyline()Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 47
    .local v1, "ll":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    double-to-float v3, v6

    .line 48
    .local v3, "x":F
    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    double-to-float v4, v6

    .line 49
    .local v4, "y":F
    iget-object v5, p0, Lti/map/Shape/PolylineBoundary;->points:[Landroid/graphics/PointF;

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v6, v5, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "ll":Lcom/google/android/gms/maps/model/LatLng;
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    return-object p0
.end method

.method public contains(Ljava/util/ArrayList;Lcom/google/android/gms/maps/model/LatLng;D)Ljava/util/ArrayList;
    .locals 3
    .param p2, "ll"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p3, "distance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lti/map/PolylineProxy;",
            ">;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "D)",
            "Ljava/util/ArrayList",
            "<",
            "Lti/map/PolylineProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/map/PolylineProxy;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/map/PolylineProxy;>;"
    invoke-virtual {p0, p2}, Lti/map/Shape/PolylineBoundary;->cast(Lcom/google/android/gms/maps/model/LatLng;)Lti/map/Shape/PolylineBoundary;

    .line 24
    iput-wide p3, p0, Lti/map/Shape/PolylineBoundary;->distance:D

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/map/PolylineProxy;

    invoke-virtual {p0, v2}, Lti/map/Shape/PolylineBoundary;->cast(Lti/map/PolylineProxy;)Lti/map/Shape/PolylineBoundary;

    move-result-object v2

    invoke-virtual {v2}, Lti/map/Shape/PolylineBoundary;->contains()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_1
    return-object v1
.end method

.method public contains()Z
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lti/map/Shape/PolylineBoundary;->points:[Landroid/graphics/PointF;

    iget-object v1, p0, Lti/map/Shape/PolylineBoundary;->point:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1}, Lti/map/Shape/PolylineBoundary;->contains([Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method public contains([Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 6
    .param p1, "points"    # [Landroid/graphics/PointF;
    .param p2, "test"    # Landroid/graphics/PointF;

    .prologue
    const/4 v3, 0x0

    .line 60
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 61
    add-int/lit8 v4, v2, 0x1

    array-length v5, p1

    if-ne v4, v5, :cond_1

    .line 70
    :cond_0
    :goto_1
    return v3

    .line 64
    :cond_1
    aget-object v4, p1, v2

    add-int/lit8 v5, v2, 0x1

    aget-object v5, p1, v5

    invoke-virtual {p0, p2, v4, v5}, Lti/map/Shape/PolylineBoundary;->getDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v0

    .line 66
    .local v0, "distance":D
    iget-wide v4, p0, Lti/map/Shape/PolylineBoundary;->distance:D

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_2

    .line 67
    const/4 v3, 0x1

    goto :goto_1

    .line 60
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method getDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 12
    .param p1, "test"    # Landroid/graphics/PointF;
    .param p2, "point1"    # Landroid/graphics/PointF;
    .param p3, "point2"    # Landroid/graphics/PointF;

    .prologue
    .line 76
    iget v6, p3, Landroid/graphics/PointF;->x:F

    iget v7, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    float-to-double v0, v6

    .line 77
    .local v0, "diffX":D
    iget v6, p3, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lti/map/Shape/PolylineBoundary;->point:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    float-to-double v2, v6

    .line 78
    .local v2, "diffY":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-nez v6, :cond_0

    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-nez v6, :cond_0

    .line 80
    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    float-to-double v0, v6

    .line 81
    iget v6, p1, Landroid/graphics/PointF;->y:F

    iget v7, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    float-to-double v2, v6

    .line 82
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 107
    :goto_0
    return-wide v6

    .line 85
    :cond_0
    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v6, v0

    iget v8, p1, Landroid/graphics/PointF;->y:F

    iget v9, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    mul-double v8, v0, v0

    mul-double v10, v2, v2

    add-double/2addr v8, v10

    div-double v4, v6, v8

    .line 87
    .local v4, "t":D
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_1

    .line 90
    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    float-to-double v0, v6

    .line 91
    iget v6, p1, Landroid/graphics/PointF;->y:F

    iget v7, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    float-to-double v2, v6

    .line 107
    :goto_1
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    goto :goto_0

    .line 93
    :cond_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_2

    .line 96
    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    float-to-double v0, v6

    .line 97
    iget v6, p1, Landroid/graphics/PointF;->y:F

    iget v7, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    float-to-double v2, v6

    goto :goto_1

    .line 102
    :cond_2
    iget v6, p1, Landroid/graphics/PointF;->x:F

    float-to-double v6, v6

    iget v8, p2, Landroid/graphics/PointF;->x:F

    float-to-double v8, v8

    mul-double v10, v4, v0

    add-double/2addr v8, v10

    sub-double v0, v6, v8

    .line 103
    iget v6, p1, Landroid/graphics/PointF;->y:F

    float-to-double v6, v6

    iget v8, p2, Landroid/graphics/PointF;->y:F

    float-to-double v8, v8

    mul-double v10, v4, v2

    add-double/2addr v8, v10

    sub-double v2, v6, v8

    goto :goto_1
.end method
