.class public Lti/map/StreetViewPanoramaProxy;
.super Lti/map/ViewProxy;
.source "StreetViewPanoramaProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lti/map/ViewProxy;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    new-instance v0, Lti/map/TiStreetViewPanorama;

    invoke-direct {v0, p0, p1}, Lti/map/TiStreetViewPanorama;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    return-object v0
.end method
