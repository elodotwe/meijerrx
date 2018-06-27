.class public Lti/map/TiStreetViewPanorama;
.super Lorg/appcelerator/titanium/view/TiUIFragment;
.source "TiStreetViewPanorama.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;


# instance fields
.field private panorama:Lcom/google/android/gms/maps/StreetViewPanorama;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiUIFragment;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    .line 26
    return-void
.end method

.method private setPosition(Ljava/util/HashMap;)V
    .locals 6
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
    .line 37
    .local p1, "position":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/16 v4, 0x0

    .line 38
    .local v4, "longitude":D
    const-wide/16 v0, 0x0

    .line 39
    .local v0, "latitude":D
    const-string v3, "longitude"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "longitude"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 40
    const-string v3, "longitude"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v4

    .line 42
    :cond_0
    const-string v3, "latitude"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "latitude"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 43
    const-string v3, "latitude"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 46
    :cond_1
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 47
    .local v2, "location":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v3, p0, Lti/map/TiStreetViewPanorama;->panorama:Lcom/google/android/gms/maps/StreetViewPanorama;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/StreetViewPanorama;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected createFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment;->newInstance()Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment;

    move-result-object v0

    .line 32
    .local v0, "streetView":Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment;
    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment;->getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V

    .line 33
    return-object v0
.end method

.method public onStreetViewPanoramaReady(Lcom/google/android/gms/maps/StreetViewPanorama;)V
    .locals 1
    .param p1, "panorama"    # Lcom/google/android/gms/maps/StreetViewPanorama;

    .prologue
    .line 93
    iput-object p1, p0, Lti/map/TiStreetViewPanorama;->panorama:Lcom/google/android/gms/maps/StreetViewPanorama;

    .line 94
    iget-object v0, p0, Lti/map/TiStreetViewPanorama;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/map/TiStreetViewPanorama;->processStreetProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 95
    return-void
.end method

.method protected onViewCreated()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public processStreetProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v2, 0x1

    .line 51
    const-string v0, "position"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "position"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/map/TiStreetViewPanorama;->setPosition(Ljava/util/HashMap;)V

    .line 54
    :cond_0
    const-string v0, "panning"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lti/map/TiStreetViewPanorama;->panorama:Lcom/google/android/gms/maps/StreetViewPanorama;

    const-string v1, "panning"

    invoke-static {p1, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/StreetViewPanorama;->setPanningGesturesEnabled(Z)V

    .line 57
    :cond_1
    const-string v0, "zoom"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lti/map/TiStreetViewPanorama;->panorama:Lcom/google/android/gms/maps/StreetViewPanorama;

    const-string v1, "zoom"

    invoke-static {p1, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/StreetViewPanorama;->setZoomGesturesEnabled(Z)V

    .line 60
    :cond_2
    const-string v0, "streetNames"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lti/map/TiStreetViewPanorama;->panorama:Lcom/google/android/gms/maps/StreetViewPanorama;

    const-string v1, "streetNames"

    invoke-static {p1, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/StreetViewPanorama;->setStreetNamesEnabled(Z)V

    .line 63
    :cond_3
    const-string v0, "userNavigation"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    iget-object v0, p0, Lti/map/TiStreetViewPanorama;->panorama:Lcom/google/android/gms/maps/StreetViewPanorama;

    const-string v1, "userNavigation"

    invoke-static {p1, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/StreetViewPanorama;->setUserNavigationEnabled(Z)V

    .line 66
    :cond_4
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v1, 0x1

    .line 71
    iget-object v0, p0, Lti/map/TiStreetViewPanorama;->panorama:Lcom/google/android/gms/maps/StreetViewPanorama;

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 88
    .end local p3    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v0, "position"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    check-cast p3, Ljava/util/HashMap;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p3}, Lti/map/TiStreetViewPanorama;->setPosition(Ljava/util/HashMap;)V

    goto :goto_0

    .line 77
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_2
    const-string v0, "panning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lti/map/TiStreetViewPanorama;->panorama:Lcom/google/android/gms/maps/StreetViewPanorama;

    invoke-static {p3, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/StreetViewPanorama;->setPanningGesturesEnabled(Z)V

    goto :goto_0

    .line 79
    :cond_3
    const-string v0, "zoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    iget-object v0, p0, Lti/map/TiStreetViewPanorama;->panorama:Lcom/google/android/gms/maps/StreetViewPanorama;

    invoke-static {p3, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/StreetViewPanorama;->setZoomGesturesEnabled(Z)V

    goto :goto_0

    .line 81
    :cond_4
    const-string v0, "streetNames"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p0, Lti/map/TiStreetViewPanorama;->panorama:Lcom/google/android/gms/maps/StreetViewPanorama;

    invoke-static {p3, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/StreetViewPanorama;->setStreetNamesEnabled(Z)V

    goto :goto_0

    .line 83
    :cond_5
    const-string v0, "userNavigation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 84
    iget-object v0, p0, Lti/map/TiStreetViewPanorama;->panorama:Lcom/google/android/gms/maps/StreetViewPanorama;

    invoke-static {p3, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/StreetViewPanorama;->setUserNavigationEnabled(Z)V

    goto :goto_0

    .line 86
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIFragment;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method
