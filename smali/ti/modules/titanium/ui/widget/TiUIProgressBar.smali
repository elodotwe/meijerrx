.class public Lti/modules/titanium/ui/widget/TiUIProgressBar;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIProgressBar.java"


# instance fields
.field private label:Landroid/widget/TextView;

.field private progress:Landroid/widget/ProgressBar;

.field private view:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 5
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v4, 0x0

    .line 32
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 34
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIProgressBar$1;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lti/modules/titanium/ui/widget/TiUIProgressBar$1;-><init>(Lti/modules/titanium/ui/widget/TiUIProgressBar;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->view:Landroid/widget/LinearLayout;

    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->view:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 46
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 47
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 49
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    .line 50
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 51
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->view:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->setNativeView(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method private convertRange(DDDI)I
    .locals 5
    .param p1, "min"    # D
    .param p3, "max"    # D
    .param p5, "value"    # D
    .param p7, "base"    # I

    .prologue
    .line 118
    sub-double v0, p3, p1

    div-double v0, p5, v0

    int-to-double v2, p7

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getMax()D
    .locals 4

    .prologue
    .line 99
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "max"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 101
    const-wide/16 v2, 0x0

    .line 104
    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    goto :goto_0
.end method

.method private getMin()D
    .locals 4

    .prologue
    .line 90
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "min"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 92
    const-wide/16 v2, 0x0

    .line 95
    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    goto :goto_0
.end method

.method private getValue()D
    .locals 4

    .prologue
    .line 108
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 110
    const-wide/16 v2, 0x0

    .line 113
    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    goto :goto_0
.end method


# virtual methods
.method public handleSetMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 130
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 63
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "message"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->handleSetMessage(Ljava/lang/String;)V

    .line 66
    :cond_0
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "color"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 69
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->updateProgress()V

    .line 70
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 77
    const-string v1, "value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "min"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "max"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->updateProgress()V

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    const-string v1, "message"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->handleSetMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v0    # "message":Ljava/lang/String;
    :cond_3
    const-string v1, "color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public updateProgress()V
    .locals 9

    .prologue
    .line 123
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->getMin()D

    move-result-wide v2

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->getMax()D

    move-result-wide v4

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->getValue()D

    move-result-wide v6

    const/16 v8, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->convertRange(DDDI)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 124
    return-void
.end method
