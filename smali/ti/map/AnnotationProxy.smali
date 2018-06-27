.class public Lti/map/AnnotationProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "AnnotationProxy.java"


# static fields
.field private static final MSG_FIRST_ID:I = 0xd4

.field private static final MSG_SET_DRAGGABLE:I = 0x202

.field private static final MSG_SET_LAT:I = 0x201

.field private static final MSG_SET_LON:I = 0x200

.field private static final MSG_UPDATE_INFO_WINDOW:I = 0x203

.field private static final TAG:Ljava/lang/String; = "AnnotationProxy"

.field private static final defaultIconImageHeight:Ljava/lang/String; = "40dip"


# instance fields
.field private annoTitle:Ljava/lang/String;

.field private iconImageHeight:I

.field private infoWindow:Lti/map/TiMapInfoWindow;

.field private marker:Lti/map/TiMarker;

.field private markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lti/map/AnnotationProxy;->infoWindow:Lti/map/TiMapInfoWindow;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lti/map/AnnotationProxy;->iconImageHeight:I

    .line 73
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iput-object v0, p0, Lti/map/AnnotationProxy;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lti/map/AnnotationProxy;->annoTitle:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lti/map/AnnotationProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "showInfoWindow"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 80
    invoke-direct {p0}, Lti/map/AnnotationProxy;-><init>()V

    .line 81
    return-void
.end method

.method private getOrCreateMapInfoWindow()Lti/map/TiMapInfoWindow;
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lti/map/AnnotationProxy;->infoWindow:Lti/map/TiMapInfoWindow;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lti/map/TiMapInfoWindow;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lti/map/TiMapInfoWindow;-><init>(Landroid/content/Context;Lti/map/AnnotationProxy;)V

    iput-object v0, p0, Lti/map/AnnotationProxy;->infoWindow:Lti/map/TiMapInfoWindow;

    .line 357
    :cond_0
    iget-object v0, p0, Lti/map/AnnotationProxy;->infoWindow:Lti/map/TiMapInfoWindow;

    return-object v0
.end method

.method private handleCustomView(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 205
    instance-of v2, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 206
    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->toImage()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v1

    .line 207
    .local v1, "imageBlob":Lorg/appcelerator/titanium/TiBlob;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiBlob;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    .local v0, "image":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 209
    iget-object v2, p0, Lti/map/AnnotationProxy;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 210
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lti/map/AnnotationProxy;->setIconImageHeight(I)V

    .line 217
    .end local v0    # "image":Landroid/graphics/Bitmap;
    .end local v1    # "imageBlob":Lorg/appcelerator/titanium/TiBlob;
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v2, "AnnotationProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get the image from the custom view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lti/map/AnnotationProxy;->setIconImageHeight(I)V

    goto :goto_0
.end method

.method private handleImage(Ljava/lang/Object;)V
    .locals 5
    .param p1, "image"    # Ljava/lang/Object;

    .prologue
    .line 222
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 223
    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v1

    .line 224
    .local v1, "imageref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 225
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 226
    iget-object v2, p0, Lti/map/AnnotationProxy;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lti/map/AnnotationProxy;->setIconImageHeight(I)V

    .line 233
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "imageref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    :goto_0
    return-void

    .line 231
    :cond_0
    const-string v2, "AnnotationProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get the image from the path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lti/map/AnnotationProxy;->setIconImageHeight(I)V

    goto :goto_0
.end method

.method private setIconImageHeight(I)V
    .locals 4
    .param p1, "h"    # I

    .prologue
    .line 279
    if-ltz p1, :cond_0

    .line 280
    iput p1, p0, Lti/map/AnnotationProxy;->iconImageHeight:I

    .line 287
    :goto_0
    return-void

    .line 282
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/TiDimension;

    const-string v2, "40dip"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 284
    .local v0, "dimension":Lorg/appcelerator/titanium/TiDimension;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 285
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lti/map/AnnotationProxy;->iconImageHeight:I

    goto :goto_0
.end method

.method private updateInfoWindow()V
    .locals 3

    .prologue
    .line 362
    iget-object v1, p0, Lti/map/AnnotationProxy;->marker:Lti/map/TiMarker;

    if-nez v1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 366
    iget-object v1, p0, Lti/map/AnnotationProxy;->marker:Lti/map/TiMarker;

    invoke-virtual {v1}, Lti/map/TiMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 367
    .local v0, "m":Lcom/google/android/gms/maps/model/Marker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    goto :goto_0

    .line 371
    .end local v0    # "m":Lcom/google/android/gms/maps/model/Marker;
    :cond_2
    invoke-virtual {p0}, Lti/map/AnnotationProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x203

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public getIconImageHeight()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lti/map/AnnotationProxy;->iconImageHeight:I

    return v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 87
    .local v0, "table":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "subtitle"

    const-string v2, "subtitleid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "title"

    const-string v2, "titleid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-object v0
.end method

.method public getMapInfoWindow()Lti/map/TiMapInfoWindow;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lti/map/AnnotationProxy;->infoWindow:Lti/map/TiMapInfoWindow;

    return-object v0
.end method

.method public getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lti/map/AnnotationProxy;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    return-object v0
.end method

.method public getTiMarker()Lti/map/TiMarker;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lti/map/AnnotationProxy;->marker:Lti/map/TiMarker;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lti/map/AnnotationProxy;->annoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 129
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 103
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 104
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    const-string v1, "latitude"

    invoke-virtual {p0, v1}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p0, v4, v5, v6, v7}, Lti/map/AnnotationProxy;->setPosition(DD)V

    .line 105
    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 106
    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 111
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-string v1, "longitude"

    invoke-virtual {p0, v1}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-virtual {p0, v4, v5, v6, v7}, Lti/map/AnnotationProxy;->setPosition(DD)V

    .line 112
    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 113
    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 118
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v1, p0, Lti/map/AnnotationProxy;->marker:Lti/map/TiMarker;

    invoke-virtual {v1}, Lti/map/TiMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    .line 119
    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 120
    goto :goto_0

    .line 124
    :pswitch_3
    invoke-direct {p0}, Lti/map/AnnotationProxy;->updateInfoWindow()V

    move v1, v2

    .line 125
    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 297
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

.method public hideInfo()V
    .locals 2

    .prologue
    .line 263
    iget-object v1, p0, Lti/map/AnnotationProxy;->marker:Lti/map/TiMarker;

    if-nez v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v1, p0, Lti/map/AnnotationProxy;->marker:Lti/map/TiMarker;

    invoke-virtual {v1}, Lti/map/TiMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 267
    .local v0, "m":Lcom/google/android/gms/maps/model/Marker;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    goto :goto_0
.end method

.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 303
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    iget-object v3, p0, Lti/map/AnnotationProxy;->marker:Lti/map/TiMarker;

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    const-string v3, "longitude"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 310
    invoke-virtual {p0}, Lti/map/AnnotationProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 311
    :cond_2
    const-string v3, "latitude"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 312
    invoke-virtual {p0}, Lti/map/AnnotationProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x201

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 313
    :cond_3
    const-string v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 314
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "title":Ljava/lang/String;
    iput-object v2, p0, Lti/map/AnnotationProxy;->annoTitle:Ljava/lang/String;

    .line 316
    invoke-direct {p0}, Lti/map/AnnotationProxy;->getOrCreateMapInfoWindow()Lti/map/TiMapInfoWindow;

    move-result-object v3

    invoke-virtual {v3, v2}, Lti/map/TiMapInfoWindow;->setTitle(Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Lti/map/AnnotationProxy;->updateInfoWindow()V

    goto :goto_0

    .line 318
    .end local v2    # "title":Ljava/lang/String;
    :cond_4
    const-string v3, "subtitle"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 319
    invoke-direct {p0}, Lti/map/AnnotationProxy;->getOrCreateMapInfoWindow()Lti/map/TiMapInfoWindow;

    move-result-object v3

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lti/map/TiMapInfoWindow;->setSubtitle(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lti/map/AnnotationProxy;->updateInfoWindow()V

    goto :goto_0

    .line 321
    :cond_5
    const-string v3, "leftButton"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 322
    invoke-direct {p0}, Lti/map/AnnotationProxy;->getOrCreateMapInfoWindow()Lti/map/TiMapInfoWindow;

    move-result-object v3

    invoke-virtual {v3, p2, v4}, Lti/map/TiMapInfoWindow;->setLeftOrRightPane(Ljava/lang/Object;I)V

    .line 323
    if-nez p2, :cond_6

    .line 324
    const-string v3, "leftView"

    invoke-virtual {p0, v3}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 325
    .local v0, "leftView":Ljava/lang/Object;
    if-eqz v0, :cond_6

    .line 326
    invoke-direct {p0}, Lti/map/AnnotationProxy;->getOrCreateMapInfoWindow()Lti/map/TiMapInfoWindow;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Lti/map/TiMapInfoWindow;->setLeftOrRightPane(Ljava/lang/Object;I)V

    .line 329
    .end local v0    # "leftView":Ljava/lang/Object;
    :cond_6
    invoke-direct {p0}, Lti/map/AnnotationProxy;->updateInfoWindow()V

    goto/16 :goto_0

    .line 330
    :cond_7
    const-string v3, "leftView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "leftButton"

    invoke-virtual {p0, v3}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    .line 331
    invoke-direct {p0}, Lti/map/AnnotationProxy;->getOrCreateMapInfoWindow()Lti/map/TiMapInfoWindow;

    move-result-object v3

    invoke-virtual {v3, p2, v4}, Lti/map/TiMapInfoWindow;->setLeftOrRightPane(Ljava/lang/Object;I)V

    .line 332
    invoke-direct {p0}, Lti/map/AnnotationProxy;->updateInfoWindow()V

    goto/16 :goto_0

    .line 333
    :cond_8
    const-string v3, "rightButton"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 334
    invoke-direct {p0}, Lti/map/AnnotationProxy;->getOrCreateMapInfoWindow()Lti/map/TiMapInfoWindow;

    move-result-object v3

    invoke-virtual {v3, p2, v5}, Lti/map/TiMapInfoWindow;->setLeftOrRightPane(Ljava/lang/Object;I)V

    .line 335
    if-nez p2, :cond_9

    .line 336
    const-string v3, "rightView"

    invoke-virtual {p0, v3}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 337
    .local v1, "rightView":Ljava/lang/Object;
    if-eqz v1, :cond_9

    .line 338
    invoke-direct {p0}, Lti/map/AnnotationProxy;->getOrCreateMapInfoWindow()Lti/map/TiMapInfoWindow;

    move-result-object v3

    invoke-virtual {v3, v1, v4}, Lti/map/TiMapInfoWindow;->setLeftOrRightPane(Ljava/lang/Object;I)V

    .line 341
    .end local v1    # "rightView":Ljava/lang/Object;
    :cond_9
    invoke-direct {p0}, Lti/map/AnnotationProxy;->updateInfoWindow()V

    goto/16 :goto_0

    .line 342
    :cond_a
    const-string v3, "rightView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "rightButton"

    invoke-virtual {p0, v3}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_b

    .line 343
    invoke-direct {p0}, Lti/map/AnnotationProxy;->getOrCreateMapInfoWindow()Lti/map/TiMapInfoWindow;

    move-result-object v3

    invoke-virtual {v3, p2, v5}, Lti/map/TiMapInfoWindow;->setLeftOrRightPane(Ljava/lang/Object;I)V

    .line 344
    invoke-direct {p0}, Lti/map/AnnotationProxy;->updateInfoWindow()V

    goto/16 :goto_0

    .line 345
    :cond_b
    const-string v3, "draggable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    invoke-virtual {p0}, Lti/map/AnnotationProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x202

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public processOptions()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 142
    const-wide/16 v4, 0x0

    .line 143
    .local v4, "longitude":D
    const-wide/16 v0, 0x0

    .line 145
    .local v0, "latitude":D
    const-string v10, "longitude"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 146
    const-string v10, "longitude"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v4

    .line 148
    :cond_0
    const-string v10, "latitude"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 149
    const-string v10, "latitude"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 151
    :cond_1
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v6, v0, v1, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 152
    .local v6, "position":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v10, p0, Lti/map/AnnotationProxy;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v10, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 154
    const-string v10, "leftButton"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "leftView"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "rightButton"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "rightView"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "title"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "subtitle"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 157
    :cond_2
    invoke-direct {p0}, Lti/map/AnnotationProxy;->getOrCreateMapInfoWindow()Lti/map/TiMapInfoWindow;

    .line 158
    const-string v10, "leftButton"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 159
    .local v2, "leftButton":Ljava/lang/Object;
    const-string v10, "leftView"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 160
    .local v3, "leftView":Ljava/lang/Object;
    const-string v10, "rightButton"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 161
    .local v7, "rightButton":Ljava/lang/Object;
    const-string v10, "rightView"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 162
    .local v8, "rightView":Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 163
    iget-object v10, p0, Lti/map/AnnotationProxy;->infoWindow:Lti/map/TiMapInfoWindow;

    invoke-virtual {v10, v2, v11}, Lti/map/TiMapInfoWindow;->setLeftOrRightPane(Ljava/lang/Object;I)V

    .line 167
    :goto_0
    if-eqz v7, :cond_6

    .line 168
    iget-object v10, p0, Lti/map/AnnotationProxy;->infoWindow:Lti/map/TiMapInfoWindow;

    invoke-virtual {v10, v7, v13}, Lti/map/TiMapInfoWindow;->setLeftOrRightPane(Ljava/lang/Object;I)V

    .line 172
    :goto_1
    const-string v10, "title"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 173
    const-string v10, "title"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 174
    .local v9, "title":Ljava/lang/String;
    iput-object v9, p0, Lti/map/AnnotationProxy;->annoTitle:Ljava/lang/String;

    .line 175
    iget-object v10, p0, Lti/map/AnnotationProxy;->infoWindow:Lti/map/TiMapInfoWindow;

    invoke-virtual {v10, v9}, Lti/map/TiMapInfoWindow;->setTitle(Ljava/lang/String;)V

    .line 179
    .end local v9    # "title":Ljava/lang/String;
    :goto_2
    const-string v10, "subtitle"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 180
    iget-object v10, p0, Lti/map/AnnotationProxy;->infoWindow:Lti/map/TiMapInfoWindow;

    const-string v11, "subtitle"

    invoke-virtual {p0, v11}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lti/map/TiMapInfoWindow;->setSubtitle(Ljava/lang/String;)V

    .line 186
    .end local v2    # "leftButton":Ljava/lang/Object;
    .end local v3    # "leftView":Ljava/lang/Object;
    .end local v7    # "rightButton":Ljava/lang/Object;
    .end local v8    # "rightView":Ljava/lang/Object;
    :cond_3
    :goto_3
    const-string v10, "draggable"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 187
    iget-object v10, p0, Lti/map/AnnotationProxy;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    const-string v11, "draggable"

    invoke-virtual {p0, v11}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 191
    :cond_4
    const-string v10, "customView"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 192
    const-string v10, "customView"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, v10}, Lti/map/AnnotationProxy;->handleCustomView(Ljava/lang/Object;)V

    .line 201
    :goto_4
    return-void

    .line 165
    .restart local v2    # "leftButton":Ljava/lang/Object;
    .restart local v3    # "leftView":Ljava/lang/Object;
    .restart local v7    # "rightButton":Ljava/lang/Object;
    .restart local v8    # "rightView":Ljava/lang/Object;
    :cond_5
    iget-object v10, p0, Lti/map/AnnotationProxy;->infoWindow:Lti/map/TiMapInfoWindow;

    invoke-virtual {v10, v3, v11}, Lti/map/TiMapInfoWindow;->setLeftOrRightPane(Ljava/lang/Object;I)V

    goto :goto_0

    .line 170
    :cond_6
    iget-object v10, p0, Lti/map/AnnotationProxy;->infoWindow:Lti/map/TiMapInfoWindow;

    invoke-virtual {v10, v8, v13}, Lti/map/TiMapInfoWindow;->setLeftOrRightPane(Ljava/lang/Object;I)V

    goto :goto_1

    .line 177
    :cond_7
    iget-object v10, p0, Lti/map/AnnotationProxy;->infoWindow:Lti/map/TiMapInfoWindow;

    invoke-virtual {v10, v14}, Lti/map/TiMapInfoWindow;->setTitle(Ljava/lang/String;)V

    goto :goto_2

    .line 182
    :cond_8
    iget-object v10, p0, Lti/map/AnnotationProxy;->infoWindow:Lti/map/TiMapInfoWindow;

    invoke-virtual {v10, v14}, Lti/map/TiMapInfoWindow;->setSubtitle(Ljava/lang/String;)V

    goto :goto_3

    .line 193
    .end local v2    # "leftButton":Ljava/lang/Object;
    .end local v3    # "leftView":Ljava/lang/Object;
    .end local v7    # "rightButton":Ljava/lang/Object;
    .end local v8    # "rightView":Ljava/lang/Object;
    :cond_9
    const-string v10, "image"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 194
    const-string v10, "image"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, v10}, Lti/map/AnnotationProxy;->handleImage(Ljava/lang/Object;)V

    goto :goto_4

    .line 195
    :cond_a
    const-string v10, "pincolor"

    invoke-virtual {p0, v10}, Lti/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 196
    iget-object v10, p0, Lti/map/AnnotationProxy;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    const-string v11, "pincolor"

    invoke-virtual {p0, v11}, Lti/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 197
    invoke-direct {p0, v12}, Lti/map/AnnotationProxy;->setIconImageHeight(I)V

    goto :goto_4

    .line 199
    :cond_b
    invoke-direct {p0, v12}, Lti/map/AnnotationProxy;->setIconImageHeight(I)V

    goto :goto_4
.end method

.method public setPosition(DD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 136
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 137
    .local v0, "position":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lti/map/AnnotationProxy;->marker:Lti/map/TiMarker;

    invoke-virtual {v1}, Lti/map/TiMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 138
    return-void
.end method

.method public setTiMarker(Lti/map/TiMarker;)V
    .locals 0
    .param p1, "m"    # Lti/map/TiMarker;

    .prologue
    .line 242
    iput-object p1, p0, Lti/map/AnnotationProxy;->marker:Lti/map/TiMarker;

    .line 243
    return-void
.end method

.method public showInfo()V
    .locals 2

    .prologue
    .line 252
    iget-object v1, p0, Lti/map/AnnotationProxy;->marker:Lti/map/TiMarker;

    if-nez v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Lti/map/AnnotationProxy;->marker:Lti/map/TiMarker;

    invoke-virtual {v1}, Lti/map/TiMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 256
    .local v0, "m":Lcom/google/android/gms/maps/model/Marker;
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    goto :goto_0
.end method
