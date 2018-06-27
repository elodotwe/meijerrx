.class public Lti/modules/titanium/ui/widget/TiUIButton;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIButton.java"


# static fields
.field private static final DEFAULT_SHADOW_RADIUS:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "TiUIButton"


# instance fields
.field private defaultColor:I

.field private shadowColor:I

.field private shadowRadius:F

.field private shadowX:F

.field private shadowY:F


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 34
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowRadius:F

    .line 35
    iput v2, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowX:F

    .line 36
    iput v2, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowY:F

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowColor:I

    .line 42
    const-string v1, "TiUIButton"

    const-string v2, "Creating a button"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIButton$1;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lti/modules/titanium/ui/widget/TiUIButton$1;-><init>(Lti/modules/titanium/ui/widget/TiUIButton;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 52
    .local v0, "btn":Landroid/support/v7/widget/AppCompatButton;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatButton;->setGravity(I)V

    .line 53
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatButton;->getCurrentTextColor()I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIButton;->defaultColor:I

    .line 54
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIButton;->setNativeView(Landroid/view/View;)V

    .line 55
    return-void
.end method


# virtual methods
.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 14
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 62
    const/4 v4, 0x0

    .line 64
    .local v4, "needShadow":Z
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIButton;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatButton;

    .line 65
    .local v0, "btn":Landroid/support/v7/widget/AppCompatButton;
    const-string v8, "image"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 66
    const-string v8, "image"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 67
    .local v6, "value":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 68
    .local v2, "drawableRef":Lorg/appcelerator/titanium/view/TiDrawableReference;
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 69
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIButton;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-static {v8, v6}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v2

    .line 74
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getDensityScaledDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 76
    .local v3, "image":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v8, v9, v10}, Landroid/support/v7/widget/AppCompatButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 83
    .end local v2    # "drawableRef":Lorg/appcelerator/titanium/view/TiDrawableReference;
    .end local v3    # "image":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    const-string v8, "title"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 84
    const-string v8, "title"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_2
    const-string v8, "color"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "selectedColor"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 87
    :cond_3
    new-instance v9, Landroid/content/res/ColorStateList;

    const/4 v8, 0x2

    new-array v10, v8, [[I

    const/4 v8, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const v13, 0x10100a7

    aput v13, v11, v12

    aput-object v11, v10, v8

    const/4 v8, 0x1

    const/4 v11, 0x0

    new-array v11, v11, [I

    aput-object v11, v10, v8

    const/4 v8, 0x2

    new-array v11, v8, [I

    const/4 v12, 0x0

    const-string v8, "selectedColor"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_f

    iget v8, p0, Lti/modules/titanium/ui/widget/TiUIButton;->defaultColor:I

    :goto_2
    aput v8, v11, v12

    const/4 v12, 0x1

    const-string v8, "color"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_10

    iget v8, p0, Lti/modules/titanium/ui/widget/TiUIButton;->defaultColor:I

    :goto_3
    aput v8, v11, v12

    invoke-direct {v9, v10, v11}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/AppCompatButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 102
    :cond_4
    const-string v8, "font"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 103
    const-string v8, "font"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v8

    invoke-static {v0, v8}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 105
    :cond_5
    const-string v8, "textAlign"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 106
    const-string v8, "textAlign"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "textAlign":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-static {v0, v5, v8}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v5    # "textAlign":Ljava/lang/String;
    :cond_6
    const-string v8, "verticalAlign"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 110
    const-string v8, "verticalAlign"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "verticalAlign":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-static {v0, v8, v7}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .end local v7    # "verticalAlign":Ljava/lang/String;
    :cond_7
    const-string v8, "shadowOffset"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 114
    const-string v8, "shadowOffset"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 115
    .restart local v6    # "value":Ljava/lang/Object;
    instance-of v8, v6, Ljava/util/HashMap;

    if-eqz v8, :cond_8

    .line 116
    const/4 v4, 0x1

    move-object v1, v6

    .line 117
    check-cast v1, Ljava/util/HashMap;

    .line 118
    .local v1, "dict":Ljava/util/HashMap;
    const-string v8, "x"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v8

    iput v8, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowX:F

    .line 119
    const-string v8, "y"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v8

    iput v8, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowY:F

    .line 122
    .end local v1    # "dict":Ljava/util/HashMap;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_8
    const-string v8, "shadowRadius"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 123
    const/4 v4, 0x1

    .line 124
    const-string v8, "shadowRadius"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v8

    iput v8, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowRadius:F

    .line 126
    :cond_9
    const-string v8, "shadowColor"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 127
    const/4 v4, 0x1

    .line 128
    const-string v8, "shadowColor"

    invoke-static {p1, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowColor:I

    .line 130
    :cond_a
    if-eqz v4, :cond_b

    .line 131
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowRadius:F

    iget v9, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowX:F

    iget v10, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowY:F

    iget v11, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowColor:I

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/support/v7/widget/AppCompatButton;->setShadowLayer(FFFI)V

    .line 133
    :cond_b
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatButton;->invalidate()V

    .line 134
    return-void

    .line 70
    .restart local v2    # "drawableRef":Lorg/appcelerator/titanium/view/TiDrawableReference;
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v8, v6, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v8, :cond_0

    .line 71
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIButton;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v6, Lorg/appcelerator/titanium/TiBlob;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-static {v8, v6}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v2

    goto/16 :goto_0

    .line 78
    .end local v2    # "drawableRef":Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_d
    const-string v8, "backgroundColor"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "backgroundImage"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    :cond_e
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/support/v7/widget/AppCompatButton;->setPadding(IIII)V

    goto/16 :goto_1

    .line 87
    :cond_f
    const-string v8, "selectedColor"

    invoke-static {p1, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_2

    :cond_10
    const-string v8, "color"

    invoke-static {p1, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_3
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 139
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 140
    const-string v6, "TiUIButton"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Property: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " old: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " new: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIButton;->getNativeView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatButton;

    .line 143
    .local v2, "btn":Landroid/support/v7/widget/AppCompatButton;
    const-string v6, "title"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 144
    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 145
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_2
    const-string v6, "color"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 146
    new-instance v6, Landroid/content/res/ColorStateList;

    const/4 v7, 0x2

    new-array v7, v7, [[I

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const v11, 0x10100a7

    aput v11, v9, v10

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-array v9, v9, [I

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const v13, 0x10100a7

    aput v13, v11, v12

    iget v12, p0, Lti/modules/titanium/ui/widget/TiUIButton;->defaultColor:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v10

    aput v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v10

    aput v10, v8, v9

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/AppCompatButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 159
    :cond_3
    const-string v6, "selectedColor"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 160
    new-instance v6, Landroid/content/res/ColorStateList;

    const/4 v7, 0x2

    new-array v7, v7, [[I

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const v11, 0x10100a7

    aput v11, v9, v10

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-array v9, v9, [I

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v10

    aput v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [I

    iget v12, p0, Lti/modules/titanium/ui/widget/TiUIButton;->defaultColor:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v10

    aput v10, v8, v9

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/AppCompatButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 171
    :cond_4
    const-string v6, "font"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 172
    check-cast p3, Ljava/util/HashMap;

    .end local p3    # "newValue":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 173
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string v6, "textAlign"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 174
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatButton;->requestLayout()V

    goto/16 :goto_0

    .line 176
    :cond_6
    const-string v6, "verticalAlign"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 177
    const/4 v6, 0x0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatButton;->requestLayout()V

    goto/16 :goto_0

    .line 179
    :cond_7
    const-string v6, "image"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 180
    const/4 v4, 0x0

    .line 181
    .local v4, "drawableRef":Lorg/appcelerator/titanium/view/TiDrawableReference;
    move-object/from16 v0, p3

    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 182
    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v4

    .line 186
    :cond_8
    :goto_1
    if-eqz v4, :cond_1

    .line 187
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 188
    .local v5, "image":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/support/v7/widget/AppCompatButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 183
    .end local v5    # "image":Landroid/graphics/drawable/Drawable;
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p3

    instance-of v6, v0, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v6, :cond_8

    .line 184
    invoke-virtual/range {p4 .. p4}, Lorg/appcelerator/kroll/KrollProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast p3, Lorg/appcelerator/titanium/TiBlob;

    .end local p3    # "newValue":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-static {v6, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v4

    goto :goto_1

    .line 190
    .end local v4    # "drawableRef":Lorg/appcelerator/titanium/view/TiDrawableReference;
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_a
    const-string v6, "shadowOffset"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 191
    move-object/from16 v0, p3

    instance-of v6, v0, Ljava/util/HashMap;

    if-eqz v6, :cond_1

    move-object/from16 v3, p3

    .line 192
    check-cast v3, Ljava/util/HashMap;

    .line 193
    .local v3, "dict":Ljava/util/HashMap;
    const-string v6, "x"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v6

    iput v6, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowX:F

    .line 194
    const-string v6, "y"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v6

    iput v6, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowY:F

    .line 195
    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowRadius:F

    iget v7, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowX:F

    iget v8, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowY:F

    iget v9, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowColor:I

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/support/v7/widget/AppCompatButton;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    .line 197
    .end local v3    # "dict":Ljava/util/HashMap;
    :cond_b
    const-string v6, "shadowRadius"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 198
    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v0, p3

    invoke-static {v0, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v6

    iput v6, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowRadius:F

    .line 199
    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowRadius:F

    iget v7, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowX:F

    iget v8, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowY:F

    iget v9, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowColor:I

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/support/v7/widget/AppCompatButton;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    .line 200
    :cond_c
    const-string v6, "shadowColor"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 201
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowColor:I

    .line 202
    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowRadius:F

    iget v7, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowX:F

    iget v8, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowY:F

    iget v9, p0, Lti/modules/titanium/ui/widget/TiUIButton;->shadowColor:I

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/support/v7/widget/AppCompatButton;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    .line 204
    :cond_d
    invoke-super/range {p0 .. p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method
