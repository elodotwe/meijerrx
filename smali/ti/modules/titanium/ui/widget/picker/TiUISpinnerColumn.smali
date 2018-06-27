.class public Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUISpinnerColumn.java"

# interfaces
.implements Lkankan/wheel/widget/WheelView$OnItemSelectedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUISpinnerColumn"


# instance fields
.field private suppressItemSelected:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->suppressItemSelected:Z

    .line 38
    instance-of v0, p1, Lti/modules/titanium/ui/PickerColumnProxy;

    if-eqz v0, :cond_0

    check-cast p1, Lti/modules/titanium/ui/PickerColumnProxy;

    .end local p1    # "proxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {p1}, Lti/modules/titanium/ui/PickerColumnProxy;->getCreateIfMissing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 41
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->refreshNativeView()V

    .line 42
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->preselectRow()V

    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0, p0}, Lkankan/wheel/widget/WheelView;->setItemSelectedListener(Lkankan/wheel/widget/WheelView$OnItemSelectedListener;)V

    .line 44
    return-void
.end method

.method private preselectRow()V
    .locals 4

    .prologue
    .line 48
    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    instance-of v3, v3, Lti/modules/titanium/ui/PickerProxy;

    if-eqz v3, :cond_0

    .line 49
    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/PickerProxy;

    invoke-virtual {v3}, Lti/modules/titanium/ui/PickerProxy;->getPreselectedRows()Ljava/util/ArrayList;

    move-result-object v1

    .line 50
    .local v1, "preselectedRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 61
    .end local v1    # "preselectedRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local v1    # "preselectedRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v3, Lti/modules/titanium/ui/PickerColumnProxy;

    invoke-virtual {v3}, Lti/modules/titanium/ui/PickerColumnProxy;->getThisColumnIndex()I

    move-result v0

    .line 54
    .local v0, "columnIndex":I
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 55
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 56
    .local v2, "rowIndex":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    .line 57
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->selectRow(I)V

    goto :goto_0
.end method

.method private setFontProperties()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 85
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v10, Lkankan/wheel/widget/WheelView;

    .line 86
    .local v10, "view":Lkankan/wheel/widget/WheelView;
    const/4 v3, 0x0

    .line 87
    .local v3, "fontFamily":Ljava/lang/String;
    const/4 v4, 0x0

    .line 88
    .local v4, "fontSize":Ljava/lang/Float;
    const/4 v6, 0x0

    .line 89
    .local v6, "fontWeight":Ljava/lang/String;
    const/4 v8, 0x0

    .line 90
    .local v8, "typeface":Landroid/graphics/Typeface;
    iget-object v13, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v13}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 91
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v13, "font"

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "font"

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Ljava/util/HashMap;

    if-eqz v13, :cond_2

    .line 92
    const-string v13, "font"

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    .line 93
    .local v2, "font":Lorg/appcelerator/kroll/KrollDict;
    const-string v13, "fontSize"

    invoke-virtual {v2, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 94
    const-string v13, "fontSize"

    invoke-static {v2, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, "sFontSize":Ljava/lang/String;
    new-instance v4, Ljava/lang/Float;

    .end local v4    # "fontSize":Ljava/lang/Float;
    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSize(Ljava/lang/String;)F

    move-result v13

    invoke-direct {v4, v13}, Ljava/lang/Float;-><init>(F)V

    .line 97
    .end local v7    # "sFontSize":Ljava/lang/String;
    .restart local v4    # "fontSize":Ljava/lang/Float;
    :cond_0
    const-string v13, "fontFamily"

    invoke-virtual {v2, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 98
    const-string v13, "fontFamily"

    invoke-static {v2, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    :cond_1
    const-string v13, "fontWeight"

    invoke-virtual {v2, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 101
    const-string v13, "fontWeight"

    invoke-static {v2, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 104
    .end local v2    # "font":Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    const-string v13, "font-family"

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 105
    const-string v13, "font-family"

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    :cond_3
    const-string v13, "font-size"

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 108
    const-string v13, "font-size"

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 109
    .restart local v7    # "sFontSize":Ljava/lang/String;
    new-instance v4, Ljava/lang/Float;

    .end local v4    # "fontSize":Ljava/lang/Float;
    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSize(Ljava/lang/String;)F

    move-result v13

    invoke-direct {v4, v13}, Ljava/lang/Float;-><init>(F)V

    .line 111
    .end local v7    # "sFontSize":Ljava/lang/String;
    .restart local v4    # "fontSize":Ljava/lang/Float;
    :cond_4
    const-string v13, "font-weight"

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 112
    const-string v13, "font-weight"

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 114
    :cond_5
    if-eqz v3, :cond_6

    .line 115
    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 117
    :cond_6
    const/4 v9, 0x0

    .line 118
    .local v9, "typefaceWeight":Ljava/lang/Integer;
    if-eqz v6, :cond_7

    .line 119
    new-instance v9, Ljava/lang/Integer;

    .end local v9    # "typefaceWeight":Ljava/lang/Integer;
    const/4 v13, 0x0

    invoke-static {v6, v13}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypefaceStyle(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-direct {v9, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 122
    .restart local v9    # "typefaceWeight":Ljava/lang/Integer;
    :cond_7
    const/4 v1, 0x0

    .line 123
    .local v1, "dirty":Z
    if-eqz v8, :cond_9

    .line 124
    if-nez v1, :cond_8

    invoke-virtual {v10}, Lkankan/wheel/widget/WheelView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    :cond_8
    move v1, v12

    .line 125
    :goto_0
    invoke-virtual {v10, v8}, Lkankan/wheel/widget/WheelView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    :cond_9
    if-eqz v9, :cond_b

    .line 128
    if-nez v1, :cond_a

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v10}, Lkankan/wheel/widget/WheelView;->getTypefaceWeight()I

    move-result v14

    if-eq v13, v14, :cond_10

    :cond_a
    move v1, v12

    .line 129
    :goto_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v10, v13}, Lkankan/wheel/widget/WheelView;->setTypefaceWeight(I)V

    .line 131
    :cond_b
    if-eqz v4, :cond_d

    .line 132
    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v5

    .line 133
    .local v5, "fontSizeInt":I
    if-nez v1, :cond_c

    invoke-virtual {v10}, Lkankan/wheel/widget/WheelView;->getTextSize()I

    move-result v13

    if-eq v5, v13, :cond_11

    :cond_c
    move v1, v12

    .line 134
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 136
    .end local v5    # "fontSizeInt":I
    :cond_d
    if-eqz v1, :cond_e

    .line 137
    iget-object v11, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v11, Lti/modules/titanium/ui/PickerColumnProxy;

    invoke-virtual {v11}, Lti/modules/titanium/ui/PickerColumnProxy;->parentShouldRequestLayout()V

    .line 139
    :cond_e
    return-void

    :cond_f
    move v1, v11

    .line 124
    goto :goto_0

    :cond_10
    move v1, v11

    .line 128
    goto :goto_1

    .restart local v5    # "fontSizeInt":I
    :cond_11
    move v1, v11

    .line 133
    goto :goto_2
.end method


# virtual methods
.method public forceRequestLayout()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    instance-of v0, v0, Lkankan/wheel/widget/WheelView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->fullLayoutReset()V

    .line 224
    :cond_0
    return-void
.end method

.method public getSelectedRowIndex()I
    .locals 2

    .prologue
    .line 212
    const/4 v0, -0x1

    .line 213
    .local v0, "result":I
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    instance-of v1, v1, Lkankan/wheel/widget/WheelView;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v1, Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v0

    .line 216
    :cond_0
    return v0
.end method

.method public onItemSelected(Lkankan/wheel/widget/WheelView;I)V
    .locals 1
    .param p1, "view"    # Lkankan/wheel/widget/WheelView;
    .param p2, "index"    # I

    .prologue
    .line 204
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->suppressItemSelected:Z

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v0, Lti/modules/titanium/ui/PickerColumnProxy;

    invoke-virtual {v0, p2}, Lti/modules/titanium/ui/PickerColumnProxy;->onItemSelected(I)V

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 66
    const-string v0, "font"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyStartingWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->setFontProperties()V

    .line 69
    :cond_0
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    new-instance v1, Ljava/lang/Integer;

    const-string v2, "color"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setTextColor(I)V

    .line 72
    :cond_1
    const-string v0, "visibleItems"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    const-string v1, "visibleItems"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setVisibleItems(I)V

    .line 77
    :goto_0
    const-string v0, "selectionIndicator"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    const-string v1, "selectionIndicator"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setShowSelectionIndicator(Z)V

    .line 80
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->refreshNativeView()V

    .line 81
    return-void

    .line 75
    :cond_3
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setVisibleItems(I)V

    goto :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 145
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->setFontProperties()V

    .line 156
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    new-instance v1, Ljava/lang/Integer;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setTextColor(I)V

    goto :goto_0

    .line 149
    :cond_1
    const-string v0, "visibleItems"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setVisibleItems(I)V

    goto :goto_0

    .line 151
    :cond_2
    const-string v0, "selectionIndicator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setShowSelectionIndicator(Z)V

    goto :goto_0

    .line 154
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public refreshNativeView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 161
    const/4 v5, 0x0

    .line 162
    .local v5, "view":Lkankan/wheel/widget/WheelView;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    instance-of v6, v6, Lkankan/wheel/widget/WheelView;

    if-eqz v6, :cond_2

    .line 163
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    .end local v5    # "view":Lkankan/wheel/widget/WheelView;
    check-cast v5, Lkankan/wheel/widget/WheelView;

    .line 170
    .restart local v5    # "view":Lkankan/wheel/widget/WheelView;
    :goto_0
    invoke-virtual {v5}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v4

    .line 171
    .local v4, "selectedRow":I
    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v6, Lti/modules/titanium/ui/PickerColumnProxy;

    invoke-virtual {v6}, Lti/modules/titanium/ui/PickerColumnProxy;->getRows()[Lti/modules/titanium/ui/PickerRowProxy;

    move-result-object v3

    .line 172
    .local v3, "rows":[Lti/modules/titanium/ui/PickerRowProxy;
    if-nez v3, :cond_3

    move v2, v7

    .line 173
    .local v2, "rowCount":I
    :goto_1
    if-lt v4, v2, :cond_0

    .line 174
    const/4 v6, 0x1

    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->suppressItemSelected:Z

    .line 175
    if-lez v2, :cond_4

    .line 176
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 180
    :goto_2
    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->suppressItemSelected:Z

    .line 182
    :cond_0
    const/4 v0, 0x0

    .line 183
    .local v0, "adapter":Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;
    if-eqz v3, :cond_1

    .line 184
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;

    .end local v0    # "adapter":Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;
    invoke-direct {v0, v3}, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;-><init>([Ljava/lang/Object;)V

    .line 186
    .restart local v0    # "adapter":Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;
    :cond_1
    invoke-virtual {v5, v0}, Lkankan/wheel/widget/WheelView;->setAdapter(Lkankan/wheel/widget/WheelAdapter;)V

    .line 187
    return-void

    .line 165
    .end local v0    # "adapter":Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;
    .end local v2    # "rowCount":I
    .end local v3    # "rows":[Lti/modules/titanium/ui/PickerRowProxy;
    .end local v4    # "selectedRow":I
    :cond_2
    new-instance v5, Lkankan/wheel/widget/WheelView;

    .end local v5    # "view":Lkankan/wheel/widget/WheelView;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lkankan/wheel/widget/WheelView;-><init>(Landroid/content/Context;)V

    .line 166
    .restart local v5    # "view":Lkankan/wheel/widget/WheelView;
    new-instance v1, Ljava/lang/Float;

    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiUIHelper;->getDefaultFontSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSize(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v6}, Ljava/lang/Float;-><init>(F)V

    .line 167
    .local v1, "defaultFontSize":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 168
    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->setNativeView(Landroid/view/View;)V

    goto :goto_0

    .line 172
    .end local v1    # "defaultFontSize":Ljava/lang/Float;
    .restart local v3    # "rows":[Lti/modules/titanium/ui/PickerRowProxy;
    .restart local v4    # "selectedRow":I
    :cond_3
    array-length v2, v3

    goto :goto_1

    .line 178
    .restart local v2    # "rowCount":I
    :cond_4
    invoke-virtual {v5, v7}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    goto :goto_2
.end method

.method public selectRow(I)V
    .locals 4
    .param p1, "rowIndex"    # I

    .prologue
    .line 191
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    instance-of v1, v1, Lkankan/wheel/widget/WheelView;

    if-eqz v1, :cond_1

    .line 192
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    .line 193
    .local v0, "view":Lkankan/wheel/widget/WheelView;
    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->getAdapter()Lkankan/wheel/widget/WheelAdapter;

    move-result-object v1

    invoke-interface {v1}, Lkankan/wheel/widget/WheelAdapter;->getItemsCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 194
    :cond_0
    const-string v1, "TiUISpinnerColumn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring attempt to select out-of-bound row index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v0    # "view":Lkankan/wheel/widget/WheelView;
    :cond_1
    :goto_0
    return-void

    .line 197
    .restart local v0    # "view":Lkankan/wheel/widget/WheelView;
    :cond_2
    invoke-virtual {v0, p1}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    goto :goto_0
.end method
