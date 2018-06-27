.class public Lti/modules/titanium/ui/widget/TiUILabel;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUILabel.java"


# static fields
.field private static final DEFAULT_SHADOW_RADIUS:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "TiUILabel"


# instance fields
.field private defaultColor:I

.field private ellipsize:Landroid/text/TextUtils$TruncateAt;

.field private shadowColor:I

.field private shadowRadius:F

.field private shadowX:F

.field private shadowY:F

.field private wordWrap:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 6
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 55
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUILabel;->wordWrap:Z

    .line 48
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowRadius:F

    .line 49
    iput v2, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowX:F

    .line 50
    iput v2, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowY:F

    .line 51
    iput v4, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowColor:I

    .line 56
    const-string v1, "TiUILabel"

    const-string v2, "Creating a text label"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lti/modules/titanium/ui/widget/TiUILabel$1;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUILabel;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lti/modules/titanium/ui/widget/TiUILabel$1;-><init>(Lti/modules/titanium/ui/widget/TiUILabel;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 132
    .local v0, "tv":Landroid/widget/TextView;
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 133
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 134
    const v1, 0x20001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 135
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 136
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 137
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 138
    invoke-static {v0, v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 139
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUILabel;->defaultColor:I

    .line 140
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUILabel;->setNativeView(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUILabel;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUILabel;

    .prologue
    .line 40
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUILabel;->wordWrap:Z

    return v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUILabel;)Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUILabel;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiUILabel;)Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUILabel;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/TiUILabel;)Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUILabel;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    return-object v0
.end method


# virtual methods
.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 14
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 149
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUILabel;->getNativeView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 151
    .local v7, "tv":Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 154
    .local v4, "needShadow":Z
    const-string v10, "html"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 155
    const-string v10, "html"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "html":Ljava/lang/String;
    if-nez v3, :cond_13

    .line 158
    const-string v10, "text"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 159
    const-string v10, "text"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .end local v3    # "html":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v10, "includeFontPadding"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 182
    const-string v10, "includeFontPadding"

    const/4 v11, 0x1

    invoke-static {p1, v10, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 184
    :cond_1
    const-string v10, "lines"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 185
    const-string v10, "lines"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 187
    :cond_2
    const-string v10, "maxLines"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 188
    const-string v10, "maxLines"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 191
    :cond_3
    const-string v10, "color"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 192
    const-string v10, "color"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 193
    .local v1, "color":Ljava/lang/Object;
    if-nez v1, :cond_17

    .line 194
    iget v10, p0, Lti/modules/titanium/ui/widget/TiUILabel;->defaultColor:I

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    .end local v1    # "color":Ljava/lang/Object;
    :cond_4
    :goto_1
    const-string v10, "highlightedColor"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 200
    const-string v10, "highlightedColor"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 202
    :cond_5
    const-string v10, "font"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 203
    const-string v10, "font"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v10

    invoke-static {v7, v10}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 205
    :cond_6
    const-string v10, "textAlign"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "verticalAlign"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 206
    :cond_7
    const-string v10, "textAlign"

    const-string v11, "left"

    invoke-virtual {p1, v10, v11}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "textAlign":Ljava/lang/String;
    const-string v10, "verticalAlign"

    const-string v11, "middle"

    invoke-virtual {p1, v10, v11}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 208
    .local v9, "verticalAlign":Ljava/lang/String;
    invoke-static {v7, v6, v9}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .end local v6    # "textAlign":Ljava/lang/String;
    .end local v9    # "verticalAlign":Ljava/lang/String;
    :cond_8
    const-string v10, "ellipsize"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 213
    const-string v10, "ellipsize"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 215
    .local v8, "value":Ljava/lang/Object;
    instance-of v10, v8, Ljava/lang/Boolean;

    if-eqz v10, :cond_9

    move-object v10, v8

    .line 216
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_18

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_2
    iput-object v10, p0, Lti/modules/titanium/ui/widget/TiUILabel;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 219
    :cond_9
    instance-of v10, v8, Ljava/lang/Integer;

    if-eqz v10, :cond_a

    .line 220
    check-cast v8, Ljava/lang/Integer;

    .end local v8    # "value":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 233
    const/4 v10, 0x0

    iput-object v10, p0, Lti/modules/titanium/ui/widget/TiUILabel;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 236
    :cond_a
    :goto_3
    iget-object v10, p0, Lti/modules/titanium/ui/widget/TiUILabel;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 239
    :cond_b
    const-string v10, "wordWrap"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 240
    const-string v10, "wordWrap"

    const/4 v11, 0x1

    invoke-static {p1, v10, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lti/modules/titanium/ui/widget/TiUILabel;->wordWrap:Z

    .line 241
    iget-boolean v10, p0, Lti/modules/titanium/ui/widget/TiUILabel;->wordWrap:Z

    if-nez v10, :cond_19

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 244
    :cond_c
    const-string v10, "shadowOffset"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 245
    const-string v10, "shadowOffset"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 246
    .restart local v8    # "value":Ljava/lang/Object;
    instance-of v10, v8, Ljava/util/HashMap;

    if-eqz v10, :cond_d

    .line 247
    const/4 v4, 0x1

    move-object v2, v8

    .line 248
    check-cast v2, Ljava/util/HashMap;

    .line 249
    .local v2, "dict":Ljava/util/HashMap;
    const-string v10, "x"

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v10

    iput v10, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowX:F

    .line 250
    const-string v10, "y"

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v10

    iput v10, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowY:F

    .line 253
    .end local v2    # "dict":Ljava/util/HashMap;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_d
    const-string v10, "shadowRadius"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 254
    const/4 v4, 0x1

    .line 255
    const-string v10, "shadowRadius"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-static {v10, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v10

    iput v10, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowRadius:F

    .line 257
    :cond_e
    const-string v10, "shadowColor"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 258
    const/4 v4, 0x1

    .line 259
    const-string v10, "shadowColor"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowColor:I

    .line 261
    :cond_f
    if-eqz v4, :cond_10

    .line 262
    iget v10, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowRadius:F

    iget v11, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowX:F

    iget v12, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowY:F

    iget v13, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowColor:I

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 264
    :cond_10
    const-string v10, "attributedString"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 265
    const-string v10, "attributedString"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 266
    .local v0, "attributedString":Ljava/lang/Object;
    instance-of v10, v0, Lti/modules/titanium/ui/AttributedStringProxy;

    if-eqz v10, :cond_11

    .line 267
    check-cast v0, Lti/modules/titanium/ui/AttributedStringProxy;

    .end local v0    # "attributedString":Ljava/lang/Object;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v0, v10}, Lti/modules/titanium/ui/AttributedStringProxy;->toSpannable(Lti/modules/titanium/ui/AttributedStringProxy;Landroid/app/Activity;)Landroid/text/Spannable;

    move-result-object v5

    .line 268
    .local v5, "spannableText":Landroid/text/Spannable;
    if-eqz v5, :cond_11

    .line 269
    sget-object v10, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v7, v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 274
    .end local v5    # "spannableText":Landroid/text/Spannable;
    :cond_11
    const-string v10, "autoLink"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v7, v10}, Lorg/appcelerator/titanium/util/TiUIHelper;->linkifyIfEnabled(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 275
    invoke-virtual {v7}, Landroid/widget/TextView;->invalidate()V

    .line 276
    return-void

    .line 161
    .restart local v3    # "html":Ljava/lang/String;
    :cond_12
    const-string v10, ""

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 164
    :cond_13
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 167
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-ge v10, v11, :cond_14

    .line 168
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 169
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 170
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 172
    :cond_14
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 174
    .end local v3    # "html":Ljava/lang/String;
    :cond_15
    const-string v10, "text"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 175
    const-string v10, "text"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v7, v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    .line 177
    :cond_16
    const-string v10, "title"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 178
    const-string v10, "title"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v7, v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    .line 196
    .restart local v1    # "color":Ljava/lang/Object;
    :cond_17
    const-string v10, "color"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 216
    .end local v1    # "color":Ljava/lang/Object;
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 222
    .end local v8    # "value":Ljava/lang/Object;
    :pswitch_0
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    iput-object v10, p0, Lti/modules/titanium/ui/widget/TiUILabel;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_3

    .line 224
    :pswitch_1
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    iput-object v10, p0, Lti/modules/titanium/ui/widget/TiUILabel;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_3

    .line 226
    :pswitch_2
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v10, p0, Lti/modules/titanium/ui/widget/TiUILabel;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_3

    .line 229
    :pswitch_3
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 230
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 231
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    iput-object v10, p0, Lti/modules/titanium/ui/widget/TiUILabel;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_3

    .line 241
    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 281
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUILabel;->getNativeView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 282
    .local v2, "tv":Landroid/widget/TextView;
    const-string v3, "html"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    const-string v3, "autoLink"

    invoke-virtual {p4, v3}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->linkifyIfEnabled(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 285
    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 361
    .end local p3    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 286
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v3, "text"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
    :cond_2
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    const-string v3, "autoLink"

    invoke-virtual {p4, v3}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->linkifyIfEnabled(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 289
    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 290
    :cond_3
    const-string v3, "includeFontPadding"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 291
    invoke-static {p3, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto :goto_0

    .line 292
    :cond_4
    const-string v3, "color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 293
    if-nez p3, :cond_5

    .line 294
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUILabel;->defaultColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 296
    :cond_5
    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 298
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_6
    const-string v3, "highlightedColor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 299
    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    goto :goto_0

    .line 300
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_7
    const-string v3, "textAlign"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 301
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 303
    :cond_8
    const-string v3, "verticalAlign"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 304
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    goto/16 :goto_0

    .line 306
    :cond_9
    const-string v3, "font"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 307
    check-cast p3, Ljava/util/HashMap;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-static {v2, p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 308
    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    goto/16 :goto_0

    .line 309
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_a
    const-string v3, "ellipsize"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 310
    instance-of v3, p3, Ljava/lang/Boolean;

    if-eqz v3, :cond_b

    move-object v3, p3

    .line 311
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUILabel;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 313
    :cond_b
    instance-of v3, p3, Ljava/lang/Integer;

    if-eqz v3, :cond_c

    .line 314
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 327
    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUILabel;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 330
    :cond_c
    :goto_2
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUILabel;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_d
    move-object v3, v4

    .line 311
    goto :goto_1

    .line 316
    .end local p3    # "newValue":Ljava/lang/Object;
    :pswitch_0
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUILabel;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 318
    :pswitch_1
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUILabel;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 320
    :pswitch_2
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUILabel;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 323
    :pswitch_3
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 324
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 325
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUILabel;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 331
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_e
    const-string v3, "wordWrap"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 332
    invoke-static {p3, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v3

    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUILabel;->wordWrap:Z

    .line 333
    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUILabel;->wordWrap:Z

    if-nez v3, :cond_f

    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto/16 :goto_0

    :cond_f
    const/4 v3, 0x0

    goto :goto_3

    .line 334
    :cond_10
    const-string v3, "autoLink"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 335
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    goto/16 :goto_0

    .line 336
    :cond_11
    const-string v3, "shadowOffset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 337
    instance-of v3, p3, Ljava/util/HashMap;

    if-eqz v3, :cond_0

    move-object v0, p3

    .line 338
    check-cast v0, Ljava/util/HashMap;

    .line 339
    .local v0, "dict":Ljava/util/HashMap;
    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowX:F

    .line 340
    const-string v3, "y"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowY:F

    .line 341
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowRadius:F

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowX:F

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowY:F

    iget v6, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowColor:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    .line 343
    .end local v0    # "dict":Ljava/util/HashMap;
    :cond_12
    const-string v3, "shadowRadius"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 344
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {p3, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowRadius:F

    .line 345
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowRadius:F

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowX:F

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowY:F

    iget v6, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowColor:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    .line 346
    :cond_13
    const-string v3, "shadowColor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 347
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowColor:I

    .line 348
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowRadius:F

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowX:F

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowY:F

    iget v6, p0, Lti/modules/titanium/ui/widget/TiUILabel;->shadowColor:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    .line 349
    :cond_14
    const-string v3, "lines"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 350
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_0

    .line 351
    :cond_15
    const-string v3, "maxLines"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 352
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_0

    .line 353
    :cond_16
    const-string v3, "attributedString"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    instance-of v3, p3, Lti/modules/titanium/ui/AttributedStringProxy;

    if-eqz v3, :cond_17

    .line 354
    check-cast p3, Lti/modules/titanium/ui/AttributedStringProxy;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {p3, v3}, Lti/modules/titanium/ui/AttributedStringProxy;->toSpannable(Lti/modules/titanium/ui/AttributedStringProxy;Landroid/app/Activity;)Landroid/text/Spannable;

    move-result-object v1

    .line 355
    .local v1, "spannableText":Landroid/text/Spannable;
    if-eqz v1, :cond_0

    .line 356
    sget-object v3, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    .line 359
    .end local v1    # "spannableText":Landroid/text/Spannable;
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_17
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 364
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUILabel;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 365
    return-void
.end method
