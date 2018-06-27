.class Lti/map/TiUIMapView$1;
.super Ljava/lang/Object;
.source "TiUIMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/map/TiUIMapView;->snapshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/map/TiUIMapView;


# direct methods
.method constructor <init>(Lti/map/TiUIMapView;)V
    .locals 0

    .prologue
    .line 964
    iput-object p1, p0, Lti/map/TiUIMapView$1;->this$0:Lti/map/TiUIMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "snapshot"    # Landroid/graphics/Bitmap;

    .prologue
    .line 968
    invoke-static {p1}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v1

    .line 969
    .local v1, "sblob":Lorg/appcelerator/titanium/TiBlob;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 970
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "snapshot"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const-string v2, "source"

    iget-object v3, p0, Lti/map/TiUIMapView$1;->this$0:Lti/map/TiUIMapView;

    invoke-static {v3}, Lti/map/TiUIMapView;->access$000(Lti/map/TiUIMapView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    iget-object v2, p0, Lti/map/TiUIMapView$1;->this$0:Lti/map/TiUIMapView;

    invoke-static {v2}, Lti/map/TiUIMapView;->access$100(Lti/map/TiUIMapView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    const-string v3, "onsnapshotready"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 973
    return-void
.end method
