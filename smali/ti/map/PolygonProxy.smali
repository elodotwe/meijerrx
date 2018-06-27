.class public Lti/map/PolygonProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "PolygonProxy.java"

# interfaces
.implements Lti/map/Shape/IShape;


# static fields
.field private static final MSG_FIRST_ID:I = 0xd4

.field private static final MSG_SET_FILL_COLOR:I = 0x390

.field private static final MSG_SET_HOLES:I = 0x394

.field private static final MSG_SET_POINTS:I = 0x38f

.field private static final MSG_SET_STROKE_COLOR:I = 0x391

.field private static final MSG_SET_STROKE_WIDTH:I = 0x392

.field private static final MSG_SET_ZINDEX:I = 0x393

.field public static final PROPERTY_HOLES:Ljava/lang/String; = "holes"


# instance fields
.field private options:Lcom/google/android/gms/maps/model/PolygonOptions;

.field private polygon:Lcom/google/android/gms/maps/model/Polygon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 50
    invoke-direct {p0}, Lti/map/PolygonProxy;-><init>()V

    .line 51
    return-void
.end method

.method private parseLocation(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 8
    .param p1, "loc"    # Ljava/lang/Object;

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "location":Lcom/google/android/gms/maps/model/LatLng;
    instance-of v3, p1, Ljava/util/HashMap;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 281
    check-cast v1, Ljava/util/HashMap;

    .line 282
    .local v1, "point":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    .end local v0    # "location":Lcom/google/android/gms/maps/model/LatLng;
    const-string v3, "latitude"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v4

    const-string v3, "longitude"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 289
    .end local v1    # "point":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p1    # "loc":Ljava/lang/Object;
    .restart local v0    # "location":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    :goto_0
    return-object v0

    .line 285
    .restart local p1    # "loc":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, [Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 286
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "loc":Ljava/lang/Object;
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    .line 287
    .local v2, "temp":[Ljava/lang/Object;
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    .end local v0    # "location":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v4

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .restart local v0    # "location":Lcom/google/android/gms/maps/model/LatLng;
    goto :goto_0
.end method


# virtual methods
.method public addLocation(Ljava/lang/Object;Ljava/util/ArrayList;Z)V
    .locals 2
    .param p1, "loc"    # Ljava/lang/Object;
    .param p3, "list"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p2, "locationArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-direct {p0, p1}, Lti/map/PolygonProxy;->parseLocation(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 132
    .local v0, "location":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz p3, :cond_0

    .line 133
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Lti/map/PolygonProxy;->options:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    goto :goto_0
.end method

.method public getHoles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lti/map/PolygonProxy;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polygon;->getHoles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lti/map/PolygonProxy;->options:Lcom/google/android/gms/maps/model/PolygonOptions;

    return-object v0
.end method

.method public getPolygon()Lcom/google/android/gms/maps/model/Polygon;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lti/map/PolygonProxy;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 95
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 59
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 60
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v1, p0, Lti/map/PolygonProxy;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lti/map/PolygonProxy;->processPoints(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/Polygon;->setPoints(Ljava/util/List;)V

    .line 61
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 62
    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 66
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v1, p0, Lti/map/PolygonProxy;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lti/map/PolygonProxy;->processHoles(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/Polygon;->setHoles(Ljava/util/List;)V

    .line 67
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 68
    goto :goto_0

    .line 71
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 72
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v3, p0, Lti/map/PolygonProxy;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/Polygon;->setFillColor(I)V

    .line 73
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 74
    goto :goto_0

    .line 77
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 78
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v3, p0, Lti/map/PolygonProxy;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/Polygon;->setStrokeWidth(F)V

    .line 79
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 80
    goto :goto_0

    .line 83
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 84
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v3, p0, Lti/map/PolygonProxy;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/Polygon;->setStrokeColor(I)V

    .line 85
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 86
    goto :goto_0

    .line 89
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 90
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v3, p0, Lti/map/PolygonProxy;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/Polygon;->setZIndex(F)V

    .line 91
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 92
    goto/16 :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x38f
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 237
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lti/map/PolygonProxy;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    if-nez v0, :cond_1

    .line 273
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 243
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v0, "points"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {p0}, Lti/map/PolygonProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x38f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 246
    :cond_2
    const-string v0, "holes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    invoke-virtual {p0}, Lti/map/PolygonProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x394

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 249
    :cond_3
    const-string v0, "strokeWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    invoke-virtual {p0}, Lti/map/PolygonProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x392

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 255
    :cond_4
    const-string v0, "strokeColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    invoke-virtual {p0}, Lti/map/PolygonProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x391

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 261
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    const-string v0, "fillColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 262
    invoke-virtual {p0}, Lti/map/PolygonProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x390

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 267
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    const-string v0, "zIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lti/map/PolygonProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x393

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public processHoles(Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .locals 8
    .param p1, "holesList"    # Ljava/lang/Object;
    .param p2, "list"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v2, "holesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;>;"
    instance-of v7, p1, [Ljava/lang/Object;

    if-eqz v7, :cond_3

    .line 171
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "holesList":Ljava/lang/Object;
    move-object v6, p1

    check-cast v6, [Ljava/lang/Object;

    .line 172
    .local v6, "singleHoleArray":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "h":I
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, "holeContainerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    aget-object v7, v6, v0

    check-cast v7, [Ljava/lang/Object;

    move-object v5, v7

    check-cast v5, [Ljava/lang/Object;

    .line 177
    .local v5, "pointsArray":[Ljava/lang/Object;
    instance-of v7, v5, [Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 178
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v5

    if-ge v3, v7, :cond_0

    .line 179
    aget-object v4, v5, v3

    .line 180
    .local v4, "obj":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lti/map/PolygonProxy;->parseLocation(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 185
    .end local v3    # "i":I
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 186
    if-nez p2, :cond_2

    .line 187
    iget-object v7, p0, Lti/map/PolygonProxy;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    if-nez v7, :cond_1

    .line 190
    iget-object v7, p0, Lti/map/PolygonProxy;->options:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v7, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->addHole(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 172
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 199
    .end local v0    # "h":I
    .end local v1    # "holeContainerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    .end local v5    # "pointsArray":[Ljava/lang/Object;
    .end local v6    # "singleHoleArray":[Ljava/lang/Object;
    :cond_3
    if-nez p2, :cond_5

    .line 201
    iget-object v7, p0, Lti/map/PolygonProxy;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v7, :cond_4

    .line 203
    iget-object v7, p0, Lti/map/PolygonProxy;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/maps/model/Polygon;->setHoles(Ljava/util/List;)V

    .line 206
    :cond_4
    const/4 v2, 0x0

    .line 208
    .end local v2    # "holesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;>;"
    :cond_5
    return-object v2
.end method

.method public processOptions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    new-instance v0, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    iput-object v0, p0, Lti/map/PolygonProxy;->options:Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 104
    const-string v0, "points"

    invoke-virtual {p0, v0}, Lti/map/PolygonProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "points"

    invoke-virtual {p0, v0}, Lti/map/PolygonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lti/map/PolygonProxy;->processPoints(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    .line 108
    :cond_0
    const-string v0, "holes"

    invoke-virtual {p0, v0}, Lti/map/PolygonProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    const-string v0, "holes"

    invoke-virtual {p0, v0}, Lti/map/PolygonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lti/map/PolygonProxy;->processHoles(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    .line 112
    :cond_1
    const-string v0, "strokeColor"

    invoke-virtual {p0, v0}, Lti/map/PolygonProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v1, p0, Lti/map/PolygonProxy;->options:Lcom/google/android/gms/maps/model/PolygonOptions;

    const-string v0, "strokeColor"

    invoke-virtual {p0, v0}, Lti/map/PolygonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 116
    :cond_2
    const-string v0, "strokeWidth"

    invoke-virtual {p0, v0}, Lti/map/PolygonProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lti/map/PolygonProxy;->options:Lcom/google/android/gms/maps/model/PolygonOptions;

    const-string v1, "strokeWidth"

    invoke-virtual {p0, v1}, Lti/map/PolygonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 120
    :cond_3
    const-string v0, "fillColor"

    invoke-virtual {p0, v0}, Lti/map/PolygonProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    iget-object v1, p0, Lti/map/PolygonProxy;->options:Lcom/google/android/gms/maps/model/PolygonOptions;

    const-string v0, "fillColor"

    invoke-virtual {p0, v0}, Lti/map/PolygonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 124
    :cond_4
    const-string v0, "zIndex"

    invoke-virtual {p0, v0}, Lti/map/PolygonProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    iget-object v0, p0, Lti/map/PolygonProxy;->options:Lcom/google/android/gms/maps/model/PolygonOptions;

    const-string v1, "zIndex"

    invoke-virtual {p0, v1}, Lti/map/PolygonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->zIndex(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 128
    :cond_5
    return-void
.end method

.method public processPoints(Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .locals 5
    .param p1, "points"    # Ljava/lang/Object;
    .param p2, "list"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v1, "locationArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    instance-of v4, p1, [Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 144
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "points":Ljava/lang/Object;
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    .line 145
    .local v3, "pointsArray":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 146
    aget-object v2, v3, v0

    .line 147
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v2, v1, p2}, Lti/map/PolygonProxy;->addLocation(Ljava/lang/Object;Ljava/util/ArrayList;Z)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "pointsArray":[Ljava/lang/Object;
    .restart local p1    # "points":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lti/map/PolygonProxy;->addLocation(Ljava/lang/Object;Ljava/util/ArrayList;Z)V

    .line 154
    .end local p1    # "points":Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method public setHoles([Ljava/lang/Object;)V
    .locals 2
    .param p1, "holesList"    # [Ljava/lang/Object;

    .prologue
    .line 218
    invoke-virtual {p0}, Lti/map/PolygonProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x394

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public setPolygon(Lcom/google/android/gms/maps/model/Polygon;)V
    .locals 0
    .param p1, "r"    # Lcom/google/android/gms/maps/model/Polygon;

    .prologue
    .line 223
    iput-object p1, p0, Lti/map/PolygonProxy;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    .line 224
    return-void
.end method
