.class public Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;
.super Lti/modules/titanium/ui/widget/TiUIText;
.source "TiUISearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;
    }
.end annotation


# instance fields
.field protected cancelBtn:Landroid/widget/ImageButton;

.field private promptText:Landroid/widget/TextView;

.field protected searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

.field private tv:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 10
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 46
    invoke-direct {p0, p1, v8}, Lti/modules/titanium/ui/widget/TiUIText;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Z)V

    .line 48
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->getNativeView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->tv:Landroid/widget/EditText;

    .line 49
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->tv:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 50
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->promptText:Landroid/widget/TextView;

    .line 51
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->promptText:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->promptText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 57
    new-instance v3, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    .line 58
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isFocusable()Z

    .line 59
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setId(I)V

    .line 60
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    const v4, 0x108002c

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 62
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 63
    .local v2, "scale":F
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    const/high16 v4, 0x42400000    # 48.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setMinimumWidth(I)V

    .line 64
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setMinimumHeight(I)V

    .line 65
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    new-instance v4, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;

    invoke-direct {v4, p0}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;-><init>(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$2;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, p0, v3, p1}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$2;-><init>(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 90
    .local v0, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 91
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 93
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 95
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 96
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 97
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->promptText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 98
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->promptText:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 101
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    const/16 v3, 0x65

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 105
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 108
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 109
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 111
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->setNativeView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;

    .prologue
    .line 32
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->tv:Landroid/widget/EditText;

    return-object v0
.end method

.method private processBackgroundImage(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .param p1, "imgValue"    # Ljava/lang/Object;
    .param p2, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 164
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "bkgdImage":Ljava/lang/String;
    new-instance v2, Lorg/appcelerator/titanium/util/TiFileHelper;

    iget-object v4, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->tv:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 166
    .local v2, "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v1}, Lorg/appcelerator/kroll/KrollProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "url":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->nativeView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;->filterBy(Ljava/lang/String;)V

    .line 121
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lti/modules/titanium/ui/widget/TiUIText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 122
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-super {p0, p1}, Lti/modules/titanium/ui/widget/TiUIText;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 128
    const-string v3, "showCancel"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    const-string v3, "showCancel"

    invoke-static {p1, v3, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v0

    .line 130
    .local v0, "showCancel":Z
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 132
    .end local v0    # "showCancel":Z
    :cond_0
    const-string v2, "barColor"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->nativeView:Landroid/view/View;

    const-string v3, "barColor"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 135
    :cond_1
    const-string v2, "prompt"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    const-string v2, "prompt"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "strPrompt":Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->promptText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .end local v1    # "strPrompt":Ljava/lang/String;
    :cond_2
    const-string v2, "backgroundImage"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    iget-object v2, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "backgroundImage"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v2, v3}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->processBackgroundImage(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 142
    :cond_3
    return-void

    .line 130
    .restart local v0    # "showCancel":Z
    :cond_4
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 147
    const-string v2, "showCancel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 149
    .local v0, "showCancel":Z
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 160
    .end local v0    # "showCancel":Z
    :goto_1
    return-void

    .line 149
    .restart local v0    # "showCancel":Z
    :cond_0
    const/16 v2, 0x8

    goto :goto_0

    .line 150
    .end local v0    # "showCancel":Z
    :cond_1
    const-string v2, "barColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    iget-object v2, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->nativeView:Landroid/view/View;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 152
    :cond_2
    const-string v2, "prompt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "strPrompt":Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->promptText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 155
    .end local v1    # "strPrompt":Ljava/lang/String;
    :cond_3
    const-string v2, "backgroundImage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 156
    invoke-direct {p0, p3, p4}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->processBackgroundImage(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_1

    .line 158
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lti/modules/titanium/ui/widget/TiUIText;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_1
.end method

.method public setOnSearchChangeListener(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    .prologue
    .line 172
    iput-object p1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    .line 173
    return-void
.end method
