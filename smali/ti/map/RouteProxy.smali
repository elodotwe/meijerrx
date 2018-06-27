.class public Lti/map/RouteProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "RouteProxy.java"


# static fields
.field private static final MSG_FIRST_ID:I = 0xd4

.field private static final MSG_SET_COLOR:I = 0x265

.field private static final MSG_SET_POINTS:I = 0x264

.field private static final MSG_SET_WIDTH:I = 0x266


# instance fields
.field private options:Lcom/google/android/gms/maps/model/PolylineOptions;

.field private route:Lcom/google/android/gms/maps/model/Polyline;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 41
    invoke-direct {p0}, Lti/map/RouteProxy;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public addLocation(Ljava/lang/Object;Ljava/util/ArrayList;Z)V
    .locals 8
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
    .line 94
    .local p2, "locationArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    instance-of v4, p1, Ljava/util/HashMap;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 95
    check-cast v3, Ljava/util/HashMap;

    .line 96
    .local v3, "point":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "latitude"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "latitude":Ljava/lang/Object;
    const-string v4, "longitude"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 98
    .local v2, "longitude":Ljava/lang/Object;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 100
    .local v1, "location":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz p3, :cond_1

    .line 101
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v0    # "latitude":Ljava/lang/Object;
    .end local v1    # "location":Lcom/google/android/gms/maps/model/LatLng;
    .end local v2    # "longitude":Ljava/lang/Object;
    .end local v3    # "point":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 103
    .restart local v0    # "latitude":Ljava/lang/Object;
    .restart local v1    # "location":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v2    # "longitude":Ljava/lang/Object;
    .restart local v3    # "point":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v4, p0, Lti/map/RouteProxy;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    goto :goto_0
.end method

.method public getOptions()Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lti/map/RouteProxy;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    return-object v0
.end method

.method public getRoute()Lcom/google/android/gms/maps/model/Polyline;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lti/map/RouteProxy;->route:Lcom/google/android/gms/maps/model/Polyline;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 71
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 51
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 52
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v1, p0, Lti/map/RouteProxy;->route:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lti/map/RouteProxy;->processPoints(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    .line 53
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 54
    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 59
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v3, p0, Lti/map/RouteProxy;->route:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/Polyline;->setColor(I)V

    .line 60
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 61
    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 66
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v3, p0, Lti/map/RouteProxy;->route:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/Polyline;->setWidth(F)V

    .line 67
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 68
    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x264
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lti/map/RouteProxy;->route:Lcom/google/android/gms/maps/model/Polyline;

    if-nez v0, :cond_1

    .line 158
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 146
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v0, "points"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {p0}, Lti/map/RouteProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x264

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 150
    :cond_2
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    invoke-virtual {p0}, Lti/map/RouteProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x265

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

    .line 154
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lti/map/RouteProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x266

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public processOptions()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    iput-object v0, p0, Lti/map/RouteProxy;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 79
    const-string v0, "points"

    invoke-virtual {p0, v0}, Lti/map/RouteProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "points"

    invoke-virtual {p0, v0}, Lti/map/RouteProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/map/RouteProxy;->processPoints(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    .line 83
    :cond_0
    const-string v0, "width"

    invoke-virtual {p0, v0}, Lti/map/RouteProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lti/map/RouteProxy;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    const-string v1, "width"

    invoke-virtual {p0, v1}, Lti/map/RouteProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 87
    :cond_1
    const-string v0, "color"

    invoke-virtual {p0, v0}, Lti/map/RouteProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v1, p0, Lti/map/RouteProxy;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    const-string v0, "color"

    invoke-virtual {p0, v0}, Lti/map/RouteProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 91
    :cond_2
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
    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, "locationArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    instance-of v4, p1, [Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 114
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "points":Ljava/lang/Object;
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    .line 115
    .local v3, "pointsArray":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 116
    aget-object v2, v3, v0

    .line 117
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v2, v1, p2}, Lti/map/RouteProxy;->addLocation(Ljava/lang/Object;Ljava/util/ArrayList;Z)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "pointsArray":[Ljava/lang/Object;
    .restart local p1    # "points":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lti/map/RouteProxy;->addLocation(Ljava/lang/Object;Ljava/util/ArrayList;Z)V

    .line 124
    .end local p1    # "points":Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method public setRoute(Lcom/google/android/gms/maps/model/Polyline;)V
    .locals 0
    .param p1, "r"    # Lcom/google/android/gms/maps/model/Polyline;

    .prologue
    .line 132
    iput-object p1, p0, Lti/map/RouteProxy;->route:Lcom/google/android/gms/maps/model/Polyline;

    .line 133
    return-void
.end method
