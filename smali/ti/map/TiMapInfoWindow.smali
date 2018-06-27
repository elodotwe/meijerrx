.class public Lti/map/TiMapInfoWindow;
.super Landroid/widget/RelativeLayout;
.source "TiMapInfoWindow.java"


# static fields
.field public static final LEFT_PANE:I = 0x0

.field public static final RIGHT_PANE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TiMapInfoWindow"

.field private static final leftPaneId:I = 0x64

.field private static final rightPaneId:I = 0x66

.field private static final snippetId:I = 0xc9

.field private static final textLayoutId:I = 0x65

.field private static final titleId:I = 0xc8


# instance fields
.field private clicksourceList:[Landroid/view/View;

.field private currentClicksource:Ljava/lang/String;

.field private leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field private proxy:Lti/map/AnnotationProxy;

.field private rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field private snippet:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lti/map/AnnotationProxy;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "proxy"    # Lti/map/AnnotationProxy;

    .prologue
    const/4 v8, 0x3

    const/16 v7, 0xf

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v2, 0x0

    iput-object v2, p0, Lti/map/TiMapInfoWindow;->currentClicksource:Ljava/lang/String;

    .line 51
    const/4 v2, 0x0

    iput-object v2, p0, Lti/map/TiMapInfoWindow;->proxy:Lti/map/AnnotationProxy;

    .line 56
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lti/map/TiMapInfoWindow;->setBackgroundColor(I)V

    .line 57
    invoke-virtual {p0, v5}, Lti/map/TiMapInfoWindow;->setGravity(I)V

    .line 59
    iput-object p2, p0, Lti/map/TiMapInfoWindow;->proxy:Lti/map/AnnotationProxy;

    .line 60
    const/4 v0, 0x0

    .line 63
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {v2, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lti/map/TiMapInfoWindow;->leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 64
    iget-object v2, p0, Lti/map/TiMapInfoWindow;->leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setId(I)V

    .line 65
    iget-object v2, p0, Lti/map/TiMapInfoWindow;->leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const-string v3, "leftPane"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setTag(Ljava/lang/Object;)V

    .line 66
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    const/4 v2, 0x5

    invoke-virtual {v0, v5, v5, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 70
    iget-object v2, p0, Lti/map/TiMapInfoWindow;->leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p0, v2, v0}, Lti/map/TiMapInfoWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 74
    .local v1, "textLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 75
    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 77
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lti/map/TiMapInfoWindow;->title:Landroid/widget/TextView;

    .line 78
    iget-object v2, p0, Lti/map/TiMapInfoWindow;->title:Landroid/widget/TextView;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 79
    iget-object v2, p0, Lti/map/TiMapInfoWindow;->title:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v2, p0, Lti/map/TiMapInfoWindow;->title:Landroid/widget/TextView;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object v2, p0, Lti/map/TiMapInfoWindow;->title:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 82
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 85
    iget-object v2, p0, Lti/map/TiMapInfoWindow;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lti/map/TiMapInfoWindow;->snippet:Landroid/widget/TextView;

    .line 88
    iget-object v2, p0, Lti/map/TiMapInfoWindow;->snippet:Landroid/widget/TextView;

    const/16 v3, 0xc9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 89
    iget-object v2, p0, Lti/map/TiMapInfoWindow;->snippet:Landroid/widget/TextView;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    iget-object v2, p0, Lti/map/TiMapInfoWindow;->snippet:Landroid/widget/TextView;

    const-string v3, "subtitle"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v2, p0, Lti/map/TiMapInfoWindow;->snippet:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 93
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc8

    invoke-virtual {v0, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 94
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    iget-object v2, p0, Lti/map/TiMapInfoWindow;->snippet:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x64

    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 99
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 100
    invoke-virtual {p0, v1, v0}, Lti/map/TiMapInfoWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v2, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {v2, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lti/map/TiMapInfoWindow;->rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 104
    iget-object v2, p0, Lti/map/TiMapInfoWindow;->rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setId(I)V

    .line 105
    iget-object v2, p0, Lti/map/TiMapInfoWindow;->rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const-string v3, "rightPane"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setTag(Ljava/lang/Object;)V

    .line 106
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 107
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x65

    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 108
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 109
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 110
    iget-object v2, p0, Lti/map/TiMapInfoWindow;->rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p0, v2, v0}, Lti/map/TiMapInfoWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lti/map/TiMapInfoWindow;->leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    aput-object v3, v2, v5

    iget-object v3, p0, Lti/map/TiMapInfoWindow;->title:Landroid/widget/TextView;

    aput-object v3, v2, v6

    const/4 v3, 0x2

    iget-object v4, p0, Lti/map/TiMapInfoWindow;->snippet:Landroid/widget/TextView;

    aput-object v4, v2, v3

    iget-object v3, p0, Lti/map/TiMapInfoWindow;->rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    aput-object v3, v2, v8

    iput-object v2, p0, Lti/map/TiMapInfoWindow;->clicksourceList:[Landroid/view/View;

    .line 113
    return-void
.end method

.method private setClickSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lti/map/TiMapInfoWindow;->currentClicksource:Ljava/lang/String;

    .line 258
    return-void
.end method


# virtual methods
.method public analyzeTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;I)V
    .locals 19
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "markerPoint"    # Landroid/graphics/Point;
    .param p3, "iconImageHeight"    # I

    .prologue
    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v4, v0

    .line 204
    .local v4, "evX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    .line 205
    .local v5, "evY":I
    invoke-virtual/range {p0 .. p0}, Lti/map/TiMapInfoWindow;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 208
    .local v11, "p":Landroid/view/ViewParent;
    instance-of v0, v11, Landroid/view/View;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object v10, v11

    .line 209
    check-cast v10, Landroid/view/View;

    .line 210
    .local v10, "infoWindowParent":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v17

    div-int/lit8 v8, v17, 0x2

    .line 211
    .local v8, "infoWindowHalfWidth":I
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 216
    .end local v10    # "infoWindowParent":Landroid/view/View;
    .local v9, "infoWindowHeight":I
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    sub-int v17, v17, v8

    move/from16 v0, v17

    if-le v4, v0, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    add-int v17, v17, v8

    move/from16 v0, v17

    if-ge v4, v0, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    sub-int v17, v17, v9

    sub-int v17, v17, p3

    move/from16 v0, v17

    if-le v5, v0, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    sub-int v17, v17, p3

    move/from16 v0, v17

    if-ge v5, v0, :cond_2

    .line 218
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 219
    .local v3, "evCopy":Landroid/view/MotionEvent;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    add-int v17, v17, v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    add-int v18, v18, v9

    add-int v18, v18, p3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 221
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 222
    .local v15, "x":I
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 224
    .local v16, "y":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 226
    .local v6, "hitRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/map/TiMapInfoWindow;->clicksourceList:[Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v2, v0

    .line 227
    .local v2, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_5

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/map/TiMapInfoWindow;->clicksourceList:[Landroid/view/View;

    move-object/from16 v17, v0

    aget-object v14, v17, v7

    .line 229
    .local v14, "v":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 230
    .local v12, "tag":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_4

    if-eqz v12, :cond_4

    .line 231
    invoke-virtual {v14, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 234
    const-string v17, "title"

    move-object/from16 v0, v17

    if-eq v12, v0, :cond_0

    const-string v17, "subtitle"

    move-object/from16 v0, v17

    if-ne v12, v0, :cond_1

    .line 235
    :cond_0
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 236
    .local v13, "textLayoutRect":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    .line 237
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 240
    .end local v13    # "textLayoutRect":Landroid/graphics/Rect;
    :cond_1
    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 241
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lti/map/TiMapInfoWindow;->setClickSource(Ljava/lang/String;)V

    .line 248
    .end local v2    # "count":I
    .end local v3    # "evCopy":Landroid/view/MotionEvent;
    .end local v6    # "hitRect":Landroid/graphics/Rect;
    .end local v7    # "i":I
    .end local v12    # "tag":Ljava/lang/String;
    .end local v14    # "v":Landroid/view/View;
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_2
    :goto_2
    return-void

    .line 213
    .end local v8    # "infoWindowHalfWidth":I
    .end local v9    # "infoWindowHeight":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lti/map/TiMapInfoWindow;->getWidth()I

    move-result v17

    div-int/lit8 v8, v17, 0x2

    .line 214
    .restart local v8    # "infoWindowHalfWidth":I
    invoke-virtual/range {p0 .. p0}, Lti/map/TiMapInfoWindow;->getHeight()I

    move-result v9

    .restart local v9    # "infoWindowHeight":I
    goto/16 :goto_0

    .line 227
    .restart local v2    # "count":I
    .restart local v3    # "evCopy":Landroid/view/MotionEvent;
    .restart local v6    # "hitRect":Landroid/graphics/Rect;
    .restart local v7    # "i":I
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v14    # "v":Landroid/view/View;
    .restart local v15    # "x":I
    .restart local v16    # "y":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 246
    .end local v12    # "tag":Ljava/lang/String;
    .end local v14    # "v":Landroid/view/View;
    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lti/map/TiMapInfoWindow;->setClickSource(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getClicksource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lti/map/TiMapInfoWindow;->currentClicksource:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lti/map/TiMapInfoWindow;->snippet:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lti/map/TiMapInfoWindow;->snippet:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lti/map/TiMapInfoWindow;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lti/map/TiMapInfoWindow;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLeftOrRightPane(Ljava/lang/Object;I)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "flag"    # I

    .prologue
    .line 153
    const/4 v3, 0x0

    .line 154
    .local v3, "pane":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    if-nez p2, :cond_1

    .line 155
    iget-object v3, p0, Lti/map/TiMapInfoWindow;->leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 163
    :goto_0
    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 165
    if-nez p1, :cond_3

    .line 166
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setVisibility(I)V

    .line 189
    :cond_0
    :goto_1
    return-void

    .line 156
    :cond_1
    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    .line 157
    iget-object v3, p0, Lti/map/TiMapInfoWindow;->rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    goto :goto_0

    .line 159
    :cond_2
    const-string v5, "TiMapInfoWindow"

    const-string v6, "Invalid valud for flag in setLeftOrRightPane"

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 170
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setVisibility(I)V

    .line 171
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 172
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lti/map/TiMapInfoWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 173
    .local v2, "imageview":Landroid/widget/ImageView;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lti/map/TiMapInfoWindow;->proxy:Lti/map/AnnotationProxy;

    const/4 v8, 0x0

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Lti/map/AnnotationProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Landroid/app/Activity;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v1

    .line 174
    .local v1, "imageref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 176
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 177
    invoke-virtual {v3, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 179
    :cond_4
    const-string v5, "TiMapInfoWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get the image from the left / right button: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 181
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "imageref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    .end local v2    # "imageview":Landroid/widget/ImageView;
    :cond_5
    instance-of v5, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v5, :cond_0

    move-object v5, p1

    .line 182
    check-cast v5, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    .line 183
    .local v4, "view":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v4, :cond_6

    .line 184
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 186
    :cond_6
    const-string v5, "TiMapInfoWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get the view from the left / right view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lti/map/TiMapInfoWindow;->snippet:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lti/map/TiMapInfoWindow;->snippet:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lti/map/TiMapInfoWindow;->snippet:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 117
    if-eqz p1, :cond_0

    .line 118
    iget-object v0, p0, Lti/map/TiMapInfoWindow;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lti/map/TiMapInfoWindow;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lti/map/TiMapInfoWindow;->title:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
