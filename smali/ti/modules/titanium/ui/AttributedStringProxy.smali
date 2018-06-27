.class public Lti/modules/titanium/ui/AttributedStringProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "AttributedStringProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AttributedString"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 44
    return-void
.end method

.method public static attributeProxyFor(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)Lti/modules/titanium/ui/AttributeProxy;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, "attributeProxy":Lti/modules/titanium/ui/AttributeProxy;
    instance-of v2, p0, Lti/modules/titanium/ui/AttributeProxy;

    if-eqz v2, :cond_0

    .line 79
    check-cast p0, Lti/modules/titanium/ui/AttributeProxy;

    .line 96
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 81
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    .line 82
    .local v0, "attributeDict":Lorg/appcelerator/kroll/KrollDict;
    instance-of v2, p0, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v2, :cond_4

    move-object v0, p0

    .line 83
    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 87
    .end local p0    # "obj":Ljava/lang/Object;
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 88
    new-instance v1, Lti/modules/titanium/ui/AttributeProxy;

    .end local v1    # "attributeProxy":Lti/modules/titanium/ui/AttributeProxy;
    invoke-direct {v1}, Lti/modules/titanium/ui/AttributeProxy;-><init>()V

    .line 89
    .restart local v1    # "attributeProxy":Lti/modules/titanium/ui/AttributeProxy;
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollProxy;->getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiUrl;->getNormalizedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/AttributeProxy;->setCreationUrl(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, v0}, Lti/modules/titanium/ui/AttributeProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 92
    :cond_2
    if-nez v1, :cond_3

    .line 93
    const-string v2, "AttributedString"

    const-string v3, "Unable to create attribute proxy for object, likely an error in the type of the object passed in."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object p0, v1

    .line 96
    goto :goto_0

    .line 84
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v2, p0, Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 85
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0    # "attributeDict":Lorg/appcelerator/kroll/KrollDict;
    check-cast p0, Ljava/util/HashMap;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .restart local v0    # "attributeDict":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1
.end method

.method public static toSpannable(Lti/modules/titanium/ui/AttributedStringProxy;Landroid/app/Activity;)Landroid/text/Spannable;
    .locals 2
    .param p0, "attrString"    # Lti/modules/titanium/ui/AttributedStringProxy;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 102
    invoke-static {p0, p1}, Lti/modules/titanium/ui/AttributedStringProxy;->toSpannableInBundle(Lti/modules/titanium/ui/AttributedStringProxy;Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, "results":Landroid/os/Bundle;
    const-string v1, "attributedString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string v1, "attributedString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 106
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toSpannableInBundle(Lti/modules/titanium/ui/AttributedStringProxy;Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 28
    .param p0, "attrString"    # Lti/modules/titanium/ui/AttributedStringProxy;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 111
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v19, "results":Landroid/os/Bundle;
    if-eqz p0, :cond_a

    const-string v24, "text"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/AttributedStringProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 113
    const-string v24, "text"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/AttributedStringProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 114
    .local v21, "textString":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_a

    .line 115
    new-instance v20, Landroid/text/SpannableString;

    invoke-direct/range {v20 .. v21}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 116
    .local v20, "spannableText":Landroid/text/Spannable;
    const/4 v8, 0x0

    .line 117
    .local v8, "attributes":[Lti/modules/titanium/ui/AttributeProxy;
    const-string v24, "attributes"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/AttributedStringProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 118
    .local v16, "obj":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 119
    check-cast v16, [Ljava/lang/Object;

    .end local v16    # "obj":Ljava/lang/Object;
    move-object/from16 v17, v16

    check-cast v17, [Ljava/lang/Object;

    .line 120
    .local v17, "objArray":[Ljava/lang/Object;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v8, v0, [Lti/modules/titanium/ui/AttributeProxy;

    .line 121
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v12, v0, :cond_0

    .line 122
    aget-object v24, v17, v12

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lti/modules/titanium/ui/AttributedStringProxy;->attributeProxyFor(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)Lti/modules/titanium/ui/AttributeProxy;

    move-result-object v24

    aput-object v24, v8, v12

    .line 121
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 125
    .end local v12    # "i":I
    .end local v17    # "objArray":[Ljava/lang/Object;
    :cond_0
    if-eqz v8, :cond_9

    .line 126
    move-object v5, v8

    .local v5, "arr$":[Lti/modules/titanium/ui/AttributeProxy;
    array-length v15, v5

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v15, :cond_9

    aget-object v6, v5, v13

    .line 127
    .local v6, "attr":Lti/modules/titanium/ui/AttributeProxy;
    const-string v24, "type"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lti/modules/titanium/ui/AttributeProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 128
    const-string v24, "type"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lti/modules/titanium/ui/AttributeProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .line 129
    .local v22, "type":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 130
    .local v18, "range":[I
    const-string v24, "range"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lti/modules/titanium/ui/AttributeProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 131
    .local v14, "inRange":Ljava/lang/Object;
    instance-of v0, v14, [Ljava/lang/Object;

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 132
    check-cast v14, [Ljava/lang/Object;

    .end local v14    # "inRange":Ljava/lang/Object;
    check-cast v14, [Ljava/lang/Object;

    invoke-static {v14}, Lorg/appcelerator/titanium/util/TiConvert;->toIntArray([Ljava/lang/Object;)[I

    move-result-object v18

    .line 134
    :cond_1
    const-string v24, "value"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lti/modules/titanium/ui/AttributeProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 135
    .local v7, "attrValue":Ljava/lang/Object;
    if-eqz v18, :cond_2

    const/16 v24, 0x0

    aget v24, v18, v24

    const/16 v25, 0x0

    aget v25, v18, v25

    const/16 v26, 0x1

    aget v26, v18, v26

    add-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 136
    invoke-static/range {v22 .. v22}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v24

    packed-switch v24, :pswitch_data_0

    .line 126
    .end local v7    # "attrValue":Ljava/lang/Object;
    .end local v18    # "range":[I
    .end local v22    # "type":Ljava/lang/Object;
    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 138
    .restart local v7    # "attrValue":Ljava/lang/Object;
    .restart local v18    # "range":[I
    .restart local v22    # "type":Ljava/lang/Object;
    :pswitch_0
    const/4 v10, 0x0

    .line 139
    .local v10, "fontProp":Lorg/appcelerator/kroll/KrollDict;
    instance-of v0, v7, Lorg/appcelerator/kroll/KrollDict;

    move/from16 v24, v0

    if-eqz v24, :cond_6

    move-object v10, v7

    .line 140
    check-cast v10, Lorg/appcelerator/kroll/KrollDict;

    .line 144
    .end local v7    # "attrValue":Ljava/lang/Object;
    :cond_3
    :goto_3
    if-eqz v10, :cond_2

    .line 145
    invoke-static {v10}, Lorg/appcelerator/titanium/util/TiUIHelper;->getFontProperties(Lorg/appcelerator/kroll/KrollDict;)[Ljava/lang/String;

    move-result-object v11

    .line 146
    .local v11, "fontProperties":[Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 147
    const/16 v24, 0x0

    aget-object v24, v11, v24

    if-eqz v24, :cond_4

    .line 148
    new-instance v24, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v25, 0x0

    aget-object v25, v11, v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawSize(Ljava/lang/String;Landroid/content/Context;)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v25, 0x0

    aget v25, v18, v25

    const/16 v26, 0x0

    aget v26, v18, v26

    const/16 v27, 0x1

    aget v27, v18, v27

    add-int v26, v26, v27

    const/16 v27, 0x21

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 153
    :cond_4
    const/16 v24, 0x2

    aget-object v24, v11, v24

    if-eqz v24, :cond_5

    .line 154
    const/16 v24, 0x2

    aget-object v24, v11, v24

    const/16 v25, 0x3

    aget-object v25, v11, v25

    invoke-static/range {v24 .. v25}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypefaceStyle(Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 157
    .local v23, "typefaceStyle":I
    new-instance v24, Landroid/text/style/StyleSpan;

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v25, 0x0

    aget v25, v18, v25

    const/16 v26, 0x0

    aget v26, v18, v26

    const/16 v27, 0x1

    aget v27, v18, v27

    add-int v26, v26, v27

    const/16 v27, 0x21

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 160
    .end local v23    # "typefaceStyle":I
    :cond_5
    const/16 v24, 0x1

    aget-object v24, v11, v24

    if-eqz v24, :cond_2

    .line 161
    const/16 v24, 0x1

    aget-object v24, v11, v24

    invoke-static/range {v24 .. v24}, Lorg/appcelerator/titanium/util/TiUIHelper;->isAndroidTypeface(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 162
    new-instance v24, Landroid/text/style/TypefaceSpan;

    const/16 v25, 0x1

    aget-object v25, v11, v25

    invoke-direct/range {v24 .. v25}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    aget v25, v18, v25

    const/16 v26, 0x0

    aget v26, v18, v26

    const/16 v27, 0x1

    aget v27, v18, v27

    add-int v26, v26, v27

    const/16 v27, 0x21

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 141
    .end local v11    # "fontProperties":[Ljava/lang/String;
    .restart local v7    # "attrValue":Ljava/lang/Object;
    :cond_6
    instance-of v0, v7, Ljava/util/HashMap;

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 142
    new-instance v10, Lorg/appcelerator/kroll/KrollDict;

    .end local v10    # "fontProp":Lorg/appcelerator/kroll/KrollDict;
    check-cast v7, Ljava/util/HashMap;

    .end local v7    # "attrValue":Ljava/lang/Object;
    invoke-direct {v10, v7}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .restart local v10    # "fontProp":Lorg/appcelerator/kroll/KrollDict;
    goto/16 :goto_3

    .line 166
    .restart local v11    # "fontProperties":[Ljava/lang/String;
    :cond_7
    const/16 v24, 0x1

    aget-object v24, v11, v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 167
    .local v9, "font":Landroid/graphics/Typeface;
    new-instance v24, Lti/modules/titanium/ui/CustomTypefaceSpan;

    move-object/from16 v0, v24

    invoke-direct {v0, v9}, Lti/modules/titanium/ui/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v25, 0x0

    aget v25, v18, v25

    const/16 v26, 0x0

    aget v26, v18, v26

    const/16 v27, 0x1

    aget v27, v18, v27

    add-int v26, v26, v27

    const/16 v27, 0x21

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 176
    .end local v9    # "font":Landroid/graphics/Typeface;
    .end local v10    # "fontProp":Lorg/appcelerator/kroll/KrollDict;
    .end local v11    # "fontProperties":[Ljava/lang/String;
    .restart local v7    # "attrValue":Ljava/lang/Object;
    :pswitch_1
    new-instance v24, Landroid/text/style/BackgroundColorSpan;

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v25

    invoke-direct/range {v24 .. v25}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v25, 0x0

    aget v25, v18, v25

    const/16 v26, 0x0

    aget v26, v18, v26

    const/16 v27, 0x1

    aget v27, v18, v27

    add-int v26, v26, v27

    const/16 v27, 0x21

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 181
    :pswitch_2
    new-instance v24, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v25

    invoke-direct/range {v24 .. v25}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v25, 0x0

    aget v25, v18, v25

    const/16 v26, 0x0

    aget v26, v18, v26

    const/16 v27, 0x1

    aget v27, v18, v27

    add-int v26, v26, v27

    const/16 v27, 0x21

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 186
    :pswitch_3
    new-instance v24, Landroid/text/style/StrikethroughSpan;

    invoke-direct/range {v24 .. v24}, Landroid/text/style/StrikethroughSpan;-><init>()V

    const/16 v25, 0x0

    aget v25, v18, v25

    const/16 v26, 0x0

    aget v26, v18, v26

    const/16 v27, 0x1

    aget v27, v18, v27

    add-int v26, v26, v27

    const/16 v27, 0x21

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 190
    :pswitch_4
    new-instance v24, Landroid/text/style/UnderlineSpan;

    invoke-direct/range {v24 .. v24}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v25, 0x0

    aget v25, v18, v25

    const/16 v26, 0x0

    aget v26, v18, v26

    const/16 v27, 0x1

    aget v27, v18, v27

    add-int v26, v26, v27

    const/16 v27, 0x21

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 194
    :pswitch_5
    if-eqz v7, :cond_8

    .line 195
    new-instance v24, Landroid/text/style/URLSpan;

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    aget v25, v18, v25

    const/16 v26, 0x0

    aget v26, v18, v26

    const/16 v27, 0x1

    aget v27, v18, v27

    add-int v26, v26, v27

    const/16 v27, 0x21

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 198
    :cond_8
    const-string v24, "hasLink"

    const/16 v25, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 205
    .end local v5    # "arr$":[Lti/modules/titanium/ui/AttributeProxy;
    .end local v6    # "attr":Lti/modules/titanium/ui/AttributeProxy;
    .end local v7    # "attrValue":Ljava/lang/Object;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "range":[I
    .end local v22    # "type":Ljava/lang/Object;
    :cond_9
    const-string v24, "attributedString"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 209
    .end local v8    # "attributes":[Lti/modules/titanium/ui/AttributeProxy;
    .end local v20    # "spannableText":Landroid/text/Spannable;
    .end local v21    # "textString":Ljava/lang/String;
    :cond_a
    return-object v19

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public addAttribute(Ljava/lang/Object;)V
    .locals 7
    .param p1, "attr"    # Ljava/lang/Object;

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, "attributeDict":Lorg/appcelerator/kroll/KrollDict;
    instance-of v6, p1, Ljava/util/HashMap;

    if-eqz v6, :cond_0

    .line 52
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1    # "attributeDict":Lorg/appcelerator/kroll/KrollDict;
    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "attr":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 54
    .restart local v1    # "attributeDict":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    if-eqz v1, :cond_2

    .line 55
    new-instance v0, Lti/modules/titanium/ui/AttributeProxy;

    invoke-direct {v0}, Lti/modules/titanium/ui/AttributeProxy;-><init>()V

    .line 56
    .local v0, "attribute":Lti/modules/titanium/ui/AttributeProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/AttributedStringProxy;->getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/util/TiUrl;->getNormalizedUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lti/modules/titanium/ui/AttributeProxy;->setCreationUrl(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/AttributeProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 58
    const-string v6, "attributes"

    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/AttributedStringProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 59
    .local v4, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 60
    .local v2, "attributes":[Lti/modules/titanium/ui/AttributeProxy;
    instance-of v6, v4, [Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 61
    check-cast v4, [Ljava/lang/Object;

    .end local v4    # "obj":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, [Ljava/lang/Object;

    .line 62
    .local v5, "objArray":[Ljava/lang/Object;
    array-length v6, v5

    add-int/lit8 v6, v6, 0x1

    new-array v2, v6, [Lti/modules/titanium/ui/AttributeProxy;

    .line 63
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v5

    if-ge v3, v6, :cond_1

    .line 64
    aget-object v6, v5, v3

    invoke-static {v6, p0}, Lti/modules/titanium/ui/AttributedStringProxy;->attributeProxyFor(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)Lti/modules/titanium/ui/AttributeProxy;

    move-result-object v6

    aput-object v6, v2, v3

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :cond_1
    array-length v6, v5

    aput-object v0, v2, v6

    .line 71
    .end local v3    # "i":I
    .end local v5    # "objArray":[Ljava/lang/Object;
    :goto_1
    const-string v6, "attributes"

    invoke-virtual {p0, v6, v2}, Lti/modules/titanium/ui/AttributedStringProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .end local v0    # "attribute":Lti/modules/titanium/ui/AttributeProxy;
    .end local v2    # "attributes":[Lti/modules/titanium/ui/AttributeProxy;
    :cond_2
    return-void

    .line 68
    .restart local v0    # "attribute":Lti/modules/titanium/ui/AttributeProxy;
    .restart local v2    # "attributes":[Lti/modules/titanium/ui/AttributeProxy;
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_3
    const/4 v6, 0x1

    new-array v2, v6, [Lti/modules/titanium/ui/AttributeProxy;

    .line 69
    const/4 v6, 0x0

    aput-object v0, v2, v6

    goto :goto_1
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-string v0, "Ti.UI.AttributedString"

    return-object v0
.end method
