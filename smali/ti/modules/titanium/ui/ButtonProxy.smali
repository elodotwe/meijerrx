.class public Lti/modules/titanium/ui/ButtonProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ButtonProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 37
    iget-object v0, p0, Lti/modules/titanium/ui/ButtonProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 42
    invoke-direct {p0}, Lti/modules/titanium/ui/ButtonProxy;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIButton;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIButton;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "Ti.UI.Button"

    return-object v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 49
    .local v0, "table":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "title"

    const-string v2, "titleid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-object v0
.end method
