.class Lti/modules/titanium/ui/widget/TiUILabel$1;
.super Landroid/widget/TextView;
.source "TiUILabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUILabel;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUILabel;

.field final synthetic val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUILabel;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 58
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->this$0:Lti/modules/titanium/ui/widget/TiUILabel;

    iput-object p3, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 76
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 78
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "postlayout"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "postlayout"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 81
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->this$0:Lti/modules/titanium/ui/widget/TiUILabel;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUILabel;->access$000(Lti/modules/titanium/ui/widget/TiUILabel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->this$0:Lti/modules/titanium/ui/widget/TiUILabel;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUILabel;->access$100(Lti/modules/titanium/ui/widget/TiUILabel;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->this$0:Lti/modules/titanium/ui/widget/TiUILabel;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUILabel;->access$200(Lti/modules/titanium/ui/widget/TiUILabel;)Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    if-nez v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->this$0:Lti/modules/titanium/ui/widget/TiUILabel;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUILabel;->access$300(Lti/modules/titanium/ui/widget/TiUILabel;)Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iget-boolean v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    if-nez v0, :cond_0

    .line 64
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 66
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 70
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 71
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 85
    move-object/from16 v13, p0

    .line 86
    .local v13, "textView":Landroid/widget/TextView;
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    .line 88
    .local v12, "text":Ljava/lang/CharSequence;
    instance-of v0, v12, Landroid/text/SpannedString;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object v11, v12

    .line 89
    check-cast v11, Landroid/text/SpannedString;

    .line 90
    .local v11, "spanned":Landroid/text/SpannedString;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual {v11}, Landroid/text/SpannedString;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/text/SpannedString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v3

    .line 92
    .local v3, "buffer":Landroid/text/Spannable;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 94
    .local v2, "action":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v2, v0, :cond_0

    if-nez v2, :cond_1

    .line 95
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    move/from16 v0, v16

    float-to-int v14, v0

    .line 96
    .local v14, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    move/from16 v0, v16

    float-to-int v15, v0

    .line 98
    .local v15, "y":I
    invoke-virtual {v13}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v16

    sub-int v14, v14, v16

    .line 99
    invoke-virtual {v13}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    .line 101
    invoke-virtual {v13}, Landroid/widget/TextView;->getScrollX()I

    move-result v16

    add-int v14, v14, v16

    .line 102
    invoke-virtual {v13}, Landroid/widget/TextView;->getScrollY()I

    move-result v16

    add-int v15, v15, v16

    .line 104
    invoke-virtual {v13}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    .line 105
    .local v6, "layout":Landroid/text/Layout;
    invoke-virtual {v6, v15}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    .line 106
    .local v7, "line":I
    int-to-float v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v6, v7, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v9

    .line 108
    .local v9, "off":I
    const-class v16, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, v16

    invoke-interface {v3, v9, v9, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ClickableSpan;

    .line 111
    .local v8, "link":[Landroid/text/style/ClickableSpan;
    array-length v0, v8

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 112
    const/16 v16, 0x0

    aget-object v4, v8, v16

    .line 113
    .local v4, "cSpan":Landroid/text/style/ClickableSpan;
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_3

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUILabel$1;->this$0:Lti/modules/titanium/ui/widget/TiUILabel;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lti/modules/titanium/ui/widget/TiUILabel;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v10

    .line 115
    .local v10, "proxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    const-string v16, "link"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    instance-of v0, v4, Landroid/text/style/URLSpan;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 116
    new-instance v5, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v5}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 117
    .local v5, "evnt":Lorg/appcelerator/kroll/KrollDict;
    const-string v16, "url"

    check-cast v4, Landroid/text/style/URLSpan;

    .end local v4    # "cSpan":Landroid/text/style/ClickableSpan;
    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v16, "link"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v5, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 129
    .end local v2    # "action":I
    .end local v3    # "buffer":Landroid/text/Spannable;
    .end local v5    # "evnt":Lorg/appcelerator/kroll/KrollDict;
    .end local v6    # "layout":Landroid/text/Layout;
    .end local v7    # "line":I
    .end local v8    # "link":[Landroid/text/style/ClickableSpan;
    .end local v9    # "off":I
    .end local v10    # "proxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v11    # "spanned":Landroid/text/SpannedString;
    .end local v14    # "x":I
    .end local v15    # "y":I
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v16

    return v16

    .line 120
    .restart local v2    # "action":I
    .restart local v3    # "buffer":Landroid/text/Spannable;
    .restart local v4    # "cSpan":Landroid/text/style/ClickableSpan;
    .restart local v6    # "layout":Landroid/text/Layout;
    .restart local v7    # "line":I
    .restart local v8    # "link":[Landroid/text/style/ClickableSpan;
    .restart local v9    # "off":I
    .restart local v10    # "proxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .restart local v11    # "spanned":Landroid/text/SpannedString;
    .restart local v14    # "x":I
    .restart local v15    # "y":I
    :cond_2
    invoke-virtual {v4, v13}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 122
    .end local v10    # "proxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_3
    if-nez v2, :cond_1

    .line 123
    invoke-interface {v3, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    invoke-interface {v3, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v3, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method
