.class public Lti/modules/titanium/ui/LabelProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "LabelProxy.java"


# static fields
.field private static final MSG_FIRST_ID:I = 0xd4

.field protected static final MSG_LAST_ID:I = 0x4bb


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 47
    iget-object v0, p0, Lti/modules/titanium/ui/LabelProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "text"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 52
    invoke-direct {p0}, Lti/modules/titanium/ui/LabelProxy;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    new-instance v0, Lti/modules/titanium/ui/widget/TiUILabel;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUILabel;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "Ti.UI.Label"

    return-object v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 59
    .local v0, "table":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "text"

    const-string v2, "textid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method
