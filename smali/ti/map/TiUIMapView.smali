.class public Lti/map/TiUIMapView;
.super Lorg/appcelerator/titanium/view/TiUIFragment;
.source "TiUIMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUIMapView"


# instance fields
.field protected animate:Z

.field private currentCircles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/map/CircleProxy;",
            ">;"
        }
    .end annotation
.end field

.field private currentPolygons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/map/PolygonProxy;",
            ">;"
        }
    .end annotation
.end field

.field private currentPolylines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/map/PolylineProxy;",
            ">;"
        }
    .end annotation
.end field

.field private map:Lcom/google/android/gms/maps/GoogleMap;

.field protected preLayout:Z

.field protected preLayoutUpdateBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

.field protected selectedAnnotation:Lti/map/AnnotationProxy;

.field protected timarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/map/TiMarker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiUIFragment;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/map/TiUIMapView;->animate:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/map/TiUIMapView;->preLayout:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/map/TiUIMapView;->timarkers:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/map/TiUIMapView;->currentCircles:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/map/TiUIMapView;->currentPolygons:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/map/TiUIMapView;->currentPolylines:Ljava/util/ArrayList;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lti/map/TiUIMapView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/map/TiUIMapView;

    .prologue
    .line 51
    iget-object v0, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$100(Lti/map/TiUIMapView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/map/TiUIMapView;

    .prologue
    .line 51
    iget-object v0, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method private getProxyByMarker(Lcom/google/android/gms/maps/model/Marker;)Lti/map/AnnotationProxy;
    .locals 3
    .param p1, "m"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 504
    if-eqz p1, :cond_1

    .line 505
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lti/map/TiUIMapView;->timarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 506
    iget-object v2, p0, Lti/map/TiUIMapView;->timarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/map/TiMarker;

    .line 507
    .local v1, "timarker":Lti/map/TiMarker;
    invoke-virtual {v1}, Lti/map/TiMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    invoke-virtual {v1}, Lti/map/TiMarker;->getProxy()Lti/map/AnnotationProxy;

    move-result-object v2

    .line 512
    .end local v0    # "i":I
    .end local v1    # "timarker":Lti/map/TiMarker;
    :goto_1
    return-object v2

    .line 505
    .restart local v0    # "i":I
    .restart local v1    # "timarker":Lti/map/TiMarker;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    .end local v0    # "i":I
    .end local v1    # "timarker":Lti/map/TiMarker;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setBackgroundTransparent(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    instance-of v3, p1, Landroid/view/SurfaceView;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 85
    check-cast v1, Landroid/view/SurfaceView;

    .line 86
    .local v1, "sv":Landroid/view/SurfaceView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 89
    .end local v1    # "sv":Landroid/view/SurfaceView;
    :cond_0
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 90
    check-cast v2, Landroid/view/ViewGroup;

    .line 91
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 92
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lti/map/TiUIMapView;->setBackgroundTransparent(Landroid/view/View;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "i":I
    .end local v2    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method


# virtual methods
.method protected addAnnotation(Lti/map/AnnotationProxy;)V
    .locals 4
    .param p1, "annotation"    # Lti/map/AnnotationProxy;

    .prologue
    .line 399
    invoke-virtual {p1}, Lti/map/AnnotationProxy;->getTiMarker()Lti/map/TiMarker;

    move-result-object v1

    .line 400
    .local v1, "tiMarker":Lti/map/TiMarker;
    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {p0, v1}, Lti/map/TiUIMapView;->removeAnnotation(Ljava/lang/Object;)V

    .line 403
    :cond_0
    invoke-virtual {p1}, Lti/map/AnnotationProxy;->processOptions()V

    .line 405
    iget-object v2, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lti/map/AnnotationProxy;->getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 406
    .local v0, "marker":Lcom/google/android/gms/maps/model/Marker;
    new-instance v1, Lti/map/TiMarker;

    .end local v1    # "tiMarker":Lti/map/TiMarker;
    invoke-direct {v1, v0, p1}, Lti/map/TiMarker;-><init>(Lcom/google/android/gms/maps/model/Marker;Lti/map/AnnotationProxy;)V

    .line 407
    .restart local v1    # "tiMarker":Lti/map/TiMarker;
    invoke-virtual {p1, v1}, Lti/map/AnnotationProxy;->setTiMarker(Lti/map/TiMarker;)V

    .line 408
    iget-object v2, p0, Lti/map/TiUIMapView;->timarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    return-void
.end method

.method protected addAnnotations([Ljava/lang/Object;)V
    .locals 4
    .param p1, "annotations"    # [Ljava/lang/Object;

    .prologue
    .line 412
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 413
    aget-object v2, p1, v1

    .line 414
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lti/map/AnnotationProxy;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 415
    check-cast v0, Lti/map/AnnotationProxy;

    .line 416
    .local v0, "annotation":Lti/map/AnnotationProxy;
    invoke-virtual {p0, v0}, Lti/map/TiUIMapView;->addAnnotation(Lti/map/AnnotationProxy;)V

    .line 412
    .end local v0    # "annotation":Lti/map/AnnotationProxy;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public addCircle(Lti/map/CircleProxy;)V
    .locals 2
    .param p1, "c"    # Lti/map/CircleProxy;

    .prologue
    .line 640
    iget-object v0, p0, Lti/map/TiUIMapView;->currentCircles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    :goto_0
    return-void

    .line 643
    :cond_0
    invoke-virtual {p1}, Lti/map/CircleProxy;->processOptions()V

    .line 644
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lti/map/CircleProxy;->getOptions()Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lti/map/CircleProxy;->setCircle(Lcom/google/android/gms/maps/model/Circle;)V

    .line 645
    iget-object v0, p0, Lti/map/TiUIMapView;->currentCircles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addCircles([Ljava/lang/Object;)V
    .locals 4
    .param p1, "circles"    # [Ljava/lang/Object;

    .prologue
    .line 629
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 630
    aget-object v2, p1, v1

    .line 631
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lti/map/CircleProxy;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 632
    check-cast v0, Lti/map/CircleProxy;

    .line 633
    .local v0, "circle":Lti/map/CircleProxy;
    invoke-virtual {p0, v0}, Lti/map/TiUIMapView;->addCircle(Lti/map/CircleProxy;)V

    .line 629
    .end local v0    # "circle":Lti/map/CircleProxy;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 636
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public addPolygon(Lti/map/PolygonProxy;)V
    .locals 2
    .param p1, "p"    # Lti/map/PolygonProxy;

    .prologue
    .line 539
    invoke-virtual {p1}, Lti/map/PolygonProxy;->getPolygon()Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-virtual {p1}, Lti/map/PolygonProxy;->processOptions()V

    .line 544
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lti/map/PolygonProxy;->getOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v0

    invoke-virtual {p1, v0}, Lti/map/PolygonProxy;->setPolygon(Lcom/google/android/gms/maps/model/Polygon;)V

    .line 546
    iget-object v0, p0, Lti/map/TiUIMapView;->currentPolygons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addPolygons([Ljava/lang/Object;)V
    .locals 4
    .param p1, "polygons"    # [Ljava/lang/Object;

    .prologue
    .line 550
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 551
    aget-object v1, p1, v0

    .line 552
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Lti/map/PolygonProxy;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 553
    check-cast v2, Lti/map/PolygonProxy;

    .line 554
    .local v2, "polygon":Lti/map/PolygonProxy;
    invoke-virtual {p0, v2}, Lti/map/TiUIMapView;->addPolygon(Lti/map/PolygonProxy;)V

    .line 550
    .end local v2    # "polygon":Lti/map/PolygonProxy;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 557
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public addPolyline(Lti/map/PolylineProxy;)V
    .locals 2
    .param p1, "p"    # Lti/map/PolylineProxy;

    .prologue
    .line 585
    invoke-virtual {p1}, Lti/map/PolylineProxy;->getPolyline()Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 592
    :goto_0
    return-void

    .line 588
    :cond_0
    invoke-virtual {p1}, Lti/map/PolylineProxy;->processOptions()V

    .line 589
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lti/map/PolylineProxy;->getOptions()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    invoke-virtual {p1, v0}, Lti/map/PolylineProxy;->setPolyline(Lcom/google/android/gms/maps/model/Polyline;)V

    .line 591
    iget-object v0, p0, Lti/map/TiUIMapView;->currentPolylines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addPolylines([Ljava/lang/Object;)V
    .locals 4
    .param p1, "polylines"    # [Ljava/lang/Object;

    .prologue
    .line 595
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 596
    aget-object v1, p1, v0

    .line 597
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Lti/map/PolylineProxy;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 598
    check-cast v2, Lti/map/PolylineProxy;

    .line 599
    .local v2, "polyline":Lti/map/PolylineProxy;
    invoke-virtual {p0, v2}, Lti/map/TiUIMapView;->addPolyline(Lti/map/PolylineProxy;)V

    .line 595
    .end local v2    # "polyline":Lti/map/PolylineProxy;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public addRoute(Lti/map/RouteProxy;)V
    .locals 2
    .param p1, "r"    # Lti/map/RouteProxy;

    .prologue
    .line 517
    invoke-virtual {p1}, Lti/map/RouteProxy;->getRoute()Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-virtual {p1}, Lti/map/RouteProxy;->processOptions()V

    .line 522
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lti/map/RouteProxy;->getOptions()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    invoke-virtual {p1, v0}, Lti/map/RouteProxy;->setRoute(Lcom/google/android/gms/maps/model/Polyline;)V

    goto :goto_0
.end method

.method public changeZoomLevel(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    .line 669
    int-to-float v1, p1

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomBy(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 670
    .local v0, "camUpdate":Lcom/google/android/gms/maps/CameraUpdate;
    iget-boolean v1, p0, Lti/map/TiUIMapView;->animate:Z

    invoke-virtual {p0, v0, v1}, Lti/map/TiUIMapView;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;Z)V

    .line 671
    return-void
.end method

.method protected createFragment()Landroid/support/v4/app/Fragment;
    .locals 5

    .prologue
    .line 99
    iget-object v3, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-nez v3, :cond_1

    .line 100
    invoke-static {}, Lcom/google/android/gms/maps/SupportMapFragment;->newInstance()Lcom/google/android/gms/maps/SupportMapFragment;

    move-result-object v1

    .line 101
    .local v1, "map":Landroid/support/v4/app/Fragment;
    instance-of v3, v1, Lcom/google/android/gms/maps/SupportMapFragment;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 102
    check-cast v3, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v3, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 114
    :cond_0
    :goto_0
    return-object v1

    .line 106
    .end local v1    # "map":Landroid/support/v4/app/Fragment;
    :cond_1
    iget-object v3, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "zOrderOnTop"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v2

    .line 108
    .local v2, "zOrderOnTop":Z
    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    .line 109
    .local v0, "gOptions":Lcom/google/android/gms/maps/GoogleMapOptions;
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->zOrderOnTop(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 110
    invoke-static {v0}, Lcom/google/android/gms/maps/SupportMapFragment;->newInstance(Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/SupportMapFragment;

    move-result-object v1

    .line 111
    .restart local v1    # "map":Landroid/support/v4/app/Fragment;
    instance-of v3, v1, Lcom/google/android/gms/maps/SupportMapFragment;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 112
    check-cast v3, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v3, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    goto :goto_0
.end method

.method protected deselectAnnotation(Ljava/lang/Object;)V
    .locals 4
    .param p1, "annotation"    # Ljava/lang/Object;

    .prologue
    .line 488
    instance-of v3, p1, Lti/map/AnnotationProxy;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 489
    check-cast v1, Lti/map/AnnotationProxy;

    .line 490
    .local v1, "proxy":Lti/map/AnnotationProxy;
    invoke-virtual {v1}, Lti/map/AnnotationProxy;->getTiMarker()Lti/map/TiMarker;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 491
    check-cast p1, Lti/map/AnnotationProxy;

    .end local p1    # "annotation":Ljava/lang/Object;
    invoke-virtual {p1}, Lti/map/AnnotationProxy;->hideInfo()V

    .line 500
    .end local v1    # "proxy":Lti/map/AnnotationProxy;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    .line 501
    return-void

    .line 493
    .restart local p1    # "annotation":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 494
    check-cast v2, Ljava/lang/String;

    .line 495
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lti/map/TiUIMapView;->findMarkerByTitle(Ljava/lang/String;)Lti/map/TiMarker;

    move-result-object v0

    .line 496
    .local v0, "marker":Lti/map/TiMarker;
    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0}, Lti/map/TiMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    goto :goto_0
.end method

.method public findMarkerByTitle(Ljava/lang/String;)Lti/map/TiMarker;
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 441
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lti/map/TiUIMapView;->timarkers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 442
    iget-object v3, p0, Lti/map/TiUIMapView;->timarkers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/map/TiMarker;

    .line 443
    .local v2, "timarker":Lti/map/TiMarker;
    invoke-virtual {v2}, Lti/map/TiMarker;->getProxy()Lti/map/AnnotationProxy;

    move-result-object v0

    .line 444
    .local v0, "annoProxy":Lti/map/AnnotationProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lti/map/AnnotationProxy;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    .end local v0    # "annoProxy":Lti/map/AnnotationProxy;
    .end local v2    # "timarker":Lti/map/TiMarker;
    :goto_1
    return-object v2

    .line 441
    .restart local v0    # "annoProxy":Lti/map/AnnotationProxy;
    .restart local v2    # "timarker":Lti/map/TiMarker;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    .end local v0    # "annoProxy":Lti/map/AnnotationProxy;
    .end local v2    # "timarker":Lti/map/TiMarker;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public fireClickEvent(Lcom/google/android/gms/maps/model/Marker;Lti/map/AnnotationProxy;Ljava/lang/String;)V
    .locals 8
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;
    .param p2, "annoProxy"    # Lti/map/AnnotationProxy;
    .param p3, "clickSource"    # Ljava/lang/String;

    .prologue
    .line 695
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 696
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    const/4 v3, 0x0

    .line 697
    .local v3, "title":Ljava/lang/String;
    const/4 v2, 0x0

    .line 698
    .local v2, "subtitle":Ljava/lang/String;
    invoke-virtual {p2}, Lti/map/AnnotationProxy;->getMapInfoWindow()Lti/map/TiMapInfoWindow;

    move-result-object v1

    .line 699
    .local v1, "infoWindow":Lti/map/TiMapInfoWindow;
    if-eqz v1, :cond_0

    .line 700
    invoke-virtual {v1}, Lti/map/TiMapInfoWindow;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 701
    invoke-virtual {v1}, Lti/map/TiMapInfoWindow;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    .line 703
    :cond_0
    const-string v4, "title"

    invoke-virtual {v0, v4, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    const-string v4, "subtitle"

    invoke-virtual {v0, v4, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const-string v4, "latitude"

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    iget-wide v6, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    const-string v4, "longitude"

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    iget-wide v6, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    const-string v4, "annotation"

    invoke-virtual {v0, v4, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const-string v4, "map"

    iget-object v5, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string v4, "type"

    const-string v5, "click"

    invoke-virtual {v0, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    const-string v4, "source"

    iget-object v5, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string v4, "clicksource"

    invoke-virtual {v0, v4, p3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-object v4, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "click"

    invoke-virtual {v4, v5, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 713
    return-void
.end method

.method public fireLongClickEvent(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 716
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 717
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "latitude"

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string v1, "longitude"

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string v1, "map"

    iget-object v2, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string v1, "type"

    const-string v2, "longclick"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const-string v1, "source"

    iget-object v2, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object v1, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "longclick"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 723
    return-void
.end method

.method public firePinChangeDragStateEvent(Lcom/google/android/gms/maps/model/Marker;Lti/map/AnnotationProxy;I)V
    .locals 5
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;
    .param p2, "annoProxy"    # Lti/map/AnnotationProxy;
    .param p3, "dragState"    # I

    .prologue
    .line 727
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 728
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    const/4 v2, 0x0

    .line 729
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p2}, Lti/map/AnnotationProxy;->getMapInfoWindow()Lti/map/TiMapInfoWindow;

    move-result-object v1

    .line 730
    .local v1, "infoWindow":Lti/map/TiMapInfoWindow;
    if-eqz v1, :cond_0

    .line 731
    invoke-virtual {v1}, Lti/map/TiMapInfoWindow;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 733
    :cond_0
    const-string v3, "title"

    invoke-virtual {v0, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string v3, "annotation"

    invoke-virtual {v0, v3, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    const-string v3, "map"

    iget-object v4, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-string v3, "source"

    iget-object v4, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string v3, "newState"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string v3, "type"

    const-string v4, "pinchangedragstate"

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    iget-object v3, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "pinchangedragstate"

    invoke-virtual {v3, v4, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 740
    return-void
.end method

.method public fireShapeClickEvent(Lcom/google/android/gms/maps/model/LatLng;Lti/map/Shape/IShape;Ljava/lang/String;)V
    .locals 4
    .param p1, "clickPosition"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "shapeProxy"    # Lti/map/Shape/IShape;
    .param p3, "clickSource"    # Ljava/lang/String;

    .prologue
    .line 675
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 677
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "latitude"

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const-string v1, "longitude"

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string v1, "map"

    iget-object v2, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v1, "type"

    const-string v2, "click"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string v1, "source"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const-string v1, "clicksource"

    invoke-virtual {v0, v1, p3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string v1, "shape"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string v1, "shapeType"

    invoke-virtual {v0, v1, p3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget-object v1, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "click"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 691
    return-void
.end method

.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 884
    invoke-direct {p0, p1}, Lti/map/TiUIMapView;->getProxyByMarker(Lcom/google/android/gms/maps/model/Marker;)Lti/map/AnnotationProxy;

    move-result-object v0

    .line 885
    .local v0, "annoProxy":Lti/map/AnnotationProxy;
    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0}, Lti/map/AnnotationProxy;->getMapInfoWindow()Lti/map/TiMapInfoWindow;

    move-result-object v1

    .line 888
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 893
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method public getMaxZoomLevel()F
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMaxZoomLevel()F

    move-result v0

    return v0
.end method

.method public getMinZoomLevel()F
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMinZoomLevel()F

    move-result v0

    return v0
.end method

.method protected interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 946
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    if-eqz v4, :cond_0

    .line 948
    iget-object v4, p0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    invoke-virtual {v4}, Lti/map/AnnotationProxy;->getMapInfoWindow()Lti/map/TiMapInfoWindow;

    move-result-object v0

    .line 949
    .local v0, "infoWindow":Lti/map/TiMapInfoWindow;
    iget-object v4, p0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    invoke-virtual {v4}, Lti/map/AnnotationProxy;->getTiMarker()Lti/map/TiMarker;

    move-result-object v3

    .line 950
    .local v3, "timarker":Lti/map/TiMarker;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 951
    invoke-virtual {v3}, Lti/map/TiMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    .line 952
    .local v1, "marker":Lcom/google/android/gms/maps/model/Marker;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 953
    iget-object v4, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v2

    .line 955
    .local v2, "markerPoint":Landroid/graphics/Point;
    iget-object v4, p0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    invoke-virtual {v4}, Lti/map/AnnotationProxy;->getIconImageHeight()I

    move-result v4

    invoke-virtual {v0, p1, v2, v4}, Lti/map/TiMapInfoWindow;->analyzeTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;I)V

    .line 960
    .end local v0    # "infoWindow":Lti/map/TiMapInfoWindow;
    .end local v1    # "marker":Lcom/google/android/gms/maps/model/Marker;
    .end local v2    # "markerPoint":Landroid/graphics/Point;
    .end local v3    # "timarker":Lti/map/TiMarker;
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method protected moveCamera(Lcom/google/android/gms/maps/CameraUpdate;Z)V
    .locals 1
    .param p1, "camUpdate"    # Lcom/google/android/gms/maps/CameraUpdate;
    .param p2, "anim"    # Z

    .prologue
    .line 390
    if-eqz p2, :cond_0

    .line 391
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 8
    .param p1, "position"    # Lcom/google/android/gms/maps/model/CameraPosition;

    .prologue
    const/4 v3, 0x0

    .line 910
    iget-boolean v2, p0, Lti/map/TiUIMapView;->preLayout:Z

    if-eqz v2, :cond_2

    .line 911
    iget-object v2, p0, Lti/map/TiUIMapView;->preLayoutUpdateBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v2, :cond_1

    .line 912
    iget-object v2, p0, Lti/map/TiUIMapView;->preLayoutUpdateBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-static {v2, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    iget-boolean v3, p0, Lti/map/TiUIMapView;->animate:Z

    invoke-virtual {p0, v2, v3}, Lti/map/TiUIMapView;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;Z)V

    .line 914
    const/4 v2, 0x0

    iput-object v2, p0, Lti/map/TiUIMapView;->preLayoutUpdateBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    iput-boolean v3, p0, Lti/map/TiUIMapView;->preLayout:Z

    goto :goto_0

    .line 921
    :cond_2
    iget-object v2, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v2, :cond_0

    .line 922
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 923
    .local v1, "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "latitude"

    iget-object v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    const-string v2, "longitude"

    iget-object v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    const-string v2, "source"

    iget-object v3, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    iget-object v2, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v2

    iget-object v0, v2, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 927
    .local v0, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    const-string v2, "latitudeDelta"

    iget-object v3, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v3, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-string v2, "longitudeDelta"

    iget-object v3, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v3, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    iget-object v2, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "region"

    invoke-virtual {v2, v3, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 937
    iget-object v2, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "regionchanged"

    invoke-virtual {v2, v3, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 3
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 868
    invoke-direct {p0, p1}, Lti/map/TiUIMapView;->getProxyByMarker(Lcom/google/android/gms/maps/model/Marker;)Lti/map/AnnotationProxy;

    move-result-object v0

    .line 869
    .local v0, "annoProxy":Lti/map/AnnotationProxy;
    if-eqz v0, :cond_1

    .line 870
    invoke-virtual {v0}, Lti/map/AnnotationProxy;->getMapInfoWindow()Lti/map/TiMapInfoWindow;

    move-result-object v2

    invoke-virtual {v2}, Lti/map/TiMapInfoWindow;->getClicksource()Ljava/lang/String;

    move-result-object v1

    .line 875
    .local v1, "clicksource":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 876
    const-string v1, "infoWindow"

    .line 878
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lti/map/TiUIMapView;->fireClickEvent(Lcom/google/android/gms/maps/model/Marker;Lti/map/AnnotationProxy;Ljava/lang/String;)V

    .line 880
    .end local v1    # "clicksource":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 38
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 773
    move-object/from16 v0, p0

    iget-object v4, v0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    if-eqz v4, :cond_1

    .line 774
    move-object/from16 v0, p0

    iget-object v4, v0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    invoke-virtual {v4}, Lti/map/AnnotationProxy;->getTiMarker()Lti/map/TiMarker;

    move-result-object v34

    .line 775
    .local v34, "tiMarker":Lti/map/TiMarker;
    if-eqz v34, :cond_0

    .line 776
    invoke-virtual/range {v34 .. v34}, Lti/map/TiMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lti/map/TiUIMapView;->fireClickEvent(Lcom/google/android/gms/maps/model/Marker;Lti/map/AnnotationProxy;Ljava/lang/String;)V

    .line 778
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    .line 782
    .end local v34    # "tiMarker":Lti/map/TiMarker;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lti/map/TiUIMapView;->currentCircles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Lti/map/TiUIMapView;->currentCircles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lti/map/CircleProxy;

    .line 785
    .local v19, "circleProxy":Lti/map/CircleProxy;
    invoke-virtual/range {v19 .. v19}, Lti/map/CircleProxy;->getCircle()Lcom/google/android/gms/maps/model/Circle;

    move-result-object v18

    .line 786
    .local v18, "circle":Lcom/google/android/gms/maps/model/Circle;
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/maps/model/Circle;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v17

    .line 788
    .local v17, "center":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/maps/model/Circle;->getRadius()D

    move-result-wide v28

    .line 789
    .local v28, "radius":D
    const/4 v4, 0x1

    new-array v12, v4, [F

    .line 790
    .local v12, "distance":[F
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static/range {v4 .. v12}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 791
    const/4 v4, 0x0

    aget v4, v12, v4

    float-to-double v4, v4

    cmpg-double v4, v4, v28

    if-gez v4, :cond_3

    const/16 v20, 0x1

    .line 792
    .local v20, "clicked":Z
    :goto_1
    if-eqz v20, :cond_2

    .line 793
    const-string v4, "circle"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, Lti/map/TiUIMapView;->fireShapeClickEvent(Lcom/google/android/gms/maps/model/LatLng;Lti/map/Shape/IShape;Ljava/lang/String;)V

    goto :goto_0

    .line 791
    .end local v20    # "clicked":Z
    :cond_3
    const/16 v20, 0x0

    goto :goto_1

    .line 799
    .end local v12    # "distance":[F
    .end local v17    # "center":Lcom/google/android/gms/maps/model/LatLng;
    .end local v18    # "circle":Lcom/google/android/gms/maps/model/Circle;
    .end local v19    # "circleProxy":Lti/map/CircleProxy;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v28    # "radius":D
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lti/map/TiUIMapView;->currentPolygons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 801
    new-instance v16, Lti/map/Shape/Boundary;

    invoke-direct/range {v16 .. v16}, Lti/map/Shape/Boundary;-><init>()V

    .line 802
    .local v16, "boundary":Lti/map/Shape/Boundary;
    move-object/from16 v0, p0

    iget-object v4, v0, Lti/map/TiUIMapView;->currentPolygons:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lti/map/Shape/Boundary;->contains(Ljava/util/ArrayList;Lcom/google/android/gms/maps/model/LatLng;)Ljava/util/ArrayList;

    move-result-object v21

    .line 803
    .local v21, "clickedPolygon":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/map/PolygonProxy;>;"
    const/16 v16, 0x0

    .line 805
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 806
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lti/map/PolygonProxy;

    .line 807
    .local v26, "polygonProxy":Lti/map/PolygonProxy;
    const-string v4, "polygon"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v4}, Lti/map/TiUIMapView;->fireShapeClickEvent(Lcom/google/android/gms/maps/model/LatLng;Lti/map/Shape/IShape;Ljava/lang/String;)V

    goto :goto_2

    .line 813
    .end local v16    # "boundary":Lti/map/Shape/Boundary;
    .end local v21    # "clickedPolygon":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/map/PolygonProxy;>;"
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v26    # "polygonProxy":Lti/map/PolygonProxy;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lti/map/TiUIMapView;->currentPolylines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 814
    new-instance v16, Lti/map/Shape/PolylineBoundary;

    invoke-direct/range {v16 .. v16}, Lti/map/Shape/PolylineBoundary;-><init>()V

    .line 816
    .local v16, "boundary":Lti/map/Shape/PolylineBoundary;
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 817
    .local v14, "baseVal":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v4

    iget-object v13, v4, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 818
    .local v13, "b":Lcom/google/android/gms/maps/model/LatLngBounds;
    iget-object v4, v13, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v6, v13, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    iget-object v4, v13, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v6, v13, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double v30, v4, v6

    .line 819
    .local v30, "side1":D
    :goto_3
    iget-object v4, v13, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v6, v13, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_7

    iget-object v4, v13, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v6, v13, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double v32, v4, v6

    .line 820
    .local v32, "side2":D
    :goto_4
    mul-double v4, v30, v30

    mul-double v6, v32, v32

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    .line 821
    .local v24, "diagonal":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    iget v4, v4, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    float-to-double v4, v4

    div-double v36, v24, v4

    .line 823
    .local v36, "val":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lti/map/TiUIMapView;->currentPolylines:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-wide/from16 v2, v36

    invoke-virtual {v0, v4, v1, v2, v3}, Lti/map/Shape/PolylineBoundary;->contains(Ljava/util/ArrayList;Lcom/google/android/gms/maps/model/LatLng;D)Ljava/util/ArrayList;

    move-result-object v22

    .line 825
    .local v22, "clickedPolylines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/map/PolylineProxy;>;"
    const/16 v16, 0x0

    .line 826
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 827
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lti/map/PolylineProxy;

    .line 828
    .local v27, "polylineProxy":Lti/map/PolylineProxy;
    const-string v4, "polyline"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v4}, Lti/map/TiUIMapView;->fireShapeClickEvent(Lcom/google/android/gms/maps/model/LatLng;Lti/map/Shape/IShape;Ljava/lang/String;)V

    goto :goto_5

    .line 818
    .end local v22    # "clickedPolylines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/map/PolylineProxy;>;"
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v24    # "diagonal":D
    .end local v27    # "polylineProxy":Lti/map/PolylineProxy;
    .end local v30    # "side1":D
    .end local v32    # "side2":D
    .end local v36    # "val":D
    :cond_6
    iget-object v4, v13, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v6, v13, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double v30, v4, v6

    goto :goto_3

    .line 819
    .restart local v30    # "side1":D
    :cond_7
    iget-object v4, v13, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v6, v13, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double v32, v4, v6

    goto :goto_4

    .line 833
    .end local v13    # "b":Lcom/google/android/gms/maps/model/LatLngBounds;
    .end local v14    # "baseVal":D
    .end local v16    # "boundary":Lti/map/Shape/PolylineBoundary;
    .end local v30    # "side1":D
    :cond_8
    return-void
.end method

.method public onMapLoaded()V
    .locals 3

    .prologue
    .line 979
    iget-object v0, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "complete"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 980
    return-void
.end method

.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 837
    invoke-virtual {p0, p1}, Lti/map/TiUIMapView;->fireLongClickEvent(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 838
    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 3
    .param p1, "gMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 153
    iput-object p1, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 157
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 158
    iget-object v1, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lti/map/TiUIMapView;->setBackgroundTransparent(Landroid/view/View;)V

    .line 162
    .end local v0    # "rootView":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/map/TiUIMapView;->processMapProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 163
    invoke-virtual {p0}, Lti/map/TiUIMapView;->processPreloadRoutes()V

    .line 164
    invoke-virtual {p0}, Lti/map/TiUIMapView;->processPreloadPolygons()V

    .line 165
    invoke-virtual {p0}, Lti/map/TiUIMapView;->processPreloadCircles()V

    .line 166
    invoke-virtual {p0}, Lti/map/TiUIMapView;->processPreloadPolylines()V

    .line 167
    iget-object v1, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 168
    iget-object v1, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 169
    iget-object v1, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 170
    iget-object v1, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 171
    iget-object v1, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 172
    iget-object v1, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 173
    iget-object v1, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    .line 174
    iget-object v1, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    .line 175
    iget-object v1, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v1, Lti/map/ViewProxy;

    invoke-virtual {v1}, Lti/map/ViewProxy;->clearPreloadObjects()V

    .line 176
    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 6
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 744
    invoke-direct {p0, p1}, Lti/map/TiUIMapView;->getProxyByMarker(Lcom/google/android/gms/maps/model/Marker;)Lti/map/AnnotationProxy;

    move-result-object v0

    .line 745
    .local v0, "annoProxy":Lti/map/AnnotationProxy;
    if-nez v0, :cond_1

    .line 746
    const-string v3, "TiUIMapView"

    const-string v4, "Marker can not be found, click event won\'t fired."

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_0
    :goto_0
    return v2

    .line 749
    :cond_1
    iget-object v4, p0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 751
    iget-object v2, p0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    invoke-virtual {v2}, Lti/map/AnnotationProxy;->hideInfo()V

    .line 752
    const/4 v2, 0x0

    iput-object v2, p0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    .line 753
    const-string v2, "pin"

    invoke-virtual {p0, p1, v0, v2}, Lti/map/TiUIMapView;->fireClickEvent(Lcom/google/android/gms/maps/model/Marker;Lti/map/AnnotationProxy;Ljava/lang/String;)V

    move v2, v3

    .line 754
    goto :goto_0

    .line 756
    :cond_2
    const-string v4, "pin"

    invoke-virtual {p0, p1, v0, v4}, Lti/map/TiUIMapView;->fireClickEvent(Lcom/google/android/gms/maps/model/Marker;Lti/map/AnnotationProxy;Ljava/lang/String;)V

    .line 757
    iput-object v0, p0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    .line 758
    const-string v4, "showInfoWindow"

    invoke-virtual {v0, v4}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v1

    .line 763
    .local v1, "showInfoWindow":Z
    if-nez v1, :cond_0

    move v2, v3

    .line 766
    goto :goto_0
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 3
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 842
    const-string v0, "TiUIMapView"

    const-string v1, "The annotation is dragged."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 6
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 847
    invoke-direct {p0, p1}, Lti/map/TiUIMapView;->getProxyByMarker(Lcom/google/android/gms/maps/model/Marker;)Lti/map/AnnotationProxy;

    move-result-object v0

    .line 848
    .local v0, "annoProxy":Lti/map/AnnotationProxy;
    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 850
    .local v1, "position":Lcom/google/android/gms/maps/model/LatLng;
    const-string v2, "longitude"

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lti/map/AnnotationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 851
    const-string v2, "latitude"

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lti/map/AnnotationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 852
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lti/map/TiUIMapView;->firePinChangeDragStateEvent(Lcom/google/android/gms/maps/model/Marker;Lti/map/AnnotationProxy;I)V

    .line 855
    .end local v1    # "position":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 859
    invoke-direct {p0, p1}, Lti/map/TiUIMapView;->getProxyByMarker(Lcom/google/android/gms/maps/model/Marker;)Lti/map/AnnotationProxy;

    move-result-object v0

    .line 860
    .local v0, "annoProxy":Lti/map/AnnotationProxy;
    if-eqz v0, :cond_0

    .line 861
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lti/map/TiUIMapView;->firePinChangeDragStateEvent(Lcom/google/android/gms/maps/model/Marker;Lti/map/AnnotationProxy;I)V

    .line 864
    :cond_0
    return-void
.end method

.method protected onViewCreated()V
    .locals 0

    .prologue
    .line 984
    return-void
.end method

.method public processMapProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 7
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v6, 0x1

    .line 189
    const-string v4, "userLocation"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    const-string v4, "userLocation"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Lti/map/TiUIMapView;->setUserLocationEnabled(Z)V

    .line 193
    :cond_0
    const-string v4, "userLocationButton"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    const-string v4, "userLocationButton"

    invoke-static {p1, v4, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Lti/map/TiUIMapView;->setUserLocationButtonEnabled(Z)V

    .line 197
    :cond_1
    const-string v4, "mapToolbarEnabled"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    const-string v4, "mapToolbarEnabled"

    invoke-static {p1, v4, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Lti/map/TiUIMapView;->setMapToolbarEnabled(Z)V

    .line 201
    :cond_2
    const-string v4, "mapType"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 202
    const-string v4, "mapType"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lti/map/TiUIMapView;->setMapType(I)V

    .line 204
    :cond_3
    const-string v4, "traffic"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 205
    const-string v4, "traffic"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Lti/map/TiUIMapView;->setTrafficEnabled(Z)V

    .line 207
    :cond_4
    const-string v4, "animate"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 208
    const-string v4, "animate"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lti/map/TiUIMapView;->animate:Z

    .line 210
    :cond_5
    const-string v4, "region"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 211
    const-string v4, "region"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-virtual {p0, v4}, Lti/map/TiUIMapView;->updateCamera(Ljava/util/HashMap;)V

    .line 213
    :cond_6
    const-string v4, "annotations"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 214
    const-string v4, "annotations"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    .line 215
    .local v0, "annotations":[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lti/map/TiUIMapView;->addAnnotations([Ljava/lang/Object;)V

    .line 218
    .end local v0    # "annotations":[Ljava/lang/Object;
    :cond_7
    const-string v4, "polygons"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 219
    const-string v4, "polygons"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 220
    .local v2, "polygons":[Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lti/map/TiUIMapView;->addPolygons([Ljava/lang/Object;)V

    .line 223
    .end local v2    # "polygons":[Ljava/lang/Object;
    :cond_8
    const-string v4, "polylines"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 224
    const-string v4, "polylines"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    .line 225
    .local v3, "polylines":[Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lti/map/TiUIMapView;->addPolylines([Ljava/lang/Object;)V

    .line 228
    .end local v3    # "polylines":[Ljava/lang/Object;
    :cond_9
    const-string v4, "circles"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 229
    const-string v4, "circles"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, [Ljava/lang/Object;

    .line 230
    .local v1, "circles":[Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lti/map/TiUIMapView;->addCircles([Ljava/lang/Object;)V

    .line 233
    .end local v1    # "circles":[Ljava/lang/Object;
    :cond_a
    const-string v4, "enableZoomControls"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 234
    const-string v4, "enableZoomControls"

    invoke-static {p1, v4, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Lti/map/TiUIMapView;->setZoomControlsEnabled(Z)V

    .line 237
    :cond_b
    const-string v4, "compassEnabled"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 238
    const-string v4, "compassEnabled"

    invoke-static {p1, v4, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Lti/map/TiUIMapView;->setCompassEnabled(Z)V

    .line 241
    :cond_c
    return-void
.end method

.method protected processPreloadCircles()V
    .locals 3

    .prologue
    .line 128
    iget-object v2, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v2, Lti/map/ViewProxy;

    invoke-virtual {v2}, Lti/map/ViewProxy;->getPreloadCircles()Ljava/util/ArrayList;

    move-result-object v0

    .line 130
    .local v0, "circles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/map/CircleProxy;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 131
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/map/CircleProxy;

    invoke-virtual {p0, v2}, Lti/map/TiUIMapView;->addCircle(Lti/map/CircleProxy;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method protected processPreloadPolygons()V
    .locals 3

    .prologue
    .line 136
    iget-object v2, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v2, Lti/map/ViewProxy;

    invoke-virtual {v2}, Lti/map/ViewProxy;->getPreloadPolygons()Ljava/util/ArrayList;

    move-result-object v1

    .line 138
    .local v1, "polygons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/map/PolygonProxy;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 139
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/map/PolygonProxy;

    invoke-virtual {p0, v2}, Lti/map/TiUIMapView;->addPolygon(Lti/map/PolygonProxy;)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method protected processPreloadPolylines()V
    .locals 3

    .prologue
    .line 144
    iget-object v2, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v2, Lti/map/ViewProxy;

    invoke-virtual {v2}, Lti/map/ViewProxy;->getPreloadPolylines()Ljava/util/ArrayList;

    move-result-object v1

    .line 146
    .local v1, "polylines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/map/PolylineProxy;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 147
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/map/PolylineProxy;

    invoke-virtual {p0, v2}, Lti/map/TiUIMapView;->addPolyline(Lti/map/PolylineProxy;)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method protected processPreloadRoutes()V
    .locals 3

    .prologue
    .line 119
    iget-object v2, p0, Lti/map/TiUIMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v2, Lti/map/ViewProxy;

    invoke-virtual {v2}, Lti/map/ViewProxy;->getPreloadRoutes()Ljava/util/ArrayList;

    move-result-object v1

    .line 120
    .local v1, "routes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/map/RouteProxy;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 121
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/map/RouteProxy;

    invoke-virtual {p0, v2}, Lti/map/TiUIMapView;->addRoute(Lti/map/RouteProxy;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIFragment;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 182
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0, p1}, Lti/map/TiUIMapView;->processMapProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v1, 0x1

    .line 247
    if-nez p3, :cond_0

    .line 274
    .end local p3    # "newValue":Ljava/lang/Object;
    :goto_0
    return-void

    .line 251
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_0
    const-string v0, "userLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lti/map/TiUIMapView;->setUserLocationEnabled(Z)V

    goto :goto_0

    .line 253
    :cond_1
    const-string v0, "userLocationButton"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lti/map/TiUIMapView;->setUserLocationButtonEnabled(Z)V

    goto :goto_0

    .line 255
    :cond_2
    const-string v0, "mapToolbarEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lti/map/TiUIMapView;->setMapToolbarEnabled(Z)V

    goto :goto_0

    .line 257
    :cond_3
    const-string v0, "mapType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/map/TiUIMapView;->setMapType(I)V

    goto :goto_0

    .line 259
    :cond_4
    const-string v0, "region"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 260
    check-cast p3, Ljava/util/HashMap;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Lti/map/TiUIMapView;->updateCamera(Ljava/util/HashMap;)V

    goto :goto_0

    .line 261
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string v0, "traffic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 262
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lti/map/TiUIMapView;->setTrafficEnabled(Z)V

    goto :goto_0

    .line 263
    :cond_6
    const-string v0, "animate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 264
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lti/map/TiUIMapView;->animate:Z

    goto :goto_0

    .line 265
    :cond_7
    const-string v0, "annotations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 266
    check-cast p3, [Ljava/lang/Object;

    .end local p3    # "newValue":Ljava/lang/Object;
    check-cast p3, [Ljava/lang/Object;

    invoke-virtual {p0, p3}, Lti/map/TiUIMapView;->updateAnnotations([Ljava/lang/Object;)V

    goto :goto_0

    .line 267
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_8
    const-string v0, "compassEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 268
    invoke-static {p3, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lti/map/TiUIMapView;->setCompassEnabled(Z)V

    goto/16 :goto_0

    .line 269
    :cond_9
    const-string v0, "enableZoomControls"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 270
    invoke-static {p3, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lti/map/TiUIMapView;->setZoomControlsEnabled(Z)V

    goto/16 :goto_0

    .line 272
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIFragment;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 898
    iput-object v1, p0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    .line 899
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 900
    iput-object v1, p0, Lti/map/TiUIMapView;->currentCircles:Ljava/util/ArrayList;

    .line 901
    iput-object v1, p0, Lti/map/TiUIMapView;->currentPolygons:Ljava/util/ArrayList;

    .line 902
    iput-object v1, p0, Lti/map/TiUIMapView;->currentPolylines:Ljava/util/ArrayList;

    .line 903
    iput-object v1, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 904
    iget-object v0, p0, Lti/map/TiUIMapView;->timarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 905
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIFragment;->release()V

    .line 906
    return-void
.end method

.method protected removeAllAnnotations()V
    .locals 4

    .prologue
    .line 429
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lti/map/TiUIMapView;->timarkers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 430
    iget-object v3, p0, Lti/map/TiUIMapView;->timarkers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/map/TiMarker;

    .line 431
    .local v2, "timarker":Lti/map/TiMarker;
    invoke-virtual {v2}, Lti/map/TiMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 432
    invoke-virtual {v2}, Lti/map/TiMarker;->getProxy()Lti/map/AnnotationProxy;

    move-result-object v1

    .line 433
    .local v1, "proxy":Lti/map/AnnotationProxy;
    if-eqz v1, :cond_0

    .line 434
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lti/map/AnnotationProxy;->setTiMarker(Lti/map/TiMarker;)V

    .line 429
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    .end local v1    # "proxy":Lti/map/AnnotationProxy;
    .end local v2    # "timarker":Lti/map/TiMarker;
    :cond_1
    iget-object v3, p0, Lti/map/TiUIMapView;->timarkers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 438
    return-void
.end method

.method public removeAllCircles()V
    .locals 3

    .prologue
    .line 660
    iget-object v2, p0, Lti/map/TiUIMapView;->currentCircles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/map/CircleProxy;

    .line 661
    .local v0, "circleProxy":Lti/map/CircleProxy;
    invoke-virtual {v0}, Lti/map/CircleProxy;->getCircle()Lcom/google/android/gms/maps/model/Circle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 662
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lti/map/CircleProxy;->setCircle(Lcom/google/android/gms/maps/model/Circle;)V

    goto :goto_0

    .line 664
    .end local v0    # "circleProxy":Lti/map/CircleProxy;
    :cond_0
    iget-object v2, p0, Lti/map/TiUIMapView;->currentCircles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 665
    return-void
.end method

.method public removeAllPolygons()V
    .locals 3

    .prologue
    .line 573
    iget-object v2, p0, Lti/map/TiUIMapView;->currentPolygons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/map/PolygonProxy;

    .line 574
    .local v1, "polygonProxy":Lti/map/PolygonProxy;
    invoke-virtual {v1}, Lti/map/PolygonProxy;->getPolygon()Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    .line 575
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lti/map/PolygonProxy;->setPolygon(Lcom/google/android/gms/maps/model/Polygon;)V

    goto :goto_0

    .line 577
    .end local v1    # "polygonProxy":Lti/map/PolygonProxy;
    :cond_0
    iget-object v2, p0, Lti/map/TiUIMapView;->currentPolygons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 578
    return-void
.end method

.method public removeAllPolylines()V
    .locals 3

    .prologue
    .line 617
    iget-object v2, p0, Lti/map/TiUIMapView;->currentPolylines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/map/PolylineProxy;

    .line 618
    .local v1, "polylineProxy":Lti/map/PolylineProxy;
    invoke-virtual {v1}, Lti/map/PolylineProxy;->getPolyline()Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 619
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lti/map/PolylineProxy;->setPolyline(Lcom/google/android/gms/maps/model/Polyline;)V

    goto :goto_0

    .line 621
    .end local v1    # "polylineProxy":Lti/map/PolylineProxy;
    :cond_0
    iget-object v2, p0, Lti/map/TiUIMapView;->currentPolylines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 622
    return-void
.end method

.method protected removeAnnotation(Ljava/lang/Object;)V
    .locals 3
    .param p1, "annotation"    # Ljava/lang/Object;

    .prologue
    .line 452
    const/4 v1, 0x0

    .line 453
    .local v1, "timarker":Lti/map/TiMarker;
    instance-of v2, p1, Lti/map/TiMarker;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 454
    check-cast v1, Lti/map/TiMarker;

    .line 461
    .end local p1    # "annotation":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lti/map/TiUIMapView;->timarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 462
    invoke-virtual {v1}, Lti/map/TiMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 463
    invoke-virtual {v1}, Lti/map/TiMarker;->getProxy()Lti/map/AnnotationProxy;

    move-result-object v0

    .line 464
    .local v0, "proxy":Lti/map/AnnotationProxy;
    if-eqz v0, :cond_1

    .line 465
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lti/map/AnnotationProxy;->setTiMarker(Lti/map/TiMarker;)V

    .line 468
    .end local v0    # "proxy":Lti/map/AnnotationProxy;
    :cond_1
    return-void

    .line 455
    .restart local p1    # "annotation":Ljava/lang/Object;
    :cond_2
    instance-of v2, p1, Lti/map/AnnotationProxy;

    if-eqz v2, :cond_3

    .line 456
    check-cast p1, Lti/map/AnnotationProxy;

    .end local p1    # "annotation":Ljava/lang/Object;
    invoke-virtual {p1}, Lti/map/AnnotationProxy;->getTiMarker()Lti/map/TiMarker;

    move-result-object v1

    goto :goto_0

    .line 457
    .restart local p1    # "annotation":Ljava/lang/Object;
    :cond_3
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 458
    check-cast p1, Ljava/lang/String;

    .end local p1    # "annotation":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lti/map/TiUIMapView;->findMarkerByTitle(Ljava/lang/String;)Lti/map/TiMarker;

    move-result-object v1

    goto :goto_0
.end method

.method public removeCircle(Lti/map/CircleProxy;)V
    .locals 1
    .param p1, "c"    # Lti/map/CircleProxy;

    .prologue
    .line 650
    iget-object v0, p0, Lti/map/TiUIMapView;->currentCircles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-virtual {p1}, Lti/map/CircleProxy;->getCircle()Lcom/google/android/gms/maps/model/Circle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 654
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lti/map/CircleProxy;->setCircle(Lcom/google/android/gms/maps/model/Circle;)V

    .line 655
    iget-object v0, p0, Lti/map/TiUIMapView;->currentCircles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removePolygon(Lti/map/PolygonProxy;)V
    .locals 1
    .param p1, "p"    # Lti/map/PolygonProxy;

    .prologue
    .line 560
    invoke-virtual {p1}, Lti/map/PolygonProxy;->getPolygon()Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v0

    if-nez v0, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-object v0, p0, Lti/map/TiUIMapView;->currentPolygons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {p1}, Lti/map/PolygonProxy;->getPolygon()Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    .line 566
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lti/map/PolygonProxy;->setPolygon(Lcom/google/android/gms/maps/model/Polygon;)V

    .line 567
    iget-object v0, p0, Lti/map/TiUIMapView;->currentPolygons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removePolyline(Lti/map/PolylineProxy;)V
    .locals 1
    .param p1, "p"    # Lti/map/PolylineProxy;

    .prologue
    .line 605
    invoke-virtual {p1}, Lti/map/PolylineProxy;->getPolyline()Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    if-nez v0, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v0, p0, Lti/map/TiUIMapView;->currentPolylines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p1}, Lti/map/PolylineProxy;->getPolyline()Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 611
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lti/map/PolylineProxy;->setPolyline(Lcom/google/android/gms/maps/model/Polyline;)V

    .line 612
    iget-object v0, p0, Lti/map/TiUIMapView;->currentPolylines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeRoute(Lti/map/RouteProxy;)V
    .locals 1
    .param p1, "r"    # Lti/map/RouteProxy;

    .prologue
    .line 526
    invoke-virtual {p1}, Lti/map/RouteProxy;->getRoute()Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    if-nez v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-virtual {p1}, Lti/map/RouteProxy;->getRoute()Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 531
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lti/map/RouteProxy;->setRoute(Lcom/google/android/gms/maps/model/Polyline;)V

    goto :goto_0
.end method

.method protected selectAnnotation(Ljava/lang/Object;)V
    .locals 4
    .param p1, "annotation"    # Ljava/lang/Object;

    .prologue
    .line 471
    instance-of v3, p1, Lti/map/AnnotationProxy;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 472
    check-cast v1, Lti/map/AnnotationProxy;

    .line 473
    .local v1, "proxy":Lti/map/AnnotationProxy;
    invoke-virtual {v1}, Lti/map/AnnotationProxy;->getTiMarker()Lti/map/TiMarker;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 474
    invoke-virtual {v1}, Lti/map/AnnotationProxy;->showInfo()V

    .line 475
    iput-object v1, p0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    .line 485
    .end local v1    # "proxy":Lti/map/AnnotationProxy;
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 478
    check-cast v2, Ljava/lang/String;

    .line 479
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lti/map/TiUIMapView;->findMarkerByTitle(Ljava/lang/String;)Lti/map/TiMarker;

    move-result-object v0

    .line 480
    .local v0, "marker":Lti/map/TiMarker;
    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Lti/map/TiMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 482
    invoke-virtual {v0}, Lti/map/TiMarker;->getProxy()Lti/map/AnnotationProxy;

    move-result-object v3

    iput-object v3, p0, Lti/map/TiUIMapView;->selectedAnnotation:Lti/map/AnnotationProxy;

    goto :goto_0
.end method

.method protected setCompassEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 285
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 286
    return-void
.end method

.method protected setMapToolbarEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setMapToolbarEnabled(Z)V

    .line 294
    return-void
.end method

.method protected setMapType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 306
    return-void
.end method

.method protected setTrafficEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setTrafficEnabled(Z)V

    .line 310
    return-void
.end method

.method protected setUserLocationButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 290
    return-void
.end method

.method protected setUserLocationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 281
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 282
    return-void
.end method

.method protected setZoomControlsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 313
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 314
    return-void
.end method

.method public snapshot()V
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, Lti/map/TiUIMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lti/map/TiUIMapView$1;

    invoke-direct {v1, p0}, Lti/map/TiUIMapView$1;-><init>(Lti/map/TiUIMapView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V

    .line 975
    return-void
.end method

.method protected updateAnnotations([Ljava/lang/Object;)V
    .locals 0
    .param p1, "annotations"    # [Ljava/lang/Object;

    .prologue
    .line 423
    invoke-virtual {p0}, Lti/map/TiUIMapView;->removeAllAnnotations()V

    .line 425
    invoke-virtual {p0, p1}, Lti/map/TiUIMapView;->addAnnotations([Ljava/lang/Object;)V

    .line 426
    return-void
.end method

.method public updateCamera(Ljava/util/HashMap;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/16 v16, 0x0

    .line 318
    .local v16, "longitude":D
    const-wide/16 v18, 0x0

    .line 319
    .local v18, "longitudeDelta":D
    const-wide/16 v12, 0x0

    .line 320
    .local v12, "latitude":D
    const-wide/16 v14, 0x0

    .line 321
    .local v14, "latitudeDelta":D
    const/4 v7, 0x0

    .line 322
    .local v7, "bearing":F
    const/16 v23, 0x0

    .line 323
    .local v23, "tilt":F
    const/16 v24, 0x0

    .line 331
    .local v24, "zoom":F
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lti/map/TiUIMapView;->animate:Z

    .line 332
    .local v6, "anim":Z
    const-string v25, "animate"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 333
    const-string v25, "animate"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lti/map/TiUIMapView;->animate:Z

    move/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v6

    .line 335
    :cond_0
    const-string v25, "bearing"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 336
    const-string v25, "bearing"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;F)F

    move-result v7

    .line 338
    :cond_1
    const-string v25, "tilt"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 339
    const-string v25, "tilt"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;F)F

    move-result v23

    .line 341
    :cond_2
    const-string v25, "zoom"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 342
    const-string v25, "zoom"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;F)F

    move-result v24

    .line 345
    :cond_3
    const-string v25, "latitude"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    const-string v25, "latitude"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_4

    .line 346
    const-string v25, "latitude"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v12

    .line 348
    :cond_4
    const-string v25, "longitude"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    const-string v25, "longitude"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_5

    .line 349
    const-string v25, "longitude"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v16

    .line 352
    :cond_5
    new-instance v10, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v10}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 353
    .local v10, "cameraBuilder":Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    new-instance v11, Lcom/google/android/gms/maps/model/LatLng;

    move-wide/from16 v0, v16

    invoke-direct {v11, v12, v13, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 354
    .local v11, "location":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 355
    invoke-virtual {v10, v7}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 356
    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 357
    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 359
    const-string v25, "latitudeDelta"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    const-string v25, "latitudeDelta"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_6

    .line 360
    const-string v25, "latitudeDelta"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v14

    .line 363
    :cond_6
    const-string v25, "longitudeDelta"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    const-string v25, "longitudeDelta"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_7

    .line 364
    const-string v25, "longitudeDelta"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v18

    .line 367
    :cond_7
    const-wide/16 v26, 0x0

    cmpl-double v25, v14, v26

    if-eqz v25, :cond_9

    const-wide/16 v26, 0x0

    cmpl-double v25, v18, v26

    if-eqz v25, :cond_9

    .line 368
    new-instance v20, Lcom/google/android/gms/maps/model/LatLng;

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    div-double v26, v14, v26

    add-double v26, v26, v12

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v28, v18, v28

    add-double v28, v28, v16

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 370
    .local v20, "northeast":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v22, Lcom/google/android/gms/maps/model/LatLng;

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    div-double v26, v14, v26

    sub-double v26, v12, v26

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v28, v18, v28

    sub-double v28, v16, v28

    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 373
    .local v22, "southwest":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v8, Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 374
    .local v8, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lti/map/TiUIMapView;->preLayout:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 375
    move-object/from16 v0, p0

    iput-object v8, v0, Lti/map/TiUIMapView;->preLayoutUpdateBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 387
    .end local v8    # "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    .end local v20    # "northeast":Lcom/google/android/gms/maps/model/LatLng;
    .end local v22    # "southwest":Lcom/google/android/gms/maps/model/LatLng;
    :goto_0
    return-void

    .line 378
    .restart local v8    # "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    .restart local v20    # "northeast":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v22    # "southwest":Lcom/google/android/gms/maps/model/LatLng;
    :cond_8
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-static {v8, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lti/map/TiUIMapView;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;Z)V

    goto :goto_0

    .line 383
    .end local v8    # "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    .end local v20    # "northeast":Lcom/google/android/gms/maps/model/LatLng;
    .end local v22    # "southwest":Lcom/google/android/gms/maps/model/LatLng;
    :cond_9
    invoke-virtual {v10}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v21

    .line 384
    .local v21, "position":Lcom/google/android/gms/maps/model/CameraPosition;
    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v9

    .line 386
    .local v9, "camUpdate":Lcom/google/android/gms/maps/CameraUpdate;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v6}, Lti/map/TiUIMapView;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;Z)V

    goto :goto_0
.end method
