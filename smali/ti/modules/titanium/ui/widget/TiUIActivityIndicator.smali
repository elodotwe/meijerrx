.class public Lti/modules/titanium/ui/widget/TiUIActivityIndicator;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIActivityIndicator.java"


# static fields
.field public static final BIG:I = 0x101007a

.field public static final BIG_DARK:I = 0x1010289

.field public static final DARK:I = 0x1010288

.field public static final PLAIN:I = 0x1010079

.field private static final TAG:Ljava/lang/String; = "TiUIActivityIndicator"


# instance fields
.field protected currentStyle:I

.field private label:Landroid/widget/TextView;

.field private progress:Landroid/widget/ProgressBar;

.field private view:Landroid/widget/LinearLayout;

.field protected visible:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 5
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 46
    const-string v1, "TiUIActivityIndicator"

    const-string v2, "Creating an activity indicator"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 55
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 56
    const-string v1, "TiUIActivityIndicator"

    const-string v2, "Unable to create an activity indicator. Activity is null"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    .line 61
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 64
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    .line 65
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 67
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 69
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->getStyle()I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->currentStyle:I

    .line 70
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->currentStyle:I

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progress:Landroid/widget/ProgressBar;

    .line 72
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    .line 77
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->setNativeView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected getStyle()I
    .locals 5

    .prologue
    const v1, 0x1010079

    .line 143
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "style"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "style"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 145
    .local v0, "style":I
    if-eq v0, v1, :cond_0

    const v2, 0x101007a

    if-eq v0, v2, :cond_0

    const v2, 0x1010288

    if-eq v0, v2, :cond_0

    const v2, 0x1010289

    if-eq v0, v2, :cond_0

    .line 146
    const-string v2, "TiUIActivityIndicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" for style."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 151
    .end local v0    # "style":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->hide()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 85
    const-string v0, "style"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "style"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->setStyle(I)V

    .line 88
    :cond_0
    const-string v0, "font"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    const-string v1, "font"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 91
    :cond_1
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    const-string v1, "message"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_2
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    const-string v1, "color"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :cond_3
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 99
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 104
    const-string v0, "TiUIActivityIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v0, "style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->setStyle(I)V

    .line 119
    .end local p3    # "newValue":Ljava/lang/Object;
    :goto_0
    return-void

    .line 108
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_0
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p3, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    check-cast p3, Ljava/util/HashMap;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-static {v0, p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 110
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 111
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v0, "message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 114
    :cond_2
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 117
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method protected setStyle(I)V
    .locals 3
    .param p1, "style"    # I

    .prologue
    .line 156
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->currentStyle:I

    if-ne p1, v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 159
    :cond_0
    const v0, 0x1010079

    if-eq p1, v0, :cond_1

    const v0, 0x101007a

    if-eq p1, v0, :cond_1

    const v0, 0x1010288

    if-eq p1, v0, :cond_1

    const v0, 0x1010289

    if-eq p1, v0, :cond_1

    .line 160
    const-string v0, "TiUIActivityIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" for style."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 165
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progress:Landroid/widget/ProgressBar;

    .line 166
    iput p1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->currentStyle:I

    .line 167
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->show()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    goto :goto_0
.end method
