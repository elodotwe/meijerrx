.class public Lti/modules/titanium/ui/android/ProgressIndicatorProxy;
.super Lti/modules/titanium/ui/TiDialogProxy;
.source "ProgressIndicatorProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lti/modules/titanium/ui/TiDialogProxy;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 44
    invoke-direct {p0}, Lti/modules/titanium/ui/android/ProgressIndicatorProxy;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "Ti.UI.Android.ProgressIndicator"

    return-object v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 50
    .local v0, "table":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "message"

    const-string v2, "messageid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object v0
.end method

.method protected handleHide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lti/modules/titanium/ui/TiDialogProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 72
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/ProgressIndicatorProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;

    .line 73
    .local v0, "ai":Lti/modules/titanium/ui/widget/TiUIProgressIndicator;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->hide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 74
    return-void
.end method

.method protected handleShow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lti/modules/titanium/ui/TiDialogProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 64
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/ProgressIndicatorProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;

    .line 65
    .local v0, "ai":Lti/modules/titanium/ui/widget/TiUIProgressIndicator;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->show(Lorg/appcelerator/kroll/KrollDict;)V

    .line 66
    return-void
.end method
