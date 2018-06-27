.class public Lti/map/Shape/Boundary;
.super Ljava/lang/Object;
.source "Boundary.java"


# static fields
.field static final precision:I = 0x989680

.field static final radius:D = 5.0E-4


# instance fields
.field private point:Landroid/graphics/Point;

.field private points:[Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected cast(Lcom/google/android/gms/maps/model/LatLng;)Lti/map/Shape/Boundary;
    .locals 6
    .param p1, "ll"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const-wide v4, 0x416312d000000000L    # 1.0E7

    .line 36
    new-instance v0, Landroid/graphics/Point;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lti/map/Shape/Boundary;->point:Landroid/graphics/Point;

    .line 38
    return-object p0
.end method

.method protected cast(Lti/map/PolygonProxy;)Lti/map/Shape/Boundary;
    .locals 10
    .param p1, "p"    # Lti/map/PolygonProxy;

    .prologue
    const-wide v8, 0x416312d000000000L    # 1.0E7

    .line 43
    invoke-virtual {p1}, Lti/map/PolygonProxy;->getPolygon()Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/maps/model/Polygon;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 44
    .local v2, "npoints":I
    new-array v5, v2, [Landroid/graphics/Point;

    iput-object v5, p0, Lti/map/Shape/Boundary;->points:[Landroid/graphics/Point;

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 48
    invoke-virtual {p1}, Lti/map/PolygonProxy;->getPolygon()Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/maps/model/Polygon;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 50
    .local v1, "ll":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    mul-double/2addr v6, v8

    double-to-int v3, v6

    .line 51
    .local v3, "x":I
    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    mul-double/2addr v6, v8

    double-to-int v4, v6

    .line 53
    .local v4, "y":I
    iget-object v5, p0, Lti/map/Shape/Boundary;->points:[Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v6, v5, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "ll":Lcom/google/android/gms/maps/model/LatLng;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_0
    return-object p0
.end method

.method public contains(Ljava/util/ArrayList;Lcom/google/android/gms/maps/model/LatLng;)Ljava/util/ArrayList;
    .locals 3
    .param p2, "ll"    # Lcom/google/android/gms/maps/model/LatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lti/map/PolygonProxy;",
            ">;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lti/map/PolygonProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/map/PolygonProxy;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/map/PolygonProxy;>;"
    invoke-virtual {p0, p2}, Lti/map/Shape/Boundary;->cast(Lcom/google/android/gms/maps/model/LatLng;)Lti/map/Shape/Boundary;

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/map/PolygonProxy;

    invoke-virtual {p0, v2}, Lti/map/Shape/Boundary;->contains(Lti/map/PolygonProxy;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_1
    return-object v1
.end method

.method public contains()Z
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lti/map/Shape/Boundary;->points:[Landroid/graphics/Point;

    iget-object v1, p0, Lti/map/Shape/Boundary;->point:Landroid/graphics/Point;

    invoke-virtual {p0, v0, v1}, Lti/map/Shape/Boundary;->contains([Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public contains(Lti/map/PolygonProxy;)Z
    .locals 1
    .param p1, "p"    # Lti/map/PolygonProxy;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lti/map/Shape/Boundary;->cast(Lti/map/PolygonProxy;)Lti/map/Shape/Boundary;

    move-result-object v0

    invoke-virtual {v0}, Lti/map/Shape/Boundary;->contains()Z

    move-result v0

    return v0
.end method

.method public contains(Lti/map/PolygonProxy;Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 1
    .param p1, "p"    # Lti/map/PolygonProxy;
    .param p2, "ll"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lti/map/Shape/Boundary;->cast(Lti/map/PolygonProxy;)Lti/map/Shape/Boundary;

    move-result-object v0

    invoke-virtual {v0, p2}, Lti/map/Shape/Boundary;->cast(Lcom/google/android/gms/maps/model/LatLng;)Lti/map/Shape/Boundary;

    move-result-object v0

    invoke-virtual {v0}, Lti/map/Shape/Boundary;->contains()Z

    move-result v0

    return v0
.end method

.method public contains([Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 10
    .param p1, "points"    # [Landroid/graphics/Point;
    .param p2, "test"    # Landroid/graphics/Point;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 74
    const/4 v3, 0x0

    .line 75
    .local v3, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v4, p1

    add-int/lit8 v2, v4, -0x1

    .local v2, "j":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_4

    .line 76
    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    if-le v4, v7, :cond_1

    move v4, v5

    :goto_1
    aget-object v7, p1, v2

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget v8, p2, Landroid/graphics/Point;->y:I

    if-le v7, v8, :cond_2

    move v7, v5

    :goto_2
    if-eq v4, v7, :cond_0

    iget v4, p2, Landroid/graphics/Point;->x:I

    aget-object v7, p1, v2

    iget v7, v7, Landroid/graphics/Point;->x:I

    aget-object v8, p1, v0

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    iget v8, p2, Landroid/graphics/Point;->y:I

    aget-object v9, p1, v0

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    mul-int/2addr v7, v8

    aget-object v8, p1, v2

    iget v8, v8, Landroid/graphics/Point;->y:I

    aget-object v9, p1, v0

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    div-int/2addr v7, v8

    aget-object v8, p1, v0

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v8

    if-ge v4, v7, :cond_0

    .line 80
    if-nez v3, :cond_3

    move v3, v5

    .line 75
    :cond_0
    :goto_3
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    move v2, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    :cond_1
    move v4, v6

    .line 76
    goto :goto_1

    :cond_2
    move v7, v6

    goto :goto_2

    :cond_3
    move v3, v6

    .line 80
    goto :goto_3

    .line 83
    :cond_4
    return v3
.end method

.method public contains([Landroid/graphics/Point;Landroid/graphics/Point;D)Z
    .locals 13
    .param p1, "points"    # [Landroid/graphics/Point;
    .param p2, "test"    # Landroid/graphics/Point;
    .param p3, "radius"    # D

    .prologue
    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 97
    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-double v2, v1

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-double v4, v1

    aget-object v1, p1, v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-double v8, v1

    aget-object v1, p1, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v10, v1

    move-object v1, p0

    move-wide/from16 v6, p3

    invoke-virtual/range {v1 .. v11}, Lti/map/Shape/Boundary;->isPointInCircle(DDDDD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const/4 v1, 0x1

    .line 101
    :goto_1
    return v1

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public containsCircle([Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 12
    .param p1, "points"    # [Landroid/graphics/Point;
    .param p2, "test"    # Landroid/graphics/Point;

    .prologue
    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 88
    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-double v2, v1

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-double v4, v1

    const-wide v6, 0x3f40624dd2f1a9fcL    # 5.0E-4

    aget-object v1, p1, v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-double v8, v1

    aget-object v1, p1, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v10, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lti/map/Shape/Boundary;->isPointInCircle(DDDDD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x1

    .line 92
    :goto_1
    return v1

    .line 87
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method isInRectangle(DDDDD)Z
    .locals 3
    .param p1, "centerX"    # D
    .param p3, "centerY"    # D
    .param p5, "radius"    # D
    .param p7, "x"    # D
    .param p9, "y"    # D

    .prologue
    .line 119
    sub-double v0, p1, p5

    cmpl-double v0, p7, v0

    if-ltz v0, :cond_0

    add-double v0, p1, p5

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_0

    sub-double v0, p3, p5

    cmpl-double v0, p9, v0

    if-ltz v0, :cond_0

    add-double v0, p3, p5

    cmpg-double v0, p9, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPointInCircle(DDDDD)Z
    .locals 9
    .param p1, "centerX"    # D
    .param p3, "centerY"    # D
    .param p5, "radius"    # D
    .param p7, "x"    # D
    .param p9, "y"    # D

    .prologue
    .line 106
    invoke-virtual/range {p0 .. p10}, Lti/map/Shape/Boundary;->isInRectangle(DDDDD)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 107
    sub-double v2, p1, p7

    .line 108
    .local v2, "dx":D
    sub-double v4, p3, p9

    .line 109
    .local v4, "dy":D
    mul-double/2addr v2, v2

    .line 110
    mul-double/2addr v4, v4

    .line 111
    add-double v0, v2, v4

    .line 112
    .local v0, "distanceSquared":D
    mul-double v6, p5, p5

    .line 113
    .local v6, "radiusSquared":D
    cmpg-double v8, v0, v6

    if-gtz v8, :cond_0

    const/4 v8, 0x1

    .line 115
    .end local v0    # "distanceSquared":D
    .end local v2    # "dx":D
    .end local v4    # "dy":D
    .end local v6    # "radiusSquared":D
    :goto_0
    return v8

    .line 113
    .restart local v0    # "distanceSquared":D
    .restart local v2    # "dx":D
    .restart local v4    # "dy":D
    .restart local v6    # "radiusSquared":D
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 115
    .end local v0    # "distanceSquared":D
    .end local v2    # "dx":D
    .end local v4    # "dy":D
    .end local v6    # "radiusSquared":D
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method
