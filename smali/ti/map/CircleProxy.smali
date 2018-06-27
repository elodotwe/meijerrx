.class public Lti/map/CircleProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "CircleProxy.java"

# interfaces
.implements Lti/map/Shape/IShape;


# static fields
.field private static final MSG_FIRST_ID:I = 0xd4

.field private static final MSG_SET_CENTER:I = 0x2c8

.field private static final MSG_SET_FILL_COLOR:I = 0x2cc

.field private static final MSG_SET_OPACITY:I = 0x2cf

.field private static final MSG_SET_RADIUS:I = 0x2c9

.field private static final MSG_SET_STROKE_COLOR:I = 0x2cb

.field private static final MSG_SET_STROKE_WIDTH:I = 0x2ca

.field private static final MSG_SET_VISIBLE:I = 0x2ce

.field private static final MSG_SET_ZINDEX:I = 0x2cd


# instance fields
.field private circle:Lcom/google/android/gms/maps/model/Circle;

.field private options:Lcom/google/android/gms/maps/model/CircleOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 52
    invoke-direct {p0}, Lti/map/CircleProxy;-><init>()V

    .line 53
    return-void
.end method

.method private alphaColor(I)I
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 61
    const-string v0, "opacity"

    invoke-virtual {p0, v0}, Lti/map/CircleProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "opacity"

    invoke-virtual {p0, v0}, Lti/map/CircleProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 64
    :cond_0
    return p1
.end method

.method private parseLocation(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 8
    .param p1, "loc"    # Ljava/lang/Object;

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "location":Lcom/google/android/gms/maps/model/LatLng;
    instance-of v3, p1, Ljava/util/HashMap;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 234
    check-cast v1, Ljava/util/HashMap;

    .line 235
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

    .line 241
    .end local v1    # "point":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p1    # "loc":Ljava/lang/Object;
    .restart local v0    # "location":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    :goto_0
    return-object v0

    .line 236
    .restart local p1    # "loc":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, [Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 237
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "loc":Ljava/lang/Object;
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    .line 238
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

.method private toPx(Ljava/lang/Object;)I
    .locals 3
    .param p1, "size"    # Ljava/lang/Object;

    .prologue
    .line 56
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 57
    .local v0, "rootViewGroup":Landroid/view/ViewGroup;
    const/16 v1, 0x12

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public getCircle()Lcom/google/android/gms/maps/model/Circle;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lti/map/CircleProxy;->circle:Lcom/google/android/gms/maps/model/Circle;

    return-object v0
.end method

.method public getOptions()Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lti/map/CircleProxy;->options:Lcom/google/android/gms/maps/model/CircleOptions;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 130
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v2

    :goto_0
    return v2

    .line 72
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 73
    .restart local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lti/map/CircleProxy;->parseLocation(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 74
    .local v0, "location":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v2, p0, Lti/map/CircleProxy;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/Circle;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 75
    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v2, v3

    .line 76
    goto :goto_0

    .line 80
    .end local v0    # "location":Lcom/google/android/gms/maps/model/LatLng;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 81
    .restart local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v4, p0, Lti/map/CircleProxy;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    .line 82
    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v2, v3

    .line 83
    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 88
    .restart local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v4, p0, Lti/map/CircleProxy;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/maps/model/Circle;->setStrokeWidth(F)V

    .line 89
    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v2, v3

    .line 90
    goto :goto_0

    .line 94
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 95
    .restart local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v4, p0, Lti/map/CircleProxy;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lti/map/CircleProxy;->alphaColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/maps/model/Circle;->setStrokeColor(I)V

    .line 96
    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v2, v3

    .line 97
    goto :goto_0

    .line 101
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 102
    .restart local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v4, p0, Lti/map/CircleProxy;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lti/map/CircleProxy;->alphaColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/maps/model/Circle;->setFillColor(I)V

    .line 103
    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v2, v3

    .line 104
    goto :goto_0

    .line 108
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 109
    .restart local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v4, p0, Lti/map/CircleProxy;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/maps/model/Circle;->setZIndex(F)V

    .line 110
    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v2, v3

    .line 111
    goto/16 :goto_0

    .line 115
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 116
    .restart local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v4, p0, Lti/map/CircleProxy;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/maps/model/Circle;->setVisible(Z)V

    .line 117
    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v2, v3

    .line 118
    goto/16 :goto_0

    .line 122
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 123
    .restart local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v2, p0, Lti/map/CircleProxy;->circle:Lcom/google/android/gms/maps/model/Circle;

    iget-object v4, p0, Lti/map/CircleProxy;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Circle;->getFillColor()I

    move-result v4

    invoke-direct {p0, v4}, Lti/map/CircleProxy;->alphaColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/Circle;->setFillColor(I)V

    .line 124
    iget-object v2, p0, Lti/map/CircleProxy;->circle:Lcom/google/android/gms/maps/model/Circle;

    iget-object v4, p0, Lti/map/CircleProxy;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Circle;->getStrokeColor()I

    move-result v4

    invoke-direct {p0, v4}, Lti/map/CircleProxy;->alphaColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/Circle;->setStrokeColor(I)V

    .line 125
    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v2, v3

    .line 126
    goto/16 :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x2c8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 172
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lti/map/CircleProxy;->circle:Lcom/google/android/gms/maps/model/Circle;

    if-nez v0, :cond_1

    .line 214
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 177
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p0}, Lti/map/CircleProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2c8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    :cond_2
    const-string v0, "radius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    invoke-virtual {p0}, Lti/map/CircleProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2c9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    :cond_3
    const-string v0, "strokeWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    invoke-virtual {p0}, Lti/map/CircleProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2ca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p2}, Lti/map/CircleProxy;->toPx(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 191
    :cond_4
    const-string v0, "strokeColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    invoke-virtual {p0}, Lti/map/CircleProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2cb

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

    .line 197
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    const-string v0, "fillColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 198
    invoke-virtual {p0}, Lti/map/CircleProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2cc

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

    .line 203
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    const-string v0, "zIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    invoke-virtual {p0}, Lti/map/CircleProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2cd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 207
    :cond_7
    const-string v0, "visible"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 208
    invoke-virtual {p0}, Lti/map/CircleProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2ce

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 211
    :cond_8
    const-string v0, "opacity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lti/map/CircleProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2cf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public processOptions()V
    .locals 4

    .prologue
    .line 136
    new-instance v0, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    iput-object v0, p0, Lti/map/CircleProxy;->options:Lcom/google/android/gms/maps/model/CircleOptions;

    .line 138
    const-string v0, "center"

    invoke-virtual {p0, v0}, Lti/map/CircleProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lti/map/CircleProxy;->options:Lcom/google/android/gms/maps/model/CircleOptions;

    const-string v1, "center"

    invoke-virtual {p0, v1}, Lti/map/CircleProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/map/CircleProxy;->parseLocation(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 142
    :cond_0
    const-string v0, "radius"

    invoke-virtual {p0, v0}, Lti/map/CircleProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lti/map/CircleProxy;->options:Lcom/google/android/gms/maps/model/CircleOptions;

    const-string v1, "radius"

    invoke-virtual {p0, v1}, Lti/map/CircleProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 146
    :cond_1
    const-string v0, "strokeWidth"

    invoke-virtual {p0, v0}, Lti/map/CircleProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lti/map/CircleProxy;->options:Lcom/google/android/gms/maps/model/CircleOptions;

    const-string v1, "strokeWidth"

    invoke-virtual {p0, v1}, Lti/map/CircleProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/map/CircleProxy;->toPx(Ljava/lang/Object;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 150
    :cond_2
    const-string v0, "strokeColor"

    invoke-virtual {p0, v0}, Lti/map/CircleProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    iget-object v1, p0, Lti/map/CircleProxy;->options:Lcom/google/android/gms/maps/model/CircleOptions;

    const-string v0, "strokeColor"

    invoke-virtual {p0, v0}, Lti/map/CircleProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lti/map/CircleProxy;->alphaColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 155
    :cond_3
    const-string v0, "fillColor"

    invoke-virtual {p0, v0}, Lti/map/CircleProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    iget-object v1, p0, Lti/map/CircleProxy;->options:Lcom/google/android/gms/maps/model/CircleOptions;

    const-string v0, "fillColor"

    invoke-virtual {p0, v0}, Lti/map/CircleProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lti/map/CircleProxy;->alphaColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 160
    :cond_4
    const-string v0, "zIndex"

    invoke-virtual {p0, v0}, Lti/map/CircleProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    iget-object v0, p0, Lti/map/CircleProxy;->options:Lcom/google/android/gms/maps/model/CircleOptions;

    const-string v1, "zIndex"

    invoke-virtual {p0, v1}, Lti/map/CircleProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->zIndex(F)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 165
    :cond_5
    const-string v0, "visible"

    invoke-virtual {p0, v0}, Lti/map/CircleProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    iget-object v0, p0, Lti/map/CircleProxy;->options:Lcom/google/android/gms/maps/model/CircleOptions;

    const-string v1, "visible"

    invoke-virtual {p0, v1}, Lti/map/CircleProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->visible(Z)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 168
    :cond_6
    return-void
.end method

.method public setCircle(Lcom/google/android/gms/maps/model/Circle;)V
    .locals 0
    .param p1, "c"    # Lcom/google/android/gms/maps/model/Circle;

    .prologue
    .line 221
    iput-object p1, p0, Lti/map/CircleProxy;->circle:Lcom/google/android/gms/maps/model/Circle;

    .line 222
    return-void
.end method
