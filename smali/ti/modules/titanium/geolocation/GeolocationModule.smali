.class public Lti/modules/titanium/geolocation/GeolocationModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "GeolocationModule.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;


# static fields
.field public static final ACCURACY_BEST:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCURACY_HIGH:I = 0x1

.field public static final ACCURACY_HUNDRED_METERS:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCURACY_KILOMETER:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCURACY_LOW:I = 0x0

.field public static final ACCURACY_NEAREST_TEN_METERS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCURACY_THREE_KILOMETERS:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final MSG_ENABLE_LOCATION_PROVIDERS:I = 0x137

.field protected static final MSG_LAST_ID:I = 0x137

.field public static final PROVIDER_GPS:Ljava/lang/String; = "gps"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROVIDER_NETWORK:Ljava/lang/String; = "network"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROVIDER_PASSIVE:Ljava/lang/String; = "passive"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SIMPLE_LOCATION_GPS_DISTANCE:D = 3.0

.field private static final SIMPLE_LOCATION_GPS_MIN_AGE_RULE:D = 30000.0

.field private static final SIMPLE_LOCATION_GPS_TIME:D = 3000.0

.field private static final SIMPLE_LOCATION_NETWORK_DISTANCE:D = 10.0

.field private static final SIMPLE_LOCATION_NETWORK_DISTANCE_RULE:D = 200.0

.field private static final SIMPLE_LOCATION_NETWORK_MIN_AGE_RULE:D = 60000.0

.field private static final SIMPLE_LOCATION_NETWORK_TIME:D = 10000.0

.field private static final SIMPLE_LOCATION_PASSIVE_DISTANCE:D = 0.0

.field private static final SIMPLE_LOCATION_PASSIVE_TIME:D = 0.0

.field private static final TAG:Ljava/lang/String; = "GeolocationModule"


# instance fields
.field public androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

.field private compassListenersRegistered:Z

.field private currentLocation:Landroid/location/Location;

.field private lastLocation:Landroid/location/Location;

.field private legacyLocationAccuracyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private legacyLocationAccuracyProperty:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private legacyLocationFrequency:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private legacyLocationPreferredProvider:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public legacyLocationProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lti/modules/titanium/geolocation/android/LocationProviderProxy;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public legacyModeActive:Z

.field public numLocationListeners:I

.field private sentAnalytics:Z

.field private simpleLocationAccuracyProperty:I

.field private simpleLocationGpsRule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;

.field private simpleLocationNetworkRule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;

.field public simpleLocationProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lti/modules/titanium/geolocation/android/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private simpleLocationRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/geolocation/android/LocationRuleProxy;",
            ">;"
        }
    .end annotation
.end field

.field private tiCompass:Lti/modules/titanium/geolocation/TiCompass;

.field public tiLocation:Lti/modules/titanium/geolocation/TiLocation;


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    .line 185
    const-string v0, "geolocation"

    invoke-direct {p0, v0}, Lorg/appcelerator/kroll/KrollModule;-><init>(Ljava/lang/String;)V

    .line 143
    iput v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    .line 164
    iput-boolean v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassListenersRegistered:Z

    .line 165
    iput-boolean v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->sentAnalytics:Z

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationRules:Ljava/util/ArrayList;

    .line 169
    iput v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationAccuracyProperty:I

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyMap:Ljava/util/HashMap;

    .line 175
    iput v5, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyProperty:I

    .line 176
    const-wide v0, 0x40b3880000000000L    # 5000.0

    iput-wide v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationFrequency:D

    .line 177
    const-string v0, "network"

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationPreferredProvider:Ljava/lang/String;

    .line 187
    new-instance v0, Lti/modules/titanium/geolocation/TiLocation;

    invoke-direct {v0}, Lti/modules/titanium/geolocation/TiLocation;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    .line 188
    new-instance v0, Lti/modules/titanium/geolocation/TiCompass;

    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/geolocation/TiCompass;-><init>(Lti/modules/titanium/geolocation/GeolocationModule;Lti/modules/titanium/geolocation/TiLocation;)V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiCompass:Lti/modules/titanium/geolocation/TiCompass;

    .line 191
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide v4, 0x40a7700000000000L    # 3000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v7, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    const-string v8, "network"

    new-instance v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    const-string v1, "network"

    iget-wide v4, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationFrequency:D

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;-><init>(Ljava/lang/String;DDLti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v7, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    const-string v8, "network"

    new-instance v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    const-string v1, "network"

    const-wide v4, 0x40c3880000000000L    # 10000.0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;-><init>(Ljava/lang/String;DDLti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v7, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    const-string v8, "passive"

    new-instance v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    const-string v1, "passive"

    move-wide v2, v10

    move-wide v4, v10

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;-><init>(Ljava/lang/String;DDLti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v0, Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    const-string v1, "gps"

    const-wide v2, 0x40dd4c0000000000L    # 30000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2, v9}, Lti/modules/titanium/geolocation/android/LocationRuleProxy;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationGpsRule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    .line 204
    new-instance v0, Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    const-string v1, "network"

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v9}, Lti/modules/titanium/geolocation/android/LocationRuleProxy;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationNetworkRule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    .line 205
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 214
    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;-><init>()V

    .line 215
    return-void
.end method

.method private buildLocationErrorEvent(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 943
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/appcelerator/kroll/KrollDict;-><init>(I)V

    .line 944
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 945
    return-object v0
.end method

.method private buildLocationEvent(Landroid/location/Location;Landroid/location/LocationProvider;)Lorg/appcelerator/kroll/KrollDict;
    .locals 7
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "locationProvider"    # Landroid/location/LocationProvider;

    .prologue
    const/4 v6, 0x0

    .line 905
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 906
    .local v0, "coordinates":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const-string v3, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    const-string v3, "altitude"

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    const-string v3, "accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    const-string v3, "altitudeAccuracy"

    invoke-virtual {v0, v3, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    const-string v3, "heading"

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    const-string v3, "speed"

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const-string v3, "timestamp"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 916
    .local v1, "event":Lorg/appcelerator/kroll/KrollDict;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v6}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 917
    const-string v3, "coords"

    invoke-virtual {v1, v3, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    if-eqz p2, :cond_0

    .line 920
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 921
    .local v2, "provider":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "name"

    invoke-virtual {p2}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    const-string v3, "accuracy"

    invoke-virtual {p2}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    const-string v3, "power"

    invoke-virtual {p2}, Landroid/location/LocationProvider;->getPowerRequirement()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    const-string v3, "provider"

    invoke-virtual {v1, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    .end local v2    # "provider":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-object v1
.end method

.method private createGeocodeResponseHandler(Lorg/appcelerator/kroll/KrollFunction;)Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;
    .locals 2
    .param p1, "callback"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 835
    move-object v0, p0

    .line 837
    .local v0, "geolocationModule":Lti/modules/titanium/geolocation/GeolocationModule;
    new-instance v1, Lti/modules/titanium/geolocation/GeolocationModule$1;

    invoke-direct {v1, p0, v0, p1}, Lti/modules/titanium/geolocation/GeolocationModule$1;-><init>(Lti/modules/titanium/geolocation/GeolocationModule;Lti/modules/titanium/geolocation/GeolocationModule;Lorg/appcelerator/kroll/KrollFunction;)V

    return-object v1
.end method

.method private disableLocationProviders()V
    .locals 3

    .prologue
    .line 739
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 740
    .local v1, "locationProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v2, v2, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0

    .line 743
    .end local v1    # "locationProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 744
    .restart local v1    # "locationProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v2, v2, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_1

    .line 747
    .end local v1    # "locationProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

    if-eqz v2, :cond_2

    .line 748
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

    iget-object v2, v2, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 749
    .restart local v1    # "locationProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v2, v2, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_2

    .line 752
    .end local v1    # "locationProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    :cond_2
    return-void
.end method

.method private doAnalytics(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 237
    iget-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->sentAnalytics:Z

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-virtual {v0, p1}, Lti/modules/titanium/geolocation/TiLocation;->doAnalytics(Landroid/location/Location;)V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->sentAnalytics:Z

    .line 241
    :cond_0
    return-void
.end method

.method private doEnableLocationProviders(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lti/modules/titanium/geolocation/android/LocationProviderProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 721
    .local p1, "locationProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lti/modules/titanium/geolocation/android/LocationProviderProxy;>;"
    iget v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-lez v2, :cond_0

    .line 722
    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->disableLocationProviders()V

    .line 724
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 725
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 726
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 727
    .local v1, "locationProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    invoke-virtual {p0, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->registerLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V

    goto :goto_0

    .line 730
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "locationProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    :cond_0
    return-void
.end method

.method private getManualMode()Z
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

    if-nez v0, :cond_0

    .line 619
    const/4 v0, 0x0

    .line 622
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

    iget-boolean v0, v0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualMode:Z

    goto :goto_0
.end method

.method private propertyChangedAccuracy(Ljava/lang/Object;)V
    .locals 14
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 369
    const/4 v10, 0x0

    .line 370
    .local v10, "legacyModeEnabled":Z
    iget-boolean v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getManualMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-lez v1, :cond_0

    .line 371
    const/4 v10, 0x1

    .line 375
    :cond_0
    const/4 v13, 0x0

    .line 376
    .local v13, "simpleModeEnabled":Z
    iget-boolean v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getManualMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-lez v1, :cond_1

    .line 377
    const/4 v13, 0x1

    .line 380
    :cond_1
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v8

    .line 383
    .local v8, "accuracyProperty":I
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    .line 384
    .local v7, "accuracyLookupResult":Ljava/lang/Double;
    if-eqz v7, :cond_6

    .line 386
    iget v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyProperty:I

    if-eq v8, v1, :cond_3

    .line 387
    iput v8, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyProperty:I

    .line 389
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 390
    .local v12, "providerKey":Ljava/lang/String;
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 391
    .local v11, "locationProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    const-string v1, "minUpdateDistance"

    invoke-virtual {v11, v1, v7}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 394
    .end local v11    # "locationProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    .end local v12    # "providerKey":Ljava/lang/String;
    :cond_2
    if-eqz v10, :cond_3

    .line 395
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->enableLocationProviders(Ljava/util/HashMap;)V

    .line 399
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz v13, :cond_4

    .line 400
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->enableLocationProviders(Ljava/util/HashMap;)V

    .line 403
    :cond_4
    iput-boolean v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    .line 439
    :cond_5
    :goto_1
    return-void

    .line 406
    :cond_6
    if-eq v8, v3, :cond_7

    if-nez v8, :cond_5

    .line 408
    :cond_7
    iget v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationAccuracyProperty:I

    if-eq v8, v1, :cond_8

    .line 409
    iput v8, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationAccuracyProperty:I

    .line 410
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 412
    .local v0, "gpsProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    if-ne v8, v3, :cond_a

    if-nez v0, :cond_a

    .line 413
    new-instance v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .end local v0    # "gpsProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    const-string v1, "gps"

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const-wide v4, 0x40a7700000000000L    # 3000.0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;-><init>(Ljava/lang/String;DDLti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;)V

    .line 414
    .restart local v0    # "gpsProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    const-string v2, "gps"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationRules:Ljava/util/ArrayList;

    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationNetworkRule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationRules:Ljava/util/ArrayList;

    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationGpsRule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    if-eqz v13, :cond_8

    .line 419
    invoke-virtual {p0, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->registerLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V

    .line 433
    .end local v0    # "gpsProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    :cond_8
    :goto_2
    if-eqz v10, :cond_9

    .line 434
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->enableLocationProviders(Ljava/util/HashMap;)V

    .line 437
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    goto :goto_1

    .line 422
    .restart local v0    # "gpsProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    :cond_a
    if-nez v8, :cond_8

    if-eqz v0, :cond_8

    .line 423
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationRules:Ljava/util/ArrayList;

    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationNetworkRule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 425
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationRules:Ljava/util/ArrayList;

    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationGpsRule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 427
    if-eqz v13, :cond_8

    .line 428
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v1, v1, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_2
.end method

.method private propertyChangedFrequency(Ljava/lang/Object;)V
    .locals 10
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 449
    const/4 v3, 0x0

    .line 450
    .local v3, "legacyModeEnabled":Z
    iget-boolean v5, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getManualMode()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-lez v5, :cond_0

    .line 451
    const/4 v3, 0x1

    .line 454
    :cond_0
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double v0, v6, v8

    .line 455
    .local v0, "frequencyProperty":D
    iget-wide v6, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationFrequency:D

    cmpl-double v5, v0, v6

    if-eqz v5, :cond_2

    .line 456
    iput-wide v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationFrequency:D

    .line 458
    iget-object v5, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 459
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 460
    iget-object v5, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 461
    .local v4, "locationProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    const-string v5, "minUpdateTime"

    iget-wide v6, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationFrequency:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 464
    .end local v4    # "locationProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    :cond_1
    if-eqz v3, :cond_2

    .line 465
    iget-object v5, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {p0, v5}, Lti/modules/titanium/geolocation/GeolocationModule;->enableLocationProviders(Ljava/util/HashMap;)V

    .line 468
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private propertyChangedPreferredProvider(Ljava/lang/Object;)V
    .locals 9
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 478
    const/4 v7, 0x0

    .line 479
    .local v7, "legacyModeEnabled":Z
    iget-boolean v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getManualMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-lez v2, :cond_0

    .line 480
    const/4 v7, 0x1

    .line 483
    :cond_0
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "preferredProviderProperty":Ljava/lang/String;
    const-string v2, "network"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 511
    :cond_1
    :goto_0
    return-void

    .line 488
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationPreferredProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 489
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationPreferredProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 490
    .local v8, "oldProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 492
    .local v0, "newProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    if-eqz v8, :cond_3

    .line 493
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationPreferredProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    if-eqz v7, :cond_3

    .line 496
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v2, v2, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v8}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 500
    :cond_3
    if-nez v0, :cond_4

    .line 501
    new-instance v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .end local v0    # "newProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyMap:Ljava/util/HashMap;

    iget v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyProperty:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-wide v4, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationFrequency:D

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;-><init>(Ljava/lang/String;DDLti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;)V

    .line 502
    .restart local v0    # "newProvider":Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    if-eqz v7, :cond_4

    .line 505
    invoke-virtual {p0, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->registerLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V

    .line 509
    :cond_4
    iput-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationPreferredProvider:Ljava/lang/String;

    goto :goto_0
.end method

.method private shouldUseUpdate(Landroid/location/Location;)Z
    .locals 4
    .param p1, "newLocation"    # Landroid/location/Location;

    .prologue
    .line 860
    const/4 v1, 0x0

    .line 862
    .local v1, "passed":Z
    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getManualMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 863
    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

    iget-object v3, v3, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationRules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 864
    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

    iget-object v3, v3, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationRules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    .line 865
    .local v2, "rule":Lti/modules/titanium/geolocation/android/LocationRuleProxy;
    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->currentLocation:Landroid/location/Location;

    invoke-virtual {v2, v3, p1}, Lti/modules/titanium/geolocation/android/LocationRuleProxy;->check(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 866
    const/4 v1, 0x1

    .line 891
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "rule":Lti/modules/titanium/geolocation/android/LocationRuleProxy;
    :cond_1
    :goto_0
    return v1

    .line 873
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 876
    :cond_3
    iget-boolean v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    if-nez v3, :cond_5

    .line 877
    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationRules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    .line 878
    .restart local v2    # "rule":Lti/modules/titanium/geolocation/android/LocationRuleProxy;
    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->currentLocation:Landroid/location/Location;

    invoke-virtual {v2, v3, p1}, Lti/modules/titanium/geolocation/android/LocationRuleProxy;->check(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 879
    const/4 v1, 0x1

    .line 881
    goto :goto_0

    .line 888
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "rule":Lti/modules/titanium/geolocation/android/LocationRuleProxy;
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public enableLocationProviders(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lti/modules/titanium/geolocation/android/LocationProviderProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 697
    .local p1, "locationProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lti/modules/titanium/geolocation/android/LocationProviderProxy;>;"
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    invoke-direct {p0, p1}, Lti/modules/titanium/geolocation/GeolocationModule;->doEnableLocationProviders(Ljava/util/HashMap;)V

    .line 704
    :goto_0
    return-void

    .line 701
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x137

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 702
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v2, 0x1

    .line 519
    const-string v1, "heading"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    iget-boolean v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassListenersRegistered:Z

    if-nez v1, :cond_0

    .line 521
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiCompass:Lti/modules/titanium/geolocation/TiCompass;

    invoke-virtual {v1}, Lti/modules/titanium/geolocation/TiCompass;->registerListener()V

    .line 522
    iput-boolean v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassListenersRegistered:Z

    .line 551
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 552
    :goto_1
    return-void

    .line 525
    :cond_1
    const-string v1, "location"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    iget v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    .line 527
    iget v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-ne v1, v2, :cond_0

    .line 528
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    .line 530
    .local v0, "locationProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lti/modules/titanium/geolocation/android/LocationProviderProxy;>;"
    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getManualMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 531
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

    iget-object v0, v1, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationProviders:Ljava/util/HashMap;

    .line 536
    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->enableLocationProviders(Ljava/util/HashMap;)V

    .line 539
    invoke-virtual {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->hasLocationPermissions()Z

    move-result v1

    if-nez v1, :cond_4

    .line 540
    const-string v1, "GeolocationModule"

    const-string v2, "Location permissions missing"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 533
    :cond_3
    iget-boolean v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    if-nez v1, :cond_2

    .line 534
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    goto :goto_2

    .line 543
    :cond_4
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-virtual {v1}, Lti/modules/titanium/geolocation/TiLocation;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->lastLocation:Landroid/location/Location;

    .line 544
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->lastLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 545
    const-string v1, "location"

    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->lastLocation:Landroid/location/Location;

    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v3, v3, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    iget-object v4, p0, Lti/modules/titanium/geolocation/GeolocationModule;->lastLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationEvent(Landroid/location/Location;Landroid/location/LocationProvider;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 546
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->lastLocation:Landroid/location/Location;

    invoke-direct {p0, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->doAnalytics(Landroid/location/Location;)V

    goto :goto_0
.end method

.method protected eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 560
    const-string v0, "heading"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    iget-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassListenersRegistered:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiCompass:Lti/modules/titanium/geolocation/TiCompass;

    invoke-virtual {v0}, Lti/modules/titanium/geolocation/TiCompass;->unregisterListener()V

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassListenersRegistered:Z

    .line 573
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 574
    return-void

    .line 566
    :cond_1
    const-string v0, "location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    .line 568
    iget v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-nez v0, :cond_0

    .line 569
    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->disableLocationProviders()V

    goto :goto_0
.end method

.method public forwardGeocoder(Ljava/lang/String;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 807
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-direct {p0, p2}, Lti/modules/titanium/geolocation/GeolocationModule;->createGeocodeResponseHandler(Lorg/appcelerator/kroll/KrollFunction;)Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lti/modules/titanium/geolocation/TiLocation;->forwardGeocode(Ljava/lang/String;Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;)V

    .line 808
    return-void
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 951
    const-string v0, "Ti.Geolocation"

    return-object v0
.end method

.method public getCurrentHeading(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 1
    .param p1, "listener"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 595
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiCompass:Lti/modules/titanium/geolocation/TiCompass;

    invoke-virtual {v0, p1}, Lti/modules/titanium/geolocation/TiCompass;->getCurrentHeading(Lorg/appcelerator/kroll/KrollFunction;)V

    .line 596
    return-void
.end method

.method public getCurrentPosition(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 6
    .param p1, "callback"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 775
    invoke-virtual {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->hasLocationPermissions()Z

    move-result v1

    if-nez v1, :cond_1

    .line 776
    const-string v1, "GeolocationModule"

    const-string v2, "Location permissions missing"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    if-eqz p1, :cond_0

    .line 780
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-virtual {v1}, Lti/modules/titanium/geolocation/TiLocation;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 782
    .local v0, "latestKnownLocation":Landroid/location/Location;
    if-eqz v0, :cond_2

    .line 783
    invoke-virtual {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v3, v3, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationEvent(Landroid/location/Location;Landroid/location/LocationProvider;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {p1, v1, v2}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 788
    :cond_2
    const-string v1, "GeolocationModule"

    const-string v2, "Unable to get current position, location is null"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-virtual {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x6

    const-string v4, "location is currently unavailable."

    invoke-direct {p0, v3, v4}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationErrorEvent(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {p1, v1, v2}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getHasCompass()Z
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiCompass:Lti/modules/titanium/geolocation/TiCompass;

    invoke-virtual {v0}, Lti/modules/titanium/geolocation/TiCompass;->getHasCompass()Z

    move-result v0

    return v0
.end method

.method public getLastGeolocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->lastLocation:Landroid/location/Location;

    invoke-static {v0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->locationToJSONString(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationServicesEnabled()Z
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-virtual {v0}, Lti/modules/titanium/geolocation/TiLocation;->getLocationServicesEnabled()Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 223
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 232
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 225
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    .local v0, "locationProviders":Ljava/lang/Object;
    check-cast v0, Ljava/util/HashMap;

    .end local v0    # "locationProviders":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->doEnableLocationProviders(Ljava/util/HashMap;)V

    .line 228
    const/4 v1, 0x1

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x137
        :pswitch_0
    .end packed-switch
.end method

.method public hasLocationPermissions()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 629
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v1

    .line 632
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 633
    .local v0, "currentActivity":Landroid/app/Activity;
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 957
    iget-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassListenersRegistered:Z

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiCompass:Lti/modules/titanium/geolocation/TiCompass;

    invoke-virtual {v0}, Lti/modules/titanium/geolocation/TiCompass;->unregisterListener()V

    .line 959
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassListenersRegistered:Z

    .line 961
    :cond_0
    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->disableLocationProviders()V

    .line 962
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onDestroy(Landroid/app/Activity;)V

    .line 964
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 252
    iput-object p1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->lastLocation:Landroid/location/Location;

    .line 253
    invoke-direct {p0, p1}, Lti/modules/titanium/geolocation/GeolocationModule;->shouldUseUpdate(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "location"

    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v1, v1, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationEvent(Landroid/location/Location;Landroid/location/LocationProvider;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 255
    iput-object p1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->currentLocation:Landroid/location/Location;

    .line 256
    invoke-direct {p0, p1}, Lti/modules/titanium/geolocation/GeolocationModule;->doAnalytics(Landroid/location/Location;)V

    .line 258
    :cond_0
    return-void
.end method

.method public onProviderStateChanged(Ljava/lang/String;I)V
    .locals 3
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 270
    move-object v0, p1

    .line 275
    .local v0, "message":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is in a unknown state ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    const-string v1, "GeolocationModule"

    const-string v2, "DEBUG_MODE"

    invoke-static {v1, v0, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v1, "location"

    invoke-direct {p0, p2, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationErrorEvent(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 323
    :goto_0
    return-void

    .line 277
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v1, "GeolocationModule"

    const-string v2, "DEBUG_MODE"

    invoke-static {v1, v0, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v1, "location"

    invoke-direct {p0, p2, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationErrorEvent(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string v1, "GeolocationModule"

    const-string v2, "DEBUG_MODE"

    invoke-static {v1, v0, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    const-string v1, "GeolocationModule"

    const-string v2, "DEBUG_MODE"

    invoke-static {v1, v0, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v1, "location"

    invoke-direct {p0, p2, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationErrorEvent(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unavailable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string v1, "GeolocationModule"

    const-string v2, "DEBUG_MODE"

    invoke-static {v1, v0, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v1, "location"

    invoke-direct {p0, p2, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationErrorEvent(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 304
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    const-string v1, "GeolocationModule"

    const-string v2, "DEBUG_MODE"

    invoke-static {v1, v0, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 310
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is in a unknown state ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    const-string v1, "GeolocationModule"

    const-string v2, "DEBUG_MODE"

    invoke-static {v1, v0, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v1, "location"

    invoke-direct {p0, p2, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationErrorEvent(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onProviderUpdated(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V
    .locals 1
    .param p1, "locationProvider"    # Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .prologue
    .line 334
    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getManualMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-lez v0, :cond_0

    .line 335
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v0, v0, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 336
    invoke-virtual {p0, p1}, Lti/modules/titanium/geolocation/GeolocationModule;->registerLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V

    .line 338
    :cond_0
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 346
    const-string v0, "accuracy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    invoke-direct {p0, p3}, Lti/modules/titanium/geolocation/GeolocationModule;->propertyChangedAccuracy(Ljava/lang/Object;)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    const-string v0, "frequency"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    invoke-direct {p0, p3}, Lti/modules/titanium/geolocation/GeolocationModule;->propertyChangedFrequency(Ljava/lang/Object;)V

    goto :goto_0

    .line 356
    :cond_2
    const-string v0, "preferredProvider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0, p3}, Lti/modules/titanium/geolocation/GeolocationModule;->propertyChangedPreferredProvider(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public registerLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V
    .locals 7
    .param p1, "locationProvider"    # Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .prologue
    .line 668
    invoke-virtual {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->hasLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    const-string v0, "GeolocationModule"

    const-string v2, "Location permissions missing"

    const-string v3, "DEBUG_MODE"

    invoke-static {v0, v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :goto_0
    return-void

    .line 672
    :cond_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, "provider":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v0, v0, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->getMinUpdateTime()D

    move-result-wide v2

    double-to-long v2, v2

    invoke-virtual {p1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->getMinUpdateDistance()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 681
    :catch_0
    move-exception v6

    .line 682
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "GeolocationModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to register ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], provider is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 684
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .line 685
    .local v6, "e":Ljava/lang/SecurityException;
    const-string v0, "GeolocationModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to register ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], permission denied"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestLocationPermissions(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/Object;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param
    .param p2, "permissionCallback"    # Lorg/appcelerator/kroll/KrollFunction;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 642
    invoke-virtual {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->hasLocationPermissions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    .end local p1    # "type":Ljava/lang/Object;
    :goto_0
    return-void

    .line 646
    .restart local p1    # "type":Ljava/lang/Object;
    :cond_0
    sget-object v1, Lorg/appcelerator/titanium/TiBaseActivity;->locationCallbackContext:Lorg/appcelerator/kroll/KrollObject;

    if-nez v1, :cond_1

    .line 647
    invoke-virtual {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v1

    sput-object v1, Lorg/appcelerator/titanium/TiBaseActivity;->locationCallbackContext:Lorg/appcelerator/kroll/KrollObject;

    .line 650
    :cond_1
    instance-of v1, p1, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    .line 651
    check-cast p1, Lorg/appcelerator/kroll/KrollFunction;

    .end local p1    # "type":Ljava/lang/Object;
    sput-object p1, Lorg/appcelerator/titanium/TiBaseActivity;->locationPermissionCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 656
    :goto_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 657
    .local v0, "currentActivity":Landroid/app/Activity;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 653
    .end local v0    # "currentActivity":Landroid/app/Activity;
    .restart local p1    # "type":Ljava/lang/Object;
    :cond_2
    sput-object p2, Lorg/appcelerator/titanium/TiBaseActivity;->locationPermissionCallback:Lorg/appcelerator/kroll/KrollFunction;

    goto :goto_1
.end method

.method public reverseGeocoder(DDLorg/appcelerator/kroll/KrollFunction;)V
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "callback"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 822
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-direct {p0, p5}, Lti/modules/titanium/geolocation/GeolocationModule;->createGeocodeResponseHandler(Lorg/appcelerator/kroll/KrollFunction;)Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;

    move-result-object v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lti/modules/titanium/geolocation/TiLocation;->reverseGeocode(DDLti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;)V

    .line 823
    return-void
.end method
