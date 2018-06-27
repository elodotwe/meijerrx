.class public Lti/map/TiMarker;
.super Ljava/lang/Object;
.source "TiMarker.java"


# instance fields
.field private marker:Lcom/google/android/gms/maps/model/Marker;

.field private proxy:Lti/map/AnnotationProxy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/Marker;Lti/map/AnnotationProxy;)V
    .locals 0
    .param p1, "m"    # Lcom/google/android/gms/maps/model/Marker;
    .param p2, "p"    # Lti/map/AnnotationProxy;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lti/map/TiMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    .line 18
    iput-object p2, p0, Lti/map/TiMarker;->proxy:Lti/map/AnnotationProxy;

    .line 19
    return-void
.end method


# virtual methods
.method public getMarker()Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lti/map/TiMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method public getProxy()Lti/map/AnnotationProxy;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lti/map/TiMarker;->proxy:Lti/map/AnnotationProxy;

    return-object v0
.end method

.method public setMarker(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0
    .param p1, "m"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 22
    iput-object p1, p0, Lti/map/TiMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    .line 23
    return-void
.end method
