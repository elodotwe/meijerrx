.class public Lti/map/MapModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "MapModule.java"


# static fields
.field public static final ANNOTATION_AZURE:F = 210.0f

.field public static final ANNOTATION_BLUE:F = 240.0f

.field public static final ANNOTATION_CYAN:F = 180.0f

.field public static final ANNOTATION_DRAG_STATE_END:I = 0x1

.field public static final ANNOTATION_DRAG_STATE_START:I = 0x0

.field public static final ANNOTATION_GREEN:F = 120.0f

.field public static final ANNOTATION_MAGENTA:F = 300.0f

.field public static final ANNOTATION_ORANGE:F = 30.0f

.field public static final ANNOTATION_RED:F = 0.0f

.field public static final ANNOTATION_ROSE:F = 330.0f

.field public static final ANNOTATION_VIOLET:F = 270.0f

.field public static final ANNOTATION_YELLOW:F = 60.0f

.field public static final EVENT_ON_SNAPSHOT_READY:Ljava/lang/String; = "onsnapshotready"

.field public static final EVENT_PIN_CHANGE_DRAG_STATE:Ljava/lang/String; = "pinchangedragstate"

.field public static final HYBRID_TYPE:I = 0x4

.field public static final NORMAL_TYPE:I = 0x1

.field public static final PROPERTY_BEARING:Ljava/lang/String; = "bearing"

.field public static final PROPERTY_CENTER:Ljava/lang/String; = "center"

.field public static final PROPERTY_CIRCLE:Ljava/lang/String; = "circle"

.field public static final PROPERTY_CIRCLES:Ljava/lang/String; = "circles"

.field public static final PROPERTY_COMPASS_ENABLED:Ljava/lang/String; = "compassEnabled"

.field public static final PROPERTY_CUSTOM_VIEW:Ljava/lang/String; = "customView"

.field public static final PROPERTY_DRAGGABLE:Ljava/lang/String; = "draggable"

.field public static final PROPERTY_FILL_COLOR:Ljava/lang/String; = "fillColor"

.field public static final PROPERTY_INFO_WINDOW:Ljava/lang/String; = "infoWindow"

.field public static final PROPERTY_LEFT_PANE:Ljava/lang/String; = "leftPane"

.field public static final PROPERTY_MAP:Ljava/lang/String; = "map"

.field public static final PROPERTY_MAP_TOOLBAR_ENABLED:Ljava/lang/String; = "mapToolbarEnabled"

.field public static final PROPERTY_NEWSTATE:Ljava/lang/String; = "newState"

.field public static final PROPERTY_PANNING:Ljava/lang/String; = "panning"

.field public static final PROPERTY_PIN:Ljava/lang/String; = "pin"

.field public static final PROPERTY_POINTS:Ljava/lang/String; = "points"

.field public static final PROPERTY_POLYGON:Ljava/lang/String; = "polygon"

.field public static final PROPERTY_POLYGONS:Ljava/lang/String; = "polygons"

.field public static final PROPERTY_POLYLINE:Ljava/lang/String; = "polyline"

.field public static final PROPERTY_POLYLINES:Ljava/lang/String; = "polylines"

.field public static final PROPERTY_RADIUS:Ljava/lang/String; = "radius"

.field public static final PROPERTY_RIGHT_PANE:Ljava/lang/String; = "rightPane"

.field public static final PROPERTY_SHAPE:Ljava/lang/String; = "shape"

.field public static final PROPERTY_SHAPE_TYPE:Ljava/lang/String; = "shapeType"

.field public static final PROPERTY_SHOW_INFO_WINDOW:Ljava/lang/String; = "showInfoWindow"

.field public static final PROPERTY_STREET_NAMES:Ljava/lang/String; = "streetNames"

.field public static final PROPERTY_STROKE_COLOR:Ljava/lang/String; = "strokeColor"

.field public static final PROPERTY_STROKE_WIDTH:Ljava/lang/String; = "strokeWidth"

.field public static final PROPERTY_TILT:Ljava/lang/String; = "tilt"

.field public static final PROPERTY_TRAFFIC:Ljava/lang/String; = "traffic"

.field public static final PROPERTY_USER_LOCATION_BUTTON:Ljava/lang/String; = "userLocationButton"

.field public static final PROPERTY_USER_NAVIGATION:Ljava/lang/String; = "userNavigation"

.field public static final PROPERTY_ZINDEX:Ljava/lang/String; = "zIndex"

.field public static final PROPERTY_ZOOM:Ljava/lang/String; = "zoom"

.field public static final PROPERTY_ZORDER_ON_TOP:Ljava/lang/String; = "zOrderOnTop"

.field public static final SATELLITE_TYPE:I = 0x2

.field public static final SERVICE_DISABLED:I = 0x3

.field public static final SERVICE_INVALID:I = 0x9

.field public static final SERVICE_MISSING:I = 0x1

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2

.field public static final SUCCESS:I = 0x0

.field public static final TERRAIN_TYPE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 91
    return-void
.end method


# virtual methods
.method public isGooglePlayServicesAvailable()I
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    return v0
.end method
