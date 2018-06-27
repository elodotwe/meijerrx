.class public Lti/modules/titanium/ui/widget/TiUICardView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUICardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;,
        Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUICardView"


# instance fields
.field public paddingBottom:I

.field public paddingLeft:I

.field public paddingRight:I

.field public paddingTop:I


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUICardView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUICardView;

    .prologue
    .line 26
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUICardView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUICardView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUICardView;

    .prologue
    .line 26
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUICardView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiUICardView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUICardView;

    .prologue
    .line 26
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUICardView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/TiUICardView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUICardView;

    .prologue
    .line 26
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUICardView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 1
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 96
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUICardView;->getNativeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUICardView;->getLayout()Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;->requestLayout()V

    .line 98
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 102
    :cond_0
    return-void
.end method

.method public getLayout()Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUICardView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "nativeView":Landroid/view/View;
    check-cast v0, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;

    .end local v0    # "nativeView":Landroid/view/View;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->access$400(Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;)Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;

    move-result-object v1

    return-object v1
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 21
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 132
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 135
    const/16 v16, 0x0

    .line 136
    .local v16, "view":Landroid/view/View;
    sget-object v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 138
    .local v4, "arrangement":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    const-string v17, "layout"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_29

    const-string v17, "layout"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "vertical"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_29

    .line 139
    sget-object v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 144
    :cond_0
    :goto_0
    new-instance v16, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;

    .end local v16    # "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiUICardView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;-><init>(Lti/modules/titanium/ui/widget/TiUICardView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    .line 145
    .restart local v16    # "view":Landroid/view/View;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Landroid/view/View;->setPadding(IIII)V

    .line 146
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v5, v16

    .line 147
    check-cast v5, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;

    .line 149
    .local v5, "cardview":Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;
    const-string v17, "cardBackgroundColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 150
    const-string v17, "cardBackgroundColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setCardBackgroundColor(I)V

    .line 151
    const-string v17, "TiUICardView"

    const-string v18, "The cardBackgroundColor property is deprecated, use backgroundColor instead."

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_1
    const-string v17, "backgroundColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 155
    const-string v17, "backgroundColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setCardBackgroundColor(I)V

    .line 158
    :cond_2
    const-string v17, "cardCornerRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 159
    const/4 v6, 0x0

    .line 160
    .local v6, "radius":F
    const-string v17, "cardCornerRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    const/16 v18, 0x6

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v8

    .line 161
    .local v8, "radiusDim":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v8, :cond_3

    .line 162
    invoke-virtual {v8, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v6, v0

    .line 164
    :cond_3
    invoke-virtual {v5, v6}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setRadius(F)V

    .line 165
    const-string v17, "TiUICardView"

    const-string v18, "The cardCornerRadius property is deprecated, use borderRadius instead."

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v6    # "radius":F
    .end local v8    # "radiusDim":Lorg/appcelerator/titanium/TiDimension;
    :cond_4
    const-string v17, "borderRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 169
    const/4 v6, 0x0

    .line 170
    .restart local v6    # "radius":F
    const-string v17, "borderRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    const/16 v18, 0x6

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v8

    .line 171
    .restart local v8    # "radiusDim":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v8, :cond_5

    .line 172
    invoke-virtual {v8, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v6, v0

    .line 174
    :cond_5
    invoke-virtual {v5, v6}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setRadius(F)V

    .line 177
    .end local v6    # "radius":F
    .end local v8    # "radiusDim":Lorg/appcelerator/titanium/TiDimension;
    :cond_6
    const-string v17, "cardUseCompatPadding"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 178
    const-string v17, "cardUseCompatPadding"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setUseCompatPadding(Z)V

    .line 179
    const-string v17, "TiUICardView"

    const-string v18, "The cardUseCompatPadding property is deprecated, use useCompatPadding instead."

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_7
    const-string v17, "useCompatPadding"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 183
    const-string v17, "useCompatPadding"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setUseCompatPadding(Z)V

    .line 186
    :cond_8
    const-string v17, "cardElevation"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 187
    const-string v17, "cardElevation"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setCardElevation(F)V

    .line 188
    const-string v17, "TiUICardView"

    const-string v18, "The cardElevation property is deprecated, use elevation instead."

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_9
    const-string v17, "elevation"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 192
    const-string v17, "elevation"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setCardElevation(F)V

    .line 195
    :cond_a
    const-string v17, "cardMaxElevation"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 196
    const-string v17, "cardMaxElevation"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setMaxCardElevation(F)V

    .line 197
    const-string v17, "TiUICardView"

    const-string v18, "The cardMaxElevation property is deprecated, use maxElevation instead."

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_b
    const-string v17, "maxElevation"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 201
    const-string v17, "maxElevation"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setMaxCardElevation(F)V

    .line 204
    :cond_c
    const-string v17, "cardPreventCornerOverlap"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 205
    const-string v17, "cardPreventCornerOverlap"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setPreventCornerOverlap(Z)V

    .line 206
    const-string v17, "TiUICardView"

    const-string v18, "The cardPreventCornerOverlap property is deprecated, use preventCornerOverlap instead."

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_d
    const-string v17, "preventCornerOverlap"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 210
    const-string v17, "preventCornerOverlap"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setPreventCornerOverlap(Z)V

    .line 213
    :cond_e
    const-string v17, "contentPadding"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 214
    const/4 v14, 0x0

    .line 215
    .local v14, "radiusRight":F
    const-string v17, "contentPadding"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v11

    .line 216
    .local v11, "radiusDimRight":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v11, :cond_f

    .line 217
    invoke-virtual {v11, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v14, v0

    .line 219
    :cond_f
    float-to-int v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lti/modules/titanium/ui/widget/TiUICardView;->paddingRight:I

    .line 221
    const/4 v7, 0x0

    .line 222
    .local v7, "radiusBottom":F
    const-string v17, "contentPadding"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v9

    .line 223
    .local v9, "radiusDimBottom":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v9, :cond_10

    .line 224
    invoke-virtual {v9, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v7, v0

    .line 226
    :cond_10
    float-to-int v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lti/modules/titanium/ui/widget/TiUICardView;->paddingBottom:I

    .line 228
    const/4 v13, 0x0

    .line 229
    .local v13, "radiusLeft":F
    const-string v17, "contentPadding"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v10

    .line 230
    .local v10, "radiusDimLeft":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v10, :cond_11

    .line 231
    invoke-virtual {v10, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v13, v0

    .line 233
    :cond_11
    float-to-int v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lti/modules/titanium/ui/widget/TiUICardView;->paddingLeft:I

    .line 235
    const/4 v15, 0x0

    .line 236
    .local v15, "radiusTop":F
    const-string v17, "contentPadding"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v12

    .line 237
    .local v12, "radiusDimTop":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v12, :cond_12

    .line 238
    invoke-virtual {v12, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v15, v0

    .line 240
    :cond_12
    float-to-int v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lti/modules/titanium/ui/widget/TiUICardView;->paddingTop:I

    .line 241
    const-string v17, "TiUICardView"

    const-string v18, "The contentPadding property is deprecated, use padding instead."

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v7    # "radiusBottom":F
    .end local v9    # "radiusDimBottom":Lorg/appcelerator/titanium/TiDimension;
    .end local v10    # "radiusDimLeft":Lorg/appcelerator/titanium/TiDimension;
    .end local v11    # "radiusDimRight":Lorg/appcelerator/titanium/TiDimension;
    .end local v12    # "radiusDimTop":Lorg/appcelerator/titanium/TiDimension;
    .end local v13    # "radiusLeft":F
    .end local v14    # "radiusRight":F
    .end local v15    # "radiusTop":F
    :cond_13
    const-string v17, "padding"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 245
    const/4 v14, 0x0

    .line 246
    .restart local v14    # "radiusRight":F
    const-string v17, "padding"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v11

    .line 247
    .restart local v11    # "radiusDimRight":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v11, :cond_14

    .line 248
    invoke-virtual {v11, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v14, v0

    .line 250
    :cond_14
    float-to-int v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lti/modules/titanium/ui/widget/TiUICardView;->paddingRight:I

    .line 252
    const/4 v7, 0x0

    .line 253
    .restart local v7    # "radiusBottom":F
    const-string v17, "padding"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v9

    .line 254
    .restart local v9    # "radiusDimBottom":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v9, :cond_15

    .line 255
    invoke-virtual {v9, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v7, v0

    .line 257
    :cond_15
    float-to-int v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lti/modules/titanium/ui/widget/TiUICardView;->paddingBottom:I

    .line 259
    const/4 v13, 0x0

    .line 260
    .restart local v13    # "radiusLeft":F
    const-string v17, "padding"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v10

    .line 261
    .restart local v10    # "radiusDimLeft":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v10, :cond_16

    .line 262
    invoke-virtual {v10, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v13, v0

    .line 264
    :cond_16
    float-to-int v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lti/modules/titanium/ui/widget/TiUICardView;->paddingLeft:I

    .line 266
    const/4 v15, 0x0

    .line 267
    .restart local v15    # "radiusTop":F
    const-string v17, "padding"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v12

    .line 268
    .restart local v12    # "radiusDimTop":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v12, :cond_17

    .line 269
    invoke-virtual {v12, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v15, v0

    .line 271
    :cond_17
    float-to-int v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lti/modules/titanium/ui/widget/TiUICardView;->paddingTop:I

    .line 274
    .end local v7    # "radiusBottom":F
    .end local v9    # "radiusDimBottom":Lorg/appcelerator/titanium/TiDimension;
    .end local v10    # "radiusDimLeft":Lorg/appcelerator/titanium/TiDimension;
    .end local v11    # "radiusDimRight":Lorg/appcelerator/titanium/TiDimension;
    .end local v12    # "radiusDimTop":Lorg/appcelerator/titanium/TiDimension;
    .end local v13    # "radiusLeft":F
    .end local v14    # "radiusRight":F
    .end local v15    # "radiusTop":F
    :cond_18
    const-string v17, "contentPaddingBottom"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 275
    const/4 v7, 0x0

    .line 276
    .restart local v7    # "radiusBottom":F
    const-string v17, "contentPaddingBottom"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v9

    .line 277
    .restart local v9    # "radiusDimBottom":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v9, :cond_19

    .line 278
    invoke-virtual {v9, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v7, v0

    .line 280
    :cond_19
    float-to-int v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lti/modules/titanium/ui/widget/TiUICardView;->paddingBottom:I

    .line 281
    const-string v17, "TiUICardView"

    const-string v18, "The contentPaddingBottom property is deprecated, use paddingBottom instead."

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v7    # "radiusBottom":F
    .end local v9    # "radiusDimBottom":Lorg/appcelerator/titanium/TiDimension;
    :cond_1a
    const-string v17, "contentPaddingLeft"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 285
    const/4 v13, 0x0

    .line 286
    .restart local v13    # "radiusLeft":F
    const-string v17, "contentPaddingLeft"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v10

    .line 287
    .restart local v10    # "radiusDimLeft":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v10, :cond_1b

    .line 288
    invoke-virtual {v10, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v13, v0

    .line 290
    :cond_1b
    float-to-int v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lti/modules/titanium/ui/widget/TiUICardView;->paddingLeft:I

    .line 291
    const-string v17, "TiUICardView"

    const-string v18, "The contentPaddingLeft property is deprecated, use paddingLeft instead."

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v10    # "radiusDimLeft":Lorg/appcelerator/titanium/TiDimension;
    .end local v13    # "radiusLeft":F
    :cond_1c
    const-string v17, "contentPaddingRight"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 295
    const/4 v14, 0x0

    .line 296
    .restart local v14    # "radiusRight":F
    const-string v17, "contentPaddingRight"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v11

    .line 297
    .restart local v11    # "radiusDimRight":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v11, :cond_1d

    .line 298
    invoke-virtual {v11, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v14, v0

    .line 300
    :cond_1d
    float-to-int v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lti/modules/titanium/ui/widget/TiUICardView;->paddingRight:I

    .line 301
    const-string v17, "TiUICardView"

    const-string v18, "The contentPaddingRight property is deprecated, use paddingRight instead."

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v11    # "radiusDimRight":Lorg/appcelerator/titanium/TiDimension;
    .end local v14    # "radiusRight":F
    :cond_1e
    const-string v17, "contentPaddingTop"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 305
    const/4 v15, 0x0

    .line 306
    .restart local v15    # "radiusTop":F
    const-string v17, "contentPaddingTop"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v12

    .line 307
    .restart local v12    # "radiusDimTop":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v12, :cond_1f

    .line 308
    invoke-virtual {v12, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v15, v0

    .line 310
    :cond_1f
    float-to-int v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lti/modules/titanium/ui/widget/TiUICardView;->paddingTop:I

    .line 311
    const-string v17, "TiUICardView"

    const-string v18, "The contentPaddingTop property is deprecated, use paddingTop instead."

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v12    # "radiusDimTop":Lorg/appcelerator/titanium/TiDimension;
    .end local v15    # "radiusTop":F
    :cond_20
    const-string v17, "paddingBottom"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 315
    const/4 v7, 0x0

    .line 316
    .restart local v7    # "radiusBottom":F
    const-string v17, "paddingBottom"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v9

    .line 317
    .restart local v9    # "radiusDimBottom":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v9, :cond_21

    .line 318
    invoke-virtual {v9, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v7, v0

    .line 320
    :cond_21
    float-to-int v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lti/modules/titanium/ui/widget/TiUICardView;->paddingBottom:I

    .line 323
    .end local v7    # "radiusBottom":F
    .end local v9    # "radiusDimBottom":Lorg/appcelerator/titanium/TiDimension;
    :cond_22
    const-string v17, "paddingLeft"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_24

    .line 324
    const/4 v13, 0x0

    .line 325
    .restart local v13    # "radiusLeft":F
    const-string v17, "paddingLeft"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v10

    .line 326
    .restart local v10    # "radiusDimLeft":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v10, :cond_23

    .line 327
    invoke-virtual {v10, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v13, v0

    .line 329
    :cond_23
    float-to-int v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lti/modules/titanium/ui/widget/TiUICardView;->paddingLeft:I

    .line 332
    .end local v10    # "radiusDimLeft":Lorg/appcelerator/titanium/TiDimension;
    .end local v13    # "radiusLeft":F
    :cond_24
    const-string v17, "paddingRight"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_26

    .line 333
    const/4 v14, 0x0

    .line 334
    .restart local v14    # "radiusRight":F
    const-string v17, "paddingRight"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v11

    .line 335
    .restart local v11    # "radiusDimRight":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v11, :cond_25

    .line 336
    invoke-virtual {v11, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v14, v0

    .line 338
    :cond_25
    float-to-int v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lti/modules/titanium/ui/widget/TiUICardView;->paddingRight:I

    .line 341
    .end local v11    # "radiusDimRight":Lorg/appcelerator/titanium/TiDimension;
    .end local v14    # "radiusRight":F
    :cond_26
    const-string v17, "paddingTop"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_28

    .line 342
    const/4 v15, 0x0

    .line 343
    .restart local v15    # "radiusTop":F
    const-string v17, "paddingTop"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v12

    .line 344
    .restart local v12    # "radiusDimTop":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v12, :cond_27

    .line 345
    invoke-virtual {v12, v5}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v15, v0

    .line 347
    :cond_27
    float-to-int v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lti/modules/titanium/ui/widget/TiUICardView;->paddingTop:I

    .line 350
    .end local v12    # "radiusDimTop":Lorg/appcelerator/titanium/TiDimension;
    .end local v15    # "radiusTop":F
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingTop:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingRight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingBottom:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setContentPadding(IIII)V

    .line 352
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUICardView;->setNativeView(Landroid/view/View;)V

    .line 354
    return-void

    .line 140
    .end local v5    # "cardview":Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;
    :cond_29
    const-string v17, "layout"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "layout"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "horizontal"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 141
    sget-object v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto/16 :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 17
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 359
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 360
    const-string v13, "TiUICardView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Property: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " old: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " new: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DEBUG_MODE"

    invoke-static {v13, v14, v15}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiUICardView;->getNativeView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;

    .line 365
    .local v2, "cardview":Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;
    const-string v13, "cardBackgroundColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "backgroundColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 366
    :cond_1
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v2, v13}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setCardBackgroundColor(I)V

    .line 367
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->requestLayout()V

    .line 368
    const-string v13, "cardBackgroundColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 369
    const-string v13, "TiUICardView"

    const-string v14, "The cardBackgroundColor property is deprecated, use backgroundColor instead."

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_2
    :goto_0
    return-void

    .line 371
    :cond_3
    const-string v13, "cardCornerRadius"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "borderRadius"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 372
    :cond_4
    const/4 v3, 0x0

    .line 373
    .local v3, "radius":F
    const/4 v13, 0x6

    move-object/from16 v0, p3

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    .line 374
    .local v5, "radiusDim":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v5, :cond_5

    .line 375
    invoke-virtual {v5, v2}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v14

    double-to-float v3, v14

    .line 377
    :cond_5
    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setRadius(F)V

    .line 378
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->requestLayout()V

    .line 379
    const-string v13, "cardCornerRadius"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 380
    const-string v13, "TiUICardView"

    const-string v14, "The cardCornerRadius property is deprecated, use borderRadius instead."

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    .end local v3    # "radius":F
    .end local v5    # "radiusDim":Lorg/appcelerator/titanium/TiDimension;
    :cond_6
    const-string v13, "cardElevation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "elevation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 383
    :cond_7
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v13

    invoke-virtual {v2, v13}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setCardElevation(F)V

    .line 384
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->requestLayout()V

    .line 385
    const-string v13, "cardElevation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 386
    const-string v13, "TiUICardView"

    const-string v14, "The cardElevation property is deprecated, use elevation instead."

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_8
    const-string v13, "cardPreventCornerOverlap"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "preventCornerOverlap"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 389
    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v13

    invoke-virtual {v2, v13}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setPreventCornerOverlap(Z)V

    .line 390
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->requestLayout()V

    .line 391
    const-string v13, "cardPreventCornerOverlap"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 392
    const-string v13, "TiUICardView"

    const-string v14, "The cardPreventCornerOverlap property is deprecated, use preventCornerOverlap instead."

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 394
    :cond_a
    const-string v13, "cardUseCompatPadding"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "useCompatPadding"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 395
    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v13

    invoke-virtual {v2, v13}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setUseCompatPadding(Z)V

    .line 396
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->requestLayout()V

    .line 397
    const-string v13, "cardUseCompatPadding"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 398
    const-string v13, "TiUICardView"

    const-string v14, "The cardUseCompatPadding property is deprecated, use preventCornerOverlap instead."

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 400
    :cond_c
    const-string v13, "contentPadding"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    const-string v13, "padding"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 401
    :cond_d
    const/4 v11, 0x0

    .line 402
    .local v11, "radiusRight":F
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v8

    .line 403
    .local v8, "radiusDimRight":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v8, :cond_e

    .line 404
    invoke-virtual {v8, v2}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v14

    double-to-float v11, v14

    .line 406
    :cond_e
    float-to-int v13, v11

    move-object/from16 v0, p0

    iput v13, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingRight:I

    .line 408
    const/4 v4, 0x0

    .line 409
    .local v4, "radiusBottom":F
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v6

    .line 410
    .local v6, "radiusDimBottom":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v6, :cond_f

    .line 411
    invoke-virtual {v6, v2}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v14

    double-to-float v4, v14

    .line 413
    :cond_f
    float-to-int v13, v4

    move-object/from16 v0, p0

    iput v13, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingBottom:I

    .line 415
    const/4 v10, 0x0

    .line 416
    .local v10, "radiusLeft":F
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v7

    .line 417
    .local v7, "radiusDimLeft":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v7, :cond_10

    .line 418
    invoke-virtual {v7, v2}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v14

    double-to-float v10, v14

    .line 420
    :cond_10
    float-to-int v13, v10

    move-object/from16 v0, p0

    iput v13, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingLeft:I

    .line 422
    const/4 v12, 0x0

    .line 423
    .local v12, "radiusTop":F
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v9

    .line 424
    .local v9, "radiusDimTop":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v9, :cond_11

    .line 425
    invoke-virtual {v9, v2}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v14

    double-to-float v12, v14

    .line 427
    :cond_11
    float-to-int v13, v12

    move-object/from16 v0, p0

    iput v13, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingTop:I

    .line 429
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingTop:I

    move-object/from16 v0, p0

    iget v15, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingRight:I

    move-object/from16 v0, p0

    iget v0, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingBottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setContentPadding(IIII)V

    .line 430
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->requestLayout()V

    .line 431
    const-string v13, "contentPadding"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 432
    const-string v13, "TiUICardView"

    const-string v14, "The contentPadding property is deprecated, use padding instead."

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 434
    .end local v4    # "radiusBottom":F
    .end local v6    # "radiusDimBottom":Lorg/appcelerator/titanium/TiDimension;
    .end local v7    # "radiusDimLeft":Lorg/appcelerator/titanium/TiDimension;
    .end local v8    # "radiusDimRight":Lorg/appcelerator/titanium/TiDimension;
    .end local v9    # "radiusDimTop":Lorg/appcelerator/titanium/TiDimension;
    .end local v10    # "radiusLeft":F
    .end local v11    # "radiusRight":F
    .end local v12    # "radiusTop":F
    :cond_12
    const-string v13, "contentPaddingBottom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_13

    const-string v13, "paddingBottom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 435
    :cond_13
    const/4 v4, 0x0

    .line 436
    .restart local v4    # "radiusBottom":F
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v6

    .line 437
    .restart local v6    # "radiusDimBottom":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v6, :cond_14

    .line 438
    invoke-virtual {v6, v2}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v14

    double-to-float v4, v14

    .line 440
    :cond_14
    float-to-int v13, v4

    move-object/from16 v0, p0

    iput v13, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingBottom:I

    .line 441
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingTop:I

    move-object/from16 v0, p0

    iget v15, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingRight:I

    move-object/from16 v0, p0

    iget v0, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingBottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setContentPadding(IIII)V

    .line 442
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->requestLayout()V

    .line 443
    const-string v13, "contentPaddingBottom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 444
    const-string v13, "TiUICardView"

    const-string v14, "The contentPaddingBottom property is deprecated, use paddingBottom instead."

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 446
    .end local v4    # "radiusBottom":F
    .end local v6    # "radiusDimBottom":Lorg/appcelerator/titanium/TiDimension;
    :cond_15
    const-string v13, "contentPaddingLeft"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    const-string v13, "paddingLeft"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 447
    :cond_16
    const/4 v10, 0x0

    .line 448
    .restart local v10    # "radiusLeft":F
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v7

    .line 449
    .restart local v7    # "radiusDimLeft":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v7, :cond_17

    .line 450
    invoke-virtual {v7, v2}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v14

    double-to-float v10, v14

    .line 452
    :cond_17
    float-to-int v13, v10

    move-object/from16 v0, p0

    iput v13, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingLeft:I

    .line 453
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingTop:I

    move-object/from16 v0, p0

    iget v15, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingRight:I

    move-object/from16 v0, p0

    iget v0, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingBottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setContentPadding(IIII)V

    .line 454
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->requestLayout()V

    .line 455
    const-string v13, "contentPaddingLeft"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 456
    const-string v13, "TiUICardView"

    const-string v14, "The contentPaddingLeft property is deprecated, use paddingLeft instead."

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 458
    .end local v7    # "radiusDimLeft":Lorg/appcelerator/titanium/TiDimension;
    .end local v10    # "radiusLeft":F
    :cond_18
    const-string v13, "contentPaddingRight"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19

    const-string v13, "paddingRight"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 459
    :cond_19
    const/4 v11, 0x0

    .line 460
    .restart local v11    # "radiusRight":F
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v8

    .line 461
    .restart local v8    # "radiusDimRight":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v8, :cond_1a

    .line 462
    invoke-virtual {v8, v2}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v14

    double-to-float v11, v14

    .line 464
    :cond_1a
    float-to-int v13, v11

    move-object/from16 v0, p0

    iput v13, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingRight:I

    .line 465
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingTop:I

    move-object/from16 v0, p0

    iget v15, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingRight:I

    move-object/from16 v0, p0

    iget v0, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingBottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setContentPadding(IIII)V

    .line 466
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->requestLayout()V

    .line 467
    const-string v13, "contentPaddingRight"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 468
    const-string v13, "TiUICardView"

    const-string v14, "The contentPaddingRight property is deprecated, use paddingRight instead."

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 470
    .end local v8    # "radiusDimRight":Lorg/appcelerator/titanium/TiDimension;
    .end local v11    # "radiusRight":F
    :cond_1b
    const-string v13, "contentPaddingTop"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    const-string v13, "paddingTop"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 471
    :cond_1c
    const/4 v12, 0x0

    .line 472
    .restart local v12    # "radiusTop":F
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v9

    .line 473
    .restart local v9    # "radiusDimTop":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v9, :cond_1d

    .line 474
    invoke-virtual {v9, v2}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v14

    double-to-float v12, v14

    .line 476
    :cond_1d
    float-to-int v13, v12

    move-object/from16 v0, p0

    iput v13, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingTop:I

    .line 477
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingTop:I

    move-object/from16 v0, p0

    iget v15, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingRight:I

    move-object/from16 v0, p0

    iget v0, v0, Lti/modules/titanium/ui/widget/TiUICardView;->paddingBottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->setContentPadding(IIII)V

    .line 478
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUICardView$TiCardView;->requestLayout()V

    .line 479
    const-string v13, "contentPaddingTop"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 480
    const-string v13, "TiUICardView"

    const-string v14, "The contentPaddingTop property is deprecated, use paddingTop instead."

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 483
    .end local v9    # "radiusDimTop":Lorg/appcelerator/titanium/TiDimension;
    .end local v12    # "radiusTop":F
    :cond_1e
    invoke-super/range {p0 .. p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method public remove(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 3
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "cv":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUICardView;->getLayout()Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;

    move-result-object v1

    .line 111
    .local v1, "nv":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 112
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "nv":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 113
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUICardView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 114
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/appcelerator/titanium/view/TiUIView;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 118
    .end local v0    # "cv":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public resort()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUICardView;->getLayout()Lti/modules/titanium/ui/widget/TiUICardView$TiUICardViewLayout;

    move-result-object v0

    .line 124
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v1, :cond_0

    .line 125
    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->resort()V

    .line 127
    :cond_0
    return-void
.end method
