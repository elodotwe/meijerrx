.class public Lti/modules/titanium/ui/android/SearchViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "SearchViewProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchProxy"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 30
    iget-object v0, p0, Lti/modules/titanium/ui/android/SearchViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "iconifiedByDefault"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    new-instance v0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "Ti.UI.Android.SearchView"

    return-object v0
.end method
