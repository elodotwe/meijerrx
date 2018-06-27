.class public Lti/map/ViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ViewProxy.java"


# static fields
.field private static final MSG_ADD_ANNOTATION:I = 0x6b0

.field private static final MSG_ADD_ANNOTATIONS:I = 0x6b1

.field private static final MSG_ADD_CIRCLE:I = 0x855

.field private static final MSG_ADD_POLYGON:I = 0x841

.field private static final MSG_ADD_POLYLINE:I = 0x84a

.field private static final MSG_ADD_ROUTE:I = 0x6b7

.field private static final MSG_CHANGE_ZOOM:I = 0x6b9

.field private static final MSG_DESELECT_ANNOTATION:I = 0x6b6

.field private static final MSG_FIRST_ID:I = 0x4bc

.field private static final MSG_MAX_ZOOM:I = 0x6bb

.field private static final MSG_MIN_ZOOM:I = 0x6bc

.field private static final MSG_REMOVE_ALL_ANNOTATIONS:I = 0x6b4

.field private static final MSG_REMOVE_ALL_CIRCLES:I = 0x857

.field private static final MSG_REMOVE_ALL_POLYGONS:I = 0x843

.field private static final MSG_REMOVE_ALL_POLYLINES:I = 0x84c

.field private static final MSG_REMOVE_ANNOTATION:I = 0x6b2

.field private static final MSG_REMOVE_ANNOTATIONS:I = 0x6b3

.field private static final MSG_REMOVE_CIRCLE:I = 0x856

.field private static final MSG_REMOVE_POLYGON:I = 0x842

.field private static final MSG_REMOVE_POLYLINE:I = 0x84b

.field private static final MSG_REMOVE_ROUTE:I = 0x6b8

.field private static final MSG_SELECT_ANNOTATION:I = 0x6b5

.field private static final MSG_SET_LOCATION:I = 0x6ba

.field private static final MSG_SNAP_SHOT:I = 0x6bd

.field private static final TAG:Ljava/lang/String; = "MapViewProxy"


# instance fields
.field private final preloadCircles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/map/CircleProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final preloadPolygons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/map/PolygonProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final preloadPolylines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/map/PolylineProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final preloadRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/map/RouteProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/map/ViewProxy;->preloadRoutes:Ljava/util/ArrayList;

    .line 71
    iget-object v0, p0, Lti/map/ViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "compassEnabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/map/ViewProxy;->preloadPolygons:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/map/ViewProxy;->preloadPolylines:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/map/ViewProxy;->preloadCircles:Ljava/util/ArrayList;

    .line 75
    return-void
.end method

.method private handleAddAnnotation(Lti/map/AnnotationProxy;)V
    .locals 2
    .param p1, "annotation"    # Lti/map/AnnotationProxy;

    .prologue
    .line 278
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/map/TiUIMapView;

    .line 279
    .local v0, "mapView":Lti/map/TiUIMapView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v0, p1}, Lti/map/TiUIMapView;->addAnnotation(Lti/map/AnnotationProxy;)V

    .line 282
    :cond_0
    return-void
.end method

.method private handleAddAnnotations([Ljava/lang/Object;)V
    .locals 3
    .param p1, "annotations"    # [Ljava/lang/Object;

    .prologue
    .line 320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 321
    aget-object v0, p1, v1

    .line 322
    .local v0, "annotation":Ljava/lang/Object;
    instance-of v2, v0, Lti/map/AnnotationProxy;

    if-eqz v2, :cond_0

    .line 323
    check-cast v0, Lti/map/AnnotationProxy;

    .end local v0    # "annotation":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lti/map/ViewProxy;->handleAddAnnotation(Lti/map/AnnotationProxy;)V

    .line 320
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_1
    return-void
.end method

.method private handleSnapshot()V
    .locals 2

    .prologue
    .line 338
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 339
    .local v0, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v1, v0, Lti/map/TiUIMapView;

    if-eqz v1, :cond_0

    .line 340
    check-cast v0, Lti/map/TiUIMapView;

    .end local v0    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->snapshot()V

    .line 342
    :cond_0
    return-void
.end method

.method private removeAnnoFromList(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 1
    .param p2, "annotation"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "annoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    instance-of v0, p2, Lti/map/AnnotationProxy;

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 413
    .end local p2    # "annotation":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 410
    .restart local p2    # "annotation":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 411
    check-cast p2, Ljava/lang/String;

    .end local p2    # "annotation":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lti/map/ViewProxy;->removeAnnotationByTitle(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeAnnotationByTitle(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .param p2, "annoTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "annoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 393
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 394
    .local v2, "obj":Ljava/lang/Object;
    instance-of v4, v2, Lti/map/AnnotationProxy;

    if-eqz v4, :cond_1

    move-object v0, v2

    .line 395
    check-cast v0, Lti/map/AnnotationProxy;

    .line 396
    .local v0, "annoProxy":Lti/map/AnnotationProxy;
    const-string v4, "title"

    invoke-virtual {v0, v4}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "title":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 399
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 404
    .end local v0    # "annoProxy":Lti/map/AnnotationProxy;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    return-void

    .line 392
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addAnnotation(Lti/map/AnnotationProxy;)V
    .locals 6
    .param p1, "annotation"    # Lti/map/AnnotationProxy;

    .prologue
    .line 256
    const-string v3, "annotations"

    invoke-virtual {p0, v3}, Lti/map/ViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 257
    .local v1, "annotations":Ljava/lang/Object;
    instance-of v3, v1, [Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "annotations":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 260
    .local v0, "annoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    const-string v3, "annotations"

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lti/map/ViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    .end local v0    # "annoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    .line 267
    .local v2, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v3, v2, Lti/map/TiUIMapView;

    if-eqz v3, :cond_0

    .line 268
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    invoke-direct {p0, p1}, Lti/map/ViewProxy;->handleAddAnnotation(Lti/map/AnnotationProxy;)V

    .line 275
    :cond_0
    :goto_1
    return-void

    .line 263
    .end local v2    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    .restart local v1    # "annotations":Ljava/lang/Object;
    :cond_1
    const-string v3, "annotations"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Lti/map/ViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 271
    .end local v1    # "annotations":Ljava/lang/Object;
    .restart local v2    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_2
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x6b0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public addAnnotations(Ljava/lang/Object;)V
    .locals 9
    .param p1, "annoObject"    # Ljava/lang/Object;

    .prologue
    .line 286
    instance-of v6, p1, [Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 287
    const-string v6, "MapViewProxy"

    const-string v7, "Invalid argument to addAnnotations"

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local p1    # "annoObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 290
    .restart local p1    # "annoObject":Ljava/lang/Object;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "annoObject":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 293
    .local v1, "annos":[Ljava/lang/Object;
    const-string v6, "annotations"

    invoke-virtual {p0, v6}, Lti/map/ViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 294
    .local v3, "annotations":Ljava/lang/Object;
    instance-of v6, v3, [Ljava/lang/Object;

    if-eqz v6, :cond_4

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    check-cast v3, [Ljava/lang/Object;

    .end local v3    # "annotations":Ljava/lang/Object;
    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 297
    .local v0, "annoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v1

    if-ge v4, v6, :cond_3

    .line 298
    aget-object v2, v1, v4

    .line 299
    .local v2, "annotationObject":Ljava/lang/Object;
    instance-of v6, v2, Lti/map/AnnotationProxy;

    if-eqz v6, :cond_2

    .line 300
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 303
    .end local v2    # "annotationObject":Ljava/lang/Object;
    :cond_3
    const-string v6, "annotations"

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lti/map/ViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    .end local v0    # "annoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v4    # "i":I
    :goto_2
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v5

    .line 309
    .local v5, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v6, v5, Lti/map/TiUIMapView;

    if-eqz v6, :cond_0

    .line 310
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 311
    invoke-direct {p0, v1}, Lti/map/ViewProxy;->handleAddAnnotations([Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    .end local v5    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    .restart local v3    # "annotations":Ljava/lang/Object;
    :cond_4
    const-string v6, "annotations"

    invoke-virtual {p0, v6, v1}, Lti/map/ViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 313
    .end local v3    # "annotations":Ljava/lang/Object;
    .restart local v5    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_5
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x6b1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addCircle(Lti/map/CircleProxy;)V
    .locals 2
    .param p1, "circle"    # Lti/map/CircleProxy;

    .prologue
    .line 860
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->handleAddCircle(Lti/map/CircleProxy;)V

    .line 866
    :goto_0
    return-void

    .line 863
    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x855

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addPolygon(Lti/map/PolygonProxy;)V
    .locals 2
    .param p1, "polygon"    # Lti/map/PolygonProxy;

    .prologue
    .line 648
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->handleAddPolygon(Ljava/lang/Object;)V

    .line 654
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x841

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addPolyline(Lti/map/PolylineProxy;)V
    .locals 2
    .param p1, "polyline"    # Lti/map/PolylineProxy;

    .prologue
    .line 757
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->handleAddPolygon(Ljava/lang/Object;)V

    .line 763
    :goto_0
    return-void

    .line 760
    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x84a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addPreloadCircle(Lti/map/CircleProxy;)V
    .locals 1
    .param p1, "c"    # Lti/map/CircleProxy;

    .prologue
    .line 886
    iget-object v0, p0, Lti/map/ViewProxy;->preloadCircles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    iget-object v0, p0, Lti/map/ViewProxy;->preloadCircles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    :cond_0
    return-void
.end method

.method public addPreloadPolygon(Lti/map/PolygonProxy;)V
    .locals 1
    .param p1, "p"    # Lti/map/PolygonProxy;

    .prologue
    .line 676
    iget-object v0, p0, Lti/map/ViewProxy;->preloadPolygons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lti/map/ViewProxy;->preloadPolygons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    :cond_0
    return-void
.end method

.method public addPreloadPolyline(Lti/map/PolylineProxy;)V
    .locals 1
    .param p1, "p"    # Lti/map/PolylineProxy;

    .prologue
    .line 785
    iget-object v0, p0, Lti/map/ViewProxy;->preloadPolylines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lti/map/ViewProxy;->preloadPolylines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_0
    return-void
.end method

.method public addPreloadRoute(Lti/map/RouteProxy;)V
    .locals 1
    .param p1, "r"    # Lti/map/RouteProxy;

    .prologue
    .line 562
    iget-object v0, p0, Lti/map/ViewProxy;->preloadRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lti/map/ViewProxy;->preloadRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_0
    return-void
.end method

.method public addRoute(Lti/map/RouteProxy;)V
    .locals 2
    .param p1, "route"    # Lti/map/RouteProxy;

    .prologue
    .line 532
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->handleAddRoute(Ljava/lang/Object;)V

    .line 539
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clearPreloadObjects()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lti/map/ViewProxy;->preloadRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    iget-object v0, p0, Lti/map/ViewProxy;->preloadPolygons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    iget-object v0, p0, Lti/map/ViewProxy;->preloadPolylines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    iget-object v0, p0, Lti/map/ViewProxy;->preloadCircles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    new-instance v0, Lti/map/TiUIMapView;

    invoke-direct {v0, p0, p1}, Lti/map/TiUIMapView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    return-object v0
.end method

.method public deselectAnnotation(Ljava/lang/Object;)V
    .locals 2
    .param p1, "annotation"    # Ljava/lang/Object;

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->isAnnotationValid(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->handleDeselectAnnotation(Ljava/lang/Object;)V

    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1004
    const-string v0, "Ti.Map"

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 2

    .prologue
    .line 574
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 575
    .local v0, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v1, v0, Lti/map/TiUIMapView;

    if-eqz v1, :cond_0

    .line 576
    check-cast v0, Lti/map/TiUIMapView;

    .end local v0    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->getMaxZoomLevel()F

    move-result v1

    .line 578
    :goto_0
    return v1

    .restart local v0    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxZoomLevel()F
    .locals 2

    .prologue
    .line 594
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMaxZoom()F

    move-result v0

    .line 597
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6bb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public getMinZoom()F
    .locals 2

    .prologue
    .line 583
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 584
    .local v0, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v1, v0, Lti/map/TiUIMapView;

    if-eqz v1, :cond_0

    .line 585
    check-cast v0, Lti/map/TiUIMapView;

    .end local v0    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->getMinZoomLevel()F

    move-result v1

    .line 587
    :goto_0
    return v1

    .restart local v0    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMinZoomLevel()F
    .locals 2

    .prologue
    .line 605
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMinZoom()F

    move-result v0

    .line 608
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6bc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public getPreloadCircles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/map/CircleProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 949
    iget-object v0, p0, Lti/map/ViewProxy;->preloadCircles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPreloadPolygons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/map/PolygonProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 716
    iget-object v0, p0, Lti/map/ViewProxy;->preloadPolygons:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPreloadPolylines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/map/PolylineProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    iget-object v0, p0, Lti/map/ViewProxy;->preloadPolylines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPreloadRoutes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/map/RouteProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lti/map/ViewProxy;->preloadRoutes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleAddCircle(Lti/map/CircleProxy;)V
    .locals 3
    .param p1, "circle"    # Lti/map/CircleProxy;

    .prologue
    .line 869
    if-nez p1, :cond_0

    .line 883
    :goto_0
    return-void

    .line 872
    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 873
    .local v1, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v2, v1, Lti/map/TiUIMapView;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 874
    check-cast v0, Lti/map/TiUIMapView;

    .line 875
    .local v0, "mapView":Lti/map/TiUIMapView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 876
    invoke-virtual {v0, p1}, Lti/map/TiUIMapView;->addCircle(Lti/map/CircleProxy;)V

    goto :goto_0

    .line 878
    :cond_1
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->addPreloadCircle(Lti/map/CircleProxy;)V

    goto :goto_0

    .line 881
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_2
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->addPreloadCircle(Lti/map/CircleProxy;)V

    goto :goto_0
.end method

.method public handleAddPolygon(Ljava/lang/Object;)V
    .locals 4
    .param p1, "polygon"    # Ljava/lang/Object;

    .prologue
    .line 657
    if-nez p1, :cond_0

    .line 673
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 660
    check-cast v1, Lti/map/PolygonProxy;

    .line 661
    .local v1, "p":Lti/map/PolygonProxy;
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    .line 662
    .local v2, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v3, v2, Lti/map/TiUIMapView;

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 663
    check-cast v0, Lti/map/TiUIMapView;

    .line 664
    .local v0, "mapView":Lti/map/TiUIMapView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 665
    invoke-virtual {v0, v1}, Lti/map/TiUIMapView;->addPolygon(Lti/map/PolygonProxy;)V

    goto :goto_0

    .line 667
    :cond_1
    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->addPreloadPolygon(Lti/map/PolygonProxy;)V

    goto :goto_0

    .line 670
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_2
    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->addPreloadPolygon(Lti/map/PolygonProxy;)V

    goto :goto_0
.end method

.method public handleAddPolyline(Ljava/lang/Object;)V
    .locals 4
    .param p1, "polyline"    # Ljava/lang/Object;

    .prologue
    .line 766
    if-nez p1, :cond_0

    .line 782
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 769
    check-cast v1, Lti/map/PolylineProxy;

    .line 770
    .local v1, "p":Lti/map/PolylineProxy;
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    .line 771
    .local v2, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v3, v2, Lti/map/TiUIMapView;

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 772
    check-cast v0, Lti/map/TiUIMapView;

    .line 773
    .local v0, "mapView":Lti/map/TiUIMapView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 774
    invoke-virtual {v0, v1}, Lti/map/TiUIMapView;->addPolyline(Lti/map/PolylineProxy;)V

    goto :goto_0

    .line 776
    :cond_1
    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->addPreloadPolyline(Lti/map/PolylineProxy;)V

    goto :goto_0

    .line 779
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_2
    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->addPreloadPolyline(Lti/map/PolylineProxy;)V

    goto :goto_0
.end method

.method public handleAddRoute(Ljava/lang/Object;)V
    .locals 4
    .param p1, "route"    # Ljava/lang/Object;

    .prologue
    .line 542
    if-nez p1, :cond_0

    .line 559
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 545
    check-cast v1, Lti/map/RouteProxy;

    .line 546
    .local v1, "r":Lti/map/RouteProxy;
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    .line 547
    .local v2, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v3, v2, Lti/map/TiUIMapView;

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 548
    check-cast v0, Lti/map/TiUIMapView;

    .line 549
    .local v0, "mapView":Lti/map/TiUIMapView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 550
    invoke-virtual {v0, v1}, Lti/map/TiUIMapView;->addRoute(Lti/map/RouteProxy;)V

    goto :goto_0

    .line 553
    :cond_1
    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->addPreloadRoute(Lti/map/RouteProxy;)V

    goto :goto_0

    .line 556
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_2
    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->addPreloadRoute(Lti/map/RouteProxy;)V

    goto :goto_0
.end method

.method public handleDeselectAnnotation(Ljava/lang/Object;)V
    .locals 2
    .param p1, "annotation"    # Ljava/lang/Object;

    .prologue
    .line 523
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 524
    .local v0, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v1, v0, Lti/map/TiUIMapView;

    if-eqz v1, :cond_0

    .line 525
    check-cast v0, Lti/map/TiUIMapView;

    .end local v0    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p1}, Lti/map/TiUIMapView;->deselectAnnotation(Ljava/lang/Object;)V

    .line 527
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 248
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 95
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 96
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/map/AnnotationProxy;

    invoke-direct {p0, v1}, Lti/map/ViewProxy;->handleAddAnnotation(Lti/map/AnnotationProxy;)V

    .line 97
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 98
    goto :goto_0

    .line 102
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 103
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lti/map/ViewProxy;->handleAddAnnotations([Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 105
    goto :goto_0

    .line 109
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 110
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->handleRemoveAnnotation(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 112
    goto :goto_0

    .line 116
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 117
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->handleRemoveAnnotations([Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 119
    goto :goto_0

    .line 123
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 124
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lti/map/ViewProxy;->handleRemoveAllAnnotations()V

    .line 125
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 126
    goto :goto_0

    .line 130
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 131
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->handleSelectAnnotation(Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 133
    goto :goto_0

    .line 137
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 138
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->handleDeselectAnnotation(Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 140
    goto :goto_0

    .line 144
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 145
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->handleAddRoute(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 147
    goto/16 :goto_0

    .line 151
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 152
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/map/RouteProxy;

    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->handleRemoveRoute(Lti/map/RouteProxy;)V

    .line 153
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 154
    goto/16 :goto_0

    .line 158
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 159
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMaxZoom()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 160
    goto/16 :goto_0

    .line 164
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 165
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMinZoom()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 166
    goto/16 :goto_0

    .line 170
    :sswitch_b
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->handleZoom(I)V

    move v1, v2

    .line 171
    goto/16 :goto_0

    .line 175
    :sswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->handleSetLocation(Ljava/util/HashMap;)V

    move v1, v2

    .line 176
    goto/16 :goto_0

    .line 180
    :sswitch_d
    invoke-direct {p0}, Lti/map/ViewProxy;->handleSnapshot()V

    move v1, v2

    .line 181
    goto/16 :goto_0

    .line 185
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 186
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->handleAddPolygon(Ljava/lang/Object;)V

    .line 187
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 188
    goto/16 :goto_0

    .line 192
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 193
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/map/PolygonProxy;

    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->handleRemovePolygon(Lti/map/PolygonProxy;)V

    .line 194
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 195
    goto/16 :goto_0

    .line 199
    :sswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 200
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lti/map/ViewProxy;->handleRemoveAllPolygons()V

    .line 201
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 202
    goto/16 :goto_0

    .line 206
    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 207
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->handleAddPolyline(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 209
    goto/16 :goto_0

    .line 213
    :sswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 214
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/map/PolylineProxy;

    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->handleRemovePolyline(Lti/map/PolylineProxy;)V

    .line 215
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 216
    goto/16 :goto_0

    .line 220
    :sswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 221
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lti/map/ViewProxy;->handleRemoveAllPolylines()V

    .line 222
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 223
    goto/16 :goto_0

    .line 227
    :sswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 228
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/map/CircleProxy;

    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->handleAddCircle(Lti/map/CircleProxy;)V

    .line 229
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 230
    goto/16 :goto_0

    .line 234
    :sswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 235
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/map/CircleProxy;

    invoke-virtual {p0, v1}, Lti/map/ViewProxy;->handleRemoveCircle(Lti/map/CircleProxy;)V

    .line 236
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 237
    goto/16 :goto_0

    .line 241
    :sswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 242
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lti/map/ViewProxy;->handleRemoveAllCircles()V

    .line 243
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 244
    goto/16 :goto_0

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x6b0 -> :sswitch_0
        0x6b1 -> :sswitch_1
        0x6b2 -> :sswitch_2
        0x6b3 -> :sswitch_3
        0x6b4 -> :sswitch_4
        0x6b5 -> :sswitch_5
        0x6b6 -> :sswitch_6
        0x6b7 -> :sswitch_7
        0x6b8 -> :sswitch_8
        0x6b9 -> :sswitch_b
        0x6ba -> :sswitch_c
        0x6bb -> :sswitch_9
        0x6bc -> :sswitch_a
        0x6bd -> :sswitch_d
        0x841 -> :sswitch_e
        0x842 -> :sswitch_f
        0x843 -> :sswitch_10
        0x84a -> :sswitch_11
        0x84b -> :sswitch_12
        0x84c -> :sswitch_13
        0x855 -> :sswitch_14
        0x856 -> :sswitch_15
        0x857 -> :sswitch_16
    .end sparse-switch
.end method

.method public handleRemoveAllAnnotations()V
    .locals 3

    .prologue
    .line 358
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 359
    .local v1, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v2, v1, Lti/map/TiUIMapView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 360
    check-cast v0, Lti/map/TiUIMapView;

    .line 361
    .local v0, "mapView":Lti/map/TiUIMapView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->removeAllAnnotations()V

    .line 363
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_0
    return-void
.end method

.method public handleRemoveAllCircles()V
    .locals 3

    .prologue
    .line 935
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 936
    .local v1, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v2, v1, Lti/map/TiUIMapView;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 937
    check-cast v0, Lti/map/TiUIMapView;

    .line 938
    .local v0, "mapView":Lti/map/TiUIMapView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 939
    invoke-virtual {v0}, Lti/map/TiUIMapView;->removeAllCircles()V

    .line 946
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :goto_0
    return-void

    .line 941
    .restart local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_0
    iget-object v2, p0, Lti/map/ViewProxy;->preloadCircles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 944
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_1
    iget-object v2, p0, Lti/map/ViewProxy;->preloadCircles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public handleRemoveAllPolygons()V
    .locals 3

    .prologue
    .line 720
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 721
    .local v1, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v2, v1, Lti/map/TiUIMapView;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 722
    check-cast v0, Lti/map/TiUIMapView;

    .line 723
    .local v0, "mapView":Lti/map/TiUIMapView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 724
    invoke-virtual {v0}, Lti/map/TiUIMapView;->removeAllPolygons()V

    .line 731
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :goto_0
    return-void

    .line 726
    .restart local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_0
    iget-object v2, p0, Lti/map/ViewProxy;->preloadPolygons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 729
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_1
    iget-object v2, p0, Lti/map/ViewProxy;->preloadPolygons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public handleRemoveAllPolylines()V
    .locals 3

    .prologue
    .line 826
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 827
    .local v1, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v2, v1, Lti/map/TiUIMapView;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 828
    check-cast v0, Lti/map/TiUIMapView;

    .line 829
    .local v0, "mapView":Lti/map/TiUIMapView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 830
    invoke-virtual {v0}, Lti/map/TiUIMapView;->removeAllPolylines()V

    .line 837
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :goto_0
    return-void

    .line 832
    .restart local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_0
    iget-object v2, p0, Lti/map/ViewProxy;->preloadPolylines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 835
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_1
    iget-object v2, p0, Lti/map/ViewProxy;->preloadPolylines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public handleRemoveAnnotation(Ljava/lang/Object;)V
    .locals 2
    .param p1, "annotation"    # Ljava/lang/Object;

    .prologue
    .line 479
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/map/TiUIMapView;

    .line 480
    .local v0, "mapView":Lti/map/TiUIMapView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {v0, p1}, Lti/map/TiUIMapView;->removeAnnotation(Ljava/lang/Object;)V

    .line 483
    :cond_0
    return-void
.end method

.method public handleRemoveAnnotations([Ljava/lang/Object;)V
    .locals 3
    .param p1, "annotations"    # [Ljava/lang/Object;

    .prologue
    .line 469
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 470
    aget-object v0, p1, v1

    .line 471
    .local v0, "annotation":Ljava/lang/Object;
    instance-of v2, v0, Lti/map/AnnotationProxy;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 473
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lti/map/ViewProxy;->handleRemoveAnnotation(Ljava/lang/Object;)V

    .line 469
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v0    # "annotation":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public handleRemoveCircle(Lti/map/CircleProxy;)V
    .locals 3
    .param p1, "circle"    # Lti/map/CircleProxy;

    .prologue
    .line 909
    if-nez p1, :cond_0

    .line 923
    :goto_0
    return-void

    .line 912
    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 913
    .local v1, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v2, v1, Lti/map/TiUIMapView;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 914
    check-cast v0, Lti/map/TiUIMapView;

    .line 915
    .local v0, "mapView":Lti/map/TiUIMapView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 916
    invoke-virtual {v0, p1}, Lti/map/TiUIMapView;->removeCircle(Lti/map/CircleProxy;)V

    goto :goto_0

    .line 918
    :cond_1
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->removePreloadCircle(Lti/map/CircleProxy;)V

    goto :goto_0

    .line 921
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_2
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->removePreloadCircle(Lti/map/CircleProxy;)V

    goto :goto_0
.end method

.method public handleRemovePolygon(Lti/map/PolygonProxy;)V
    .locals 3
    .param p1, "polygon"    # Lti/map/PolygonProxy;

    .prologue
    .line 701
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 702
    .local v1, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v2, v1, Lti/map/TiUIMapView;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 703
    check-cast v0, Lti/map/TiUIMapView;

    .line 704
    .local v0, "mapView":Lti/map/TiUIMapView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 705
    invoke-virtual {v0, p1}, Lti/map/TiUIMapView;->removePolygon(Lti/map/PolygonProxy;)V

    .line 713
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :goto_0
    return-void

    .line 708
    .restart local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_0
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->removePreloadPolygon(Lti/map/PolygonProxy;)V

    goto :goto_0

    .line 711
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_1
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->removePreloadPolygon(Lti/map/PolygonProxy;)V

    goto :goto_0
.end method

.method public handleRemovePolyline(Lti/map/PolylineProxy;)V
    .locals 3
    .param p1, "polyline"    # Lti/map/PolylineProxy;

    .prologue
    .line 808
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 809
    .local v1, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v2, v1, Lti/map/TiUIMapView;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 810
    check-cast v0, Lti/map/TiUIMapView;

    .line 811
    .local v0, "mapView":Lti/map/TiUIMapView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 812
    invoke-virtual {v0, p1}, Lti/map/TiUIMapView;->removePolyline(Lti/map/PolylineProxy;)V

    .line 819
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :goto_0
    return-void

    .line 814
    .restart local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_0
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->removePreloadPolyline(Lti/map/PolylineProxy;)V

    goto :goto_0

    .line 817
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_1
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->removePreloadPolyline(Lti/map/PolylineProxy;)V

    goto :goto_0
.end method

.method public handleRemoveRoute(Lti/map/RouteProxy;)V
    .locals 3
    .param p1, "route"    # Lti/map/RouteProxy;

    .prologue
    .line 625
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 626
    .local v1, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v2, v1, Lti/map/TiUIMapView;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 627
    check-cast v0, Lti/map/TiUIMapView;

    .line 628
    .local v0, "mapView":Lti/map/TiUIMapView;
    invoke-virtual {v0}, Lti/map/TiUIMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 629
    invoke-virtual {v0, p1}, Lti/map/TiUIMapView;->removeRoute(Lti/map/RouteProxy;)V

    .line 637
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :goto_0
    return-void

    .line 632
    .restart local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_0
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->removePreloadRoute(Lti/map/RouteProxy;)V

    goto :goto_0

    .line 635
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    :cond_1
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->removePreloadRoute(Lti/map/RouteProxy;)V

    goto :goto_0
.end method

.method public handleSelectAnnotation(Ljava/lang/Object;)V
    .locals 2
    .param p1, "annotation"    # Ljava/lang/Object;

    .prologue
    .line 501
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 502
    .local v0, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v1, v0, Lti/map/TiUIMapView;

    if-eqz v1, :cond_0

    .line 503
    check-cast v0, Lti/map/TiUIMapView;

    .end local v0    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p1}, Lti/map/TiUIMapView;->selectAnnotation(Ljava/lang/Object;)V

    .line 505
    :cond_0
    return-void
.end method

.method public handleSetLocation(Ljava/util/HashMap;)V
    .locals 3
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
    .line 993
    .local p1, "location":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 994
    .local v0, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v1, v0, Lti/map/TiUIMapView;

    if-eqz v1, :cond_0

    .line 995
    check-cast v0, Lti/map/TiUIMapView;

    .end local v0    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p1}, Lti/map/TiUIMapView;->updateCamera(Ljava/util/HashMap;)V

    .line 1000
    :goto_0
    return-void

    .line 997
    .restart local v0    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    const-string v1, "MapViewProxy"

    const-string v2, "Unable set location since the map view has not been created yet. Use setRegion() instead."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleZoom(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    .line 967
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 968
    .local v0, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v1, v0, Lti/map/TiUIMapView;

    if-eqz v1, :cond_0

    .line 969
    check-cast v0, Lti/map/TiUIMapView;

    .end local v0    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p1}, Lti/map/TiUIMapView;->changeZoomLevel(I)V

    .line 971
    :cond_0
    return-void
.end method

.method public isAnnotationValid(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "annotation"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 367
    instance-of v2, p1, Lti/map/AnnotationProxy;

    if-nez v2, :cond_0

    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 368
    const-string v2, "MapViewProxy"

    const-string v4, "Unsupported argument type for removeAnnotation"

    invoke-static {v2, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 387
    .end local p1    # "annotation":Ljava/lang/Object;
    :goto_0
    return v2

    .line 372
    .restart local p1    # "annotation":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lti/map/AnnotationProxy;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lti/map/AnnotationProxy;

    invoke-virtual {v2}, Lti/map/AnnotationProxy;->getTiMarker()Lti/map/TiMarker;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    .line 374
    goto :goto_0

    .line 377
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 378
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 379
    .local v1, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v2, v1, Lti/map/TiUIMapView;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 380
    check-cast v0, Lti/map/TiUIMapView;

    .line 381
    .local v0, "mapView":Lti/map/TiUIMapView;
    check-cast p1, Ljava/lang/String;

    .end local p1    # "annotation":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lti/map/TiUIMapView;->findMarkerByTitle(Ljava/lang/String;)Lti/map/TiMarker;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    .line 382
    goto :goto_0

    .line 387
    .end local v0    # "mapView":Lti/map/TiUIMapView;
    .end local v1    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public removeAllAnnotations()V
    .locals 2

    .prologue
    .line 347
    const-string v0, "annotations"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lti/map/ViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lti/map/ViewProxy;->handleRemoveAllAnnotations()V

    .line 355
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeAllCircles()V
    .locals 2

    .prologue
    .line 927
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {p0}, Lti/map/ViewProxy;->handleRemoveAllCircles()V

    .line 932
    :goto_0
    return-void

    .line 930
    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x857

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeAllPolygons()V
    .locals 2

    .prologue
    .line 737
    const-string v0, "polygons"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lti/map/ViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 739
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {p0}, Lti/map/ViewProxy;->handleRemoveAllPolygons()V

    .line 745
    :goto_0
    return-void

    .line 742
    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x843

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeAllPolylines()V
    .locals 2

    .prologue
    .line 842
    const-string v0, "polylines"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lti/map/ViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 844
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {p0}, Lti/map/ViewProxy;->handleRemoveAllPolylines()V

    .line 850
    :goto_0
    return-void

    .line 847
    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x84c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeAnnotation(Ljava/lang/Object;)V
    .locals 5
    .param p1, "annotation"    # Ljava/lang/Object;

    .prologue
    .line 417
    instance-of v3, p1, Lti/map/AnnotationProxy;

    if-nez v3, :cond_1

    instance-of v3, p1, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 418
    const-string v3, "MapViewProxy"

    const-string v4, "Unsupported argument type for removeAnnotation"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    const-string v3, "annotations"

    invoke-virtual {p0, v3}, Lti/map/ViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 424
    .local v1, "annotations":Ljava/lang/Object;
    instance-of v3, v1, [Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "annotations":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 427
    .local v0, "annoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0, v0, p1}, Lti/map/ViewProxy;->removeAnnoFromList(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 428
    const-string v3, "annotations"

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lti/map/ViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    .end local v0    # "annoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    .line 432
    .local v2, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v3, v2, Lti/map/TiUIMapView;

    if-eqz v3, :cond_0

    .line 433
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 434
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->handleRemoveAnnotation(Ljava/lang/Object;)V

    goto :goto_0

    .line 436
    :cond_3
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x6b2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeAnnotations(Ljava/lang/Object;)V
    .locals 8
    .param p1, "annos"    # Ljava/lang/Object;

    .prologue
    .line 445
    const-string v6, "annotations"

    invoke-virtual {p0, v6}, Lti/map/ViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 446
    .local v3, "annotations":Ljava/lang/Object;
    instance-of v6, v3, [Ljava/lang/Object;

    if-eqz v6, :cond_1

    instance-of v6, p1, [Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    check-cast v3, [Ljava/lang/Object;

    .end local v3    # "annotations":Ljava/lang/Object;
    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v1, "annoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object v6, p1

    .line 449
    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    .line 450
    .local v0, "annoArray":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v0

    if-ge v4, v6, :cond_0

    .line 451
    aget-object v2, v0, v4

    .line 452
    .local v2, "annotation":Ljava/lang/Object;
    invoke-direct {p0, v1, v2}, Lti/map/ViewProxy;->removeAnnoFromList(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 450
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 454
    .end local v2    # "annotation":Ljava/lang/Object;
    :cond_0
    const-string v6, "annotations"

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lti/map/ViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    .end local v0    # "annoArray":[Ljava/lang/Object;
    .end local v1    # "annoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p0}, Lti/map/ViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v5

    .line 458
    .local v5, "view":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v6, v5, Lti/map/TiUIMapView;

    if-eqz v6, :cond_2

    .line 459
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 460
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "annos":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->handleRemoveAnnotations([Ljava/lang/Object;)V

    .line 466
    :cond_2
    :goto_1
    return-void

    .line 462
    .restart local p1    # "annos":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x6b3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-static {v6, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public removeCircle(Lti/map/CircleProxy;)V
    .locals 2
    .param p1, "circle"    # Lti/map/CircleProxy;

    .prologue
    .line 899
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->handleRemoveCircle(Lti/map/CircleProxy;)V

    .line 906
    :goto_0
    return-void

    .line 902
    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x856

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removePolygon(Lti/map/PolygonProxy;)V
    .locals 2
    .param p1, "polygon"    # Lti/map/PolygonProxy;

    .prologue
    .line 689
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->handleRemovePolygon(Lti/map/PolygonProxy;)V

    .line 698
    :goto_0
    return-void

    .line 692
    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x842

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removePolyline(Lti/map/PolylineProxy;)V
    .locals 2
    .param p1, "polyline"    # Lti/map/PolylineProxy;

    .prologue
    .line 798
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->handleRemovePolyline(Lti/map/PolylineProxy;)V

    .line 805
    :goto_0
    return-void

    .line 801
    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x84b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removePreloadCircle(Lti/map/CircleProxy;)V
    .locals 1
    .param p1, "c"    # Lti/map/CircleProxy;

    .prologue
    .line 892
    iget-object v0, p0, Lti/map/ViewProxy;->preloadCircles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lti/map/ViewProxy;->preloadCircles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 895
    :cond_0
    return-void
.end method

.method public removePreloadPolygon(Lti/map/PolygonProxy;)V
    .locals 1
    .param p1, "p"    # Lti/map/PolygonProxy;

    .prologue
    .line 682
    iget-object v0, p0, Lti/map/ViewProxy;->preloadPolygons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lti/map/ViewProxy;->preloadPolygons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 685
    :cond_0
    return-void
.end method

.method public removePreloadPolyline(Lti/map/PolylineProxy;)V
    .locals 1
    .param p1, "p"    # Lti/map/PolylineProxy;

    .prologue
    .line 791
    iget-object v0, p0, Lti/map/ViewProxy;->preloadPolylines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lti/map/ViewProxy;->preloadPolylines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 794
    :cond_0
    return-void
.end method

.method public removePreloadRoute(Lti/map/RouteProxy;)V
    .locals 1
    .param p1, "r"    # Lti/map/RouteProxy;

    .prologue
    .line 568
    iget-object v0, p0, Lti/map/ViewProxy;->preloadRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lti/map/ViewProxy;->preloadRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 571
    :cond_0
    return-void
.end method

.method public removeRoute(Lti/map/RouteProxy;)V
    .locals 2
    .param p1, "route"    # Lti/map/RouteProxy;

    .prologue
    .line 615
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->handleRemoveRoute(Lti/map/RouteProxy;)V

    .line 622
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public selectAnnotation(Ljava/lang/Object;)V
    .locals 2
    .param p1, "annotation"    # Ljava/lang/Object;

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->isAnnotationValid(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->handleSelectAnnotation(Ljava/lang/Object;)V

    goto :goto_0

    .line 494
    :cond_1
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setLocation(Ljava/lang/Object;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/Object;

    .prologue
    .line 975
    instance-of v1, p1, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 976
    check-cast v0, Ljava/util/HashMap;

    .line 977
    .local v0, "dict":Ljava/util/HashMap;
    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "longitude"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 979
    :cond_0
    const-string v1, "MapViewProxy"

    const-string v2, "Unable to set location. Missing latitude or longitude."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    .end local v0    # "dict":Ljava/util/HashMap;
    :cond_1
    :goto_0
    return-void

    .line 983
    .restart local v0    # "dict":Ljava/util/HashMap;
    :cond_2
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 984
    invoke-virtual {p0, v0}, Lti/map/ViewProxy;->handleSetLocation(Ljava/util/HashMap;)V

    goto :goto_0

    .line 986
    :cond_3
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6ba

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public snapshot()V
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0}, Lti/map/ViewProxy;->handleSnapshot()V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6bd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public zoom(I)V
    .locals 3
    .param p1, "delta"    # I

    .prologue
    .line 958
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {p0, p1}, Lti/map/ViewProxy;->handleZoom(I)V

    .line 964
    :goto_0
    return-void

    .line 961
    :cond_0
    invoke-virtual {p0}, Lti/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
