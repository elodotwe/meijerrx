.class Lcom/mscripts/androidkeychain/ExampleProxy$ExampleView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "ExampleProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mscripts/androidkeychain/ExampleProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExampleView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mscripts/androidkeychain/ExampleProxy;


# direct methods
.method public constructor <init>(Lcom/mscripts/androidkeychain/ExampleProxy;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .param p2, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mscripts/androidkeychain/ExampleProxy$ExampleView;->this$0:Lcom/mscripts/androidkeychain/ExampleProxy;

    .line 37
    invoke-direct {p0, p2}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 38
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 40
    .local v0, "arrangement":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    const-string v2, "layout"

    invoke-virtual {p2, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    const-string v2, "layout"

    invoke-virtual {p2, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "layoutProperty":Ljava/lang/String;
    const-string v2, "horizontal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 48
    .end local v1    # "layoutProperty":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v2, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    invoke-virtual {p0, v2}, Lcom/mscripts/androidkeychain/ExampleProxy$ExampleView;->setNativeView(Landroid/view/View;)V

    .line 49
    return-void

    .line 44
    .restart local v1    # "layoutProperty":Ljava/lang/String;
    :cond_1
    const-string v2, "vertical"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0
.end method


# virtual methods
.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 55
    return-void
.end method
