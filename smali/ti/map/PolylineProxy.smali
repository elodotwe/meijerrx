.class public Lti/map/PolylineProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "PolylineProxy.java"

# interfaces
.implements Lti/map/Shape/IShape;


# static fields
.field private static final MSG_FIRST_ID:I = 0xd4

.field private static final MSG_SET_POINTS:I = 0x2c7

.field private static final MSG_SET_STROKE_COLOR:I = 0x2c9

.field private static final MSG_SET_STROKE_WIDTH:I = 0x2ca

.field private static final MSG_SET_ZINDEX:I = 0x2cb

.field public static final PROPERTY_STROKE_COLOR2:Ljava/lang/String; = "color"

.field public static final PROPERTY_STROKE_WIDTH2:Ljava/lang/String; = "width"

.field public static final PROPERTY_ZINDEX:Ljava/lang/String; = "zIndex"


# instance fields
.field private options:Lcom/google/android/gms/maps/model/PolylineOptions;

.field private polyline:Lcom/google/android/gms/maps/model/Polyline;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 57
    invoke-direct {p0}, Lti/map/PolylineProxy;-><init>()V

    .line 58
    return-void
.end method

.method private parseLocation(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 8
    .param p1, "loc"    # Ljava/lang/Object;

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "location":Lcom/google/android/gms/maps/model/LatLng;
    instance-of v3, p1, Ljava/util/HashMap;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 210
    check-cast v1, Ljava/util/HashMap;

    .line 211
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

    .line 218
    .end local v1    # "point":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p1    # "loc":Ljava/lang/Object;
    .restart local v0    # "location":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    :goto_0
    return-object v0

    .line 214
    .restart local p1    # "loc":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, [Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 215
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "loc":Ljava/lang/Object;
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    .line 216
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
    .line 130
    .local p2, "locationArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-direct {p0, p1}, Lti/map/PolylineProxy;->parseLocation(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 131
    .local v0, "location":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz p3, :cond_0

    .line 132
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Lti/map/PolylineProxy;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    goto :goto_0
.end method

.method public getOptions()Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lti/map/PolylineProxy;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    return-object v0
.end method

.method public getPolyline()Lcom/google/android/gms/maps/model/Polyline;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lti/map/PolylineProxy;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 91
    :pswitch_0
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 67
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 68
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v1, p0, Lti/map/PolylineProxy;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lti/map/PolylineProxy;->processPoints(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    .line 69
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 70
    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 74
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v3, p0, Lti/map/PolylineProxy;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/Polyline;->setWidth(F)V

    .line 75
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 76
    goto :goto_0

    .line 79
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 80
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v3, p0, Lti/map/PolylineProxy;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/Polyline;->setColor(I)V

    .line 81
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 82
    goto :goto_0

    .line 85
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 86
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v3, p0, Lti/map/PolylineProxy;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/Polyline;->setZIndex(F)V

    .line 87
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 88
    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x2c7
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/16 v2, 0x2ca

    const/16 v1, 0x2c9

    .line 172
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lti/map/PolylineProxy;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-nez v0, :cond_1

    .line 202
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v0, "points"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {p0}, Lti/map/PolylineProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2c7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 182
    :cond_2
    const-string v0, "strokeWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {p0}, Lti/map/PolylineProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 186
    :cond_3
    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    invoke-virtual {p0}, Lti/map/PolylineProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 190
    :cond_4
    const-string v0, "strokeColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 191
    invoke-virtual {p0}, Lti/map/PolylineProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

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

    .line 194
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 195
    invoke-virtual {p0}, Lti/map/PolylineProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

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

    .line 198
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    const-string v0, "zIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lti/map/PolylineProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2cb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public processOptions()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    iput-object v0, p0, Lti/map/PolylineProxy;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 103
    const-string v0, "points"

    invoke-virtual {p0, v0}, Lti/map/PolylineProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "points"

    invoke-virtual {p0, v0}, Lti/map/PolylineProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/map/PolylineProxy;->processPoints(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    .line 107
    :cond_0
    const-string v0, "strokeColor"

    invoke-virtual {p0, v0}, Lti/map/PolylineProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Lti/map/PolylineProxy;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    const-string v0, "strokeColor"

    invoke-virtual {p0, v0}, Lti/map/PolylineProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 111
    :cond_1
    const-string v0, "color"

    invoke-virtual {p0, v0}, Lti/map/PolylineProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v1, p0, Lti/map/PolylineProxy;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    const-string v0, "color"

    invoke-virtual {p0, v0}, Lti/map/PolylineProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 115
    :cond_2
    const-string v0, "strokeWidth"

    invoke-virtual {p0, v0}, Lti/map/PolylineProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Lti/map/PolylineProxy;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    const-string v1, "strokeWidth"

    invoke-virtual {p0, v1}, Lti/map/PolylineProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 119
    :cond_3
    const-string v0, "width"

    invoke-virtual {p0, v0}, Lti/map/PolylineProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lti/map/PolylineProxy;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    const-string v1, "width"

    invoke-virtual {p0, v1}, Lti/map/PolylineProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 123
    :cond_4
    const-string v0, "zIndex"

    invoke-virtual {p0, v0}, Lti/map/PolylineProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    iget-object v0, p0, Lti/map/PolylineProxy;->options:Lcom/google/android/gms/maps/model/PolylineOptions;

    const-string v1, "zIndex"

    invoke-virtual {p0, v1}, Lti/map/PolylineProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 127
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
    invoke-virtual {p0, v2, v1, p2}, Lti/map/PolylineProxy;->addLocation(Ljava/lang/Object;Ljava/util/ArrayList;Z)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "pointsArray":[Ljava/lang/Object;
    .restart local p1    # "points":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lti/map/PolylineProxy;->addLocation(Ljava/lang/Object;Ljava/util/ArrayList;Z)V

    .line 154
    .end local p1    # "points":Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method public setPolyline(Lcom/google/android/gms/maps/model/Polyline;)V
    .locals 0
    .param p1, "r"    # Lcom/google/android/gms/maps/model/Polyline;

    .prologue
    .line 162
    iput-object p1, p0, Lti/map/PolylineProxy;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 163
    return-void
.end method
