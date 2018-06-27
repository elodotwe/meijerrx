.class public Lti/modules/titanium/ui/widget/TiUIText;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIText.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final KEYBOARD_ASCII:I = 0x0

.field private static final KEYBOARD_DECIMAL_PAD:I = 0x8

.field private static final KEYBOARD_DEFAULT:I = 0x7

.field private static final KEYBOARD_EMAIL_ADDRESS:I = 0x5

.field private static final KEYBOARD_NAMEPHONE_PAD:I = 0x6

.field private static final KEYBOARD_NUMBERS_PUNCTUATION:I = 0x1

.field private static final KEYBOARD_NUMBER_PAD:I = 0x3

.field private static final KEYBOARD_PHONE_PAD:I = 0x4

.field private static final KEYBOARD_URL:I = 0x2

.field public static final RETURNKEY_DEFAULT:I = 0x9

.field public static final RETURNKEY_DONE:I = 0x7

.field public static final RETURNKEY_EMERGENCY_CALL:I = 0x8

.field public static final RETURNKEY_GO:I = 0x0

.field public static final RETURNKEY_GOOGLE:I = 0x1

.field public static final RETURNKEY_JOIN:I = 0x2

.field public static final RETURNKEY_NEXT:I = 0x3

.field public static final RETURNKEY_ROUTE:I = 0x4

.field public static final RETURNKEY_SEARCH:I = 0x5

.field public static final RETURNKEY_SEND:I = 0xa

.field public static final RETURNKEY_YAHOO:I = 0x6

.field private static final TAG:Ljava/lang/String; = "TiUIText"

.field private static final TEXT_AUTOCAPITALIZATION_ALL:I = 0x3

.field private static final TEXT_AUTOCAPITALIZATION_NONE:I = 0x0

.field private static final TEXT_AUTOCAPITALIZATION_SENTENCES:I = 0x1

.field private static final TEXT_AUTOCAPITALIZATION_WORDS:I = 0x2


# instance fields
.field private disableChangeEvent:Z

.field private field:Z

.field private isTruncatingText:Z

.field private maxLength:I

.field protected tv:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Z)V
    .locals 6
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "field"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 90
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 82
    const/4 v2, -0x1

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    .line 83
    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->isTruncatingText:Z

    .line 84
    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->disableChangeEvent:Z

    .line 91
    const-string v2, "TiUIText"

    const-string v3, "Creating a text field"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-boolean p2, p0, Lti/modules/titanium/ui/widget/TiUIText;->field:Z

    .line 97
    :try_start_0
    const-string v2, "layout.titanium_ui_edittext"

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 104
    .local v1, "tvId":I
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    .line 106
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    new-instance v3, Lti/modules/titanium/ui/widget/TiUIText$1;

    invoke-direct {v3, p0, p1}, Lti/modules/titanium/ui/widget/TiUIText$1;-><init>(Lti/modules/titanium/ui/widget/TiUIText;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 116
    if-eqz p2, :cond_0

    .line 117
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 118
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 120
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 122
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 123
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 124
    if-eqz p2, :cond_2

    .line 125
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 129
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/TiUIText;->setNativeView(Landroid/view/View;)V

    .line 130
    .end local v1    # "tvId":I
    :cond_1
    :goto_1
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    const-string v2, "TiUIText"

    const-string v3, "XML resources could not be found!!!"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 127
    .end local v0    # "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    .restart local v1    # "tvId":I
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x0

    .line 292
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    if-ltz v2, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    if-le v2, v3, :cond_1

    .line 294
    const/4 v2, 0x1

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->isTruncatingText:Z

    .line 295
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    invoke-interface {p1, v4, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "newText":Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 297
    .local v0, "cursor":I
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    if-le v0, v2, :cond_0

    .line 298
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    .line 300
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 305
    .end local v0    # "cursor":I
    .end local v1    # "newText":Ljava/lang/String;
    :goto_0
    return-void

    .line 303
    :cond_1
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/TiUIText;->isTruncatingText:Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 311
    return-void
.end method

.method public focus()V
    .locals 2

    .prologue
    .line 351
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->focus()V

    .line 352
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "editable"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "editable"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->requestSoftInputChange(Lorg/appcelerator/kroll/KrollProxy;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 382
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 383
    .local v0, "event":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "value"

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    return-object v0
.end method

.method public getSelection()Lorg/appcelerator/kroll/KrollDict;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 584
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lorg/appcelerator/kroll/KrollDict;-><init>(I)V

    .line 585
    .local v1, "result":Lorg/appcelerator/kroll/KrollDict;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 586
    .local v2, "start":I
    const-string v3, "location"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    if-eq v2, v5, :cond_0

    .line 588
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 589
    .local v0, "end":I
    const-string v3, "length"

    sub-int v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    .end local v0    # "end":I
    :goto_0
    return-object v1

    .line 591
    :cond_0
    const-string v3, "length"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public handleKeyboard(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 14
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 433
    const/4 v6, 0x0

    .line 434
    .local v6, "type":I
    const/4 v4, 0x0

    .line 435
    .local v4, "passwordMask":Z
    const/4 v2, 0x1

    .line 436
    .local v2, "editable":Z
    const v1, 0x8000

    .line 437
    .local v1, "autocorrect":I
    const/4 v0, 0x0

    .line 439
    .local v0, "autoCapValue":I
    const-string v8, "autocorrect"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "autocorrect"

    invoke-static {p1, v8, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 440
    const/4 v1, 0x0

    .line 443
    :cond_0
    const-string v8, "editable"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 444
    const-string v8, "editable"

    invoke-static {p1, v8, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v2

    .line 447
    :cond_1
    if-nez v2, :cond_4

    .line 448
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 449
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 567
    :cond_2
    :goto_0
    iget-boolean v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->field:Z

    if-nez v8, :cond_3

    .line 568
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 571
    :cond_3
    return-void

    .line 451
    :cond_4
    const-string v8, "softKeyboardOnFocus"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "softKeyboardOnFocus"

    invoke-static {p1, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v11, :cond_5

    .line 453
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 456
    :cond_5
    const-string v8, "autocapitalization"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 458
    const-string v8, "autocapitalization"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v12}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 474
    const-string v8, "TiUIText"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown AutoCapitalization Value ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "autocapitalization"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_6
    :goto_1
    const-string v8, "passwordMask"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 480
    const-string v8, "passwordMask"

    invoke-static {p1, v8, v12}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v4

    .line 483
    :cond_7
    const-string v8, "keyboardType"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 484
    const-string v8, "keyboardType"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x7

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v6

    .line 487
    :cond_8
    or-int v7, v1, v0

    .line 488
    .local v7, "typeModifiers":I
    move v5, v7

    .line 490
    .local v5, "textTypeAndClass":I
    if-eq v6, v13, :cond_9

    .line 491
    or-int/lit8 v5, v5, 0x1

    .line 494
    :cond_9
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v8, v11}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 495
    packed-switch v6, :pswitch_data_1

    .line 539
    :goto_2
    :pswitch_0
    if-eqz v4, :cond_b

    .line 540
    or-int/lit16 v5, v5, 0x80

    .line 541
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    .line 545
    .local v3, "origTF":Landroid/graphics/Typeface;
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 548
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 549
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 553
    if-eq v6, v11, :cond_a

    if-eq v6, v13, :cond_a

    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    .line 554
    :cond_a
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_0

    .line 460
    .end local v3    # "origTF":Landroid/graphics/Typeface;
    .end local v5    # "textTypeAndClass":I
    .end local v7    # "typeModifiers":I
    :pswitch_1
    const/4 v0, 0x0

    .line 461
    goto :goto_1

    .line 463
    :pswitch_2
    const/16 v0, 0x7000

    .line 465
    goto :goto_1

    .line 467
    :pswitch_3
    const/16 v0, 0x4000

    .line 468
    goto :goto_1

    .line 471
    :pswitch_4
    const/16 v0, 0x2000

    .line 472
    goto :goto_1

    .line 501
    .restart local v5    # "textTypeAndClass":I
    .restart local v7    # "typeModifiers":I
    :pswitch_5
    or-int/lit8 v5, v5, 0x3

    .line 502
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    new-instance v9, Lti/modules/titanium/ui/widget/TiUIText$2;

    invoke-direct {v9, p0}, Lti/modules/titanium/ui/widget/TiUIText$2;-><init>(Lti/modules/titanium/ui/widget/TiUIText;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_2

    .line 520
    :pswitch_6
    const-string v8, "TiUIText"

    const-string v9, "Setting keyboard type URL-3"

    const-string v10, "DEBUG_MODE"

    invoke-static {v8, v9, v10}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 522
    or-int/lit8 v5, v5, 0x10

    .line 523
    goto :goto_2

    .line 525
    :pswitch_7
    const/16 v5, 0x3000

    .line 527
    :pswitch_8
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-static {v11, v11}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 528
    or-int/lit8 v5, v5, 0x2

    .line 529
    goto :goto_2

    .line 531
    :pswitch_9
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 532
    or-int/lit8 v5, v5, 0x3

    .line 533
    goto :goto_2

    .line 535
    :pswitch_a
    or-int/lit8 v5, v5, 0x20

    goto :goto_2

    .line 558
    :cond_b
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 559
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v8

    instance-of v8, v8, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v8, :cond_2

    .line 560
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto/16 :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    .line 495
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public handleReturnKeyType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x2

    .line 599
    packed-switch p1, :pswitch_data_0

    .line 636
    :goto_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 637
    return-void

    .line 601
    :pswitch_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 604
    :pswitch_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 607
    :pswitch_2
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 610
    :pswitch_3
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 613
    :pswitch_4
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 616
    :pswitch_5
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 619
    :pswitch_6
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 622
    :pswitch_7
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 625
    :pswitch_8
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 628
    :pswitch_9
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 631
    :pswitch_a
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public handleTextAlign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "textAlign"    # Ljava/lang/String;
    .param p2, "verticalAlign"    # Ljava/lang/String;

    .prologue
    .line 422
    if-nez p2, :cond_0

    .line 423
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->field:Z

    if-eqz v0, :cond_2

    const-string p2, "middle"

    .line 425
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 426
    const-string p1, "left"

    .line 428
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-static {v0, p1, p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void

    .line 423
    :cond_2
    const-string p2, "top"

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 390
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "value":Ljava/lang/String;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 392
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "value"

    invoke-virtual {v0, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "value"

    invoke-virtual {v3, v5, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    const-string v5, "TiUIText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActionID: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " KeyEvent: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "DEBUG_MODE"

    invoke-static {v5, v3, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v1, 0x0

    .line 399
    .local v1, "enableReturnKey":Z
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "enableReturnKey"

    invoke-virtual {v3, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "enableReturnKey"

    invoke-virtual {v3, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v1

    .line 402
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 403
    const/4 v3, 0x1

    .line 417
    :goto_1
    return v3

    .line 395
    .end local v1    # "enableReturnKey":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 410
    .restart local v1    # "enableReturnKey":Z
    :cond_2
    if-nez p2, :cond_3

    if-nez p3, :cond_4

    :cond_3
    const/4 v3, 0x5

    if-eq p2, v3, :cond_4

    const/4 v3, 0x6

    if-ne p2, v3, :cond_5

    .line 413
    :cond_4
    const-string v3, "return"

    invoke-virtual {p0, v3, v0}, Lti/modules/titanium/ui/widget/TiUIText;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    :cond_5
    move v3, v4

    .line 417
    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 366
    if-eqz p2, :cond_1

    .line 367
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "clearOnEdit"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 368
    .local v0, "clearOnEdit":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 372
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 373
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 376
    .end local v0    # "clearOnEdit":Ljava/lang/Boolean;
    .end local v1    # "r":Landroid/graphics/Rect;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiUIView;->onFocusChange(Landroid/view/View;Z)V

    .line 377
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 319
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    if-nez p3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, p2, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 322
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "value":Ljava/lang/String;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 324
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "value"

    invoke-virtual {v0, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v3, "return"

    invoke-virtual {p0, v3, v0}, Lti/modules/titanium/ui/widget/TiUIText;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 333
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    if-ltz v3, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    if-le v3, v4, :cond_2

    .line 346
    :cond_1
    :goto_0
    return-void

    .line 337
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "newText":Ljava/lang/String;
    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->disableChangeEvent:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->isTruncatingText:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->isTruncatingText:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "value"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->shouldFireChange(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    :cond_3
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 342
    .restart local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "value"

    invoke-virtual {v0, v3, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "value"

    invoke-virtual {v3, v4, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    const-string v3, "change"

    invoke-virtual {p0, v3, v0}, Lti/modules/titanium/ui/widget/TiUIText;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 6
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v5, 0x1

    .line 135
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 137
    const-string v3, "enabled"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const-string v4, "enabled"

    invoke-static {p1, v4, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 141
    :cond_0
    const-string v3, "maxLength"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    const-string v3, "maxLength"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    .line 146
    :cond_1
    iput-boolean v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->disableChangeEvent:Z

    .line 147
    const-string v3, "value"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 148
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const-string v4, "value"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->disableChangeEvent:Z

    .line 154
    const-string v3, "color"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const-string v4, "color"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 158
    :cond_2
    const-string v3, "hintText"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 159
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const-string v4, "hintText"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 162
    :cond_3
    const-string v3, "hintTextColor"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 163
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const-string v4, "hintTextColor"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 166
    :cond_4
    const-string v3, "ellipsize"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 167
    const-string v3, "ellipsize"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 168
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 174
    :cond_5
    :goto_1
    const-string v3, "font"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 175
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const-string v4, "font"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 178
    :cond_6
    const-string v3, "textAlign"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "verticalAlign"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 179
    :cond_7
    const/4 v1, 0x0

    .line 180
    .local v1, "textAlign":Ljava/lang/String;
    const/4 v2, 0x0

    .line 181
    .local v2, "verticalAlign":Ljava/lang/String;
    const-string v3, "textAlign"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 182
    const-string v3, "textAlign"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    :cond_8
    const-string v3, "verticalAlign"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 185
    const-string v3, "verticalAlign"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    :cond_9
    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/widget/TiUIText;->handleTextAlign(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v1    # "textAlign":Ljava/lang/String;
    .end local v2    # "verticalAlign":Ljava/lang/String;
    :cond_a
    const-string v3, "returnKeyType"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 191
    const-string v3, "returnKeyType"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/TiUIText;->handleReturnKeyType(I)V

    .line 194
    :cond_b
    const-string v3, "keyboardType"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "autocorrect"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "passwordMask"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "autocapitalization"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "editable"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 197
    :cond_c
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/TiUIText;->handleKeyboard(Lorg/appcelerator/kroll/KrollDict;)V

    .line 200
    :cond_d
    const-string v3, "attributedHintText"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 201
    const-string v3, "attributedHintText"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    .local v0, "attributedString":Ljava/lang/Object;
    instance-of v3, v0, Lti/modules/titanium/ui/AttributedStringProxy;

    if-eqz v3, :cond_e

    .line 203
    check-cast v0, Lti/modules/titanium/ui/AttributedStringProxy;

    .end local v0    # "attributedString":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIText;->setAttributedStringHint(Lti/modules/titanium/ui/AttributedStringProxy;)V

    .line 207
    :cond_e
    const-string v3, "attributedString"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 208
    const-string v3, "attributedString"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    .restart local v0    # "attributedString":Ljava/lang/Object;
    instance-of v3, v0, Lti/modules/titanium/ui/AttributedStringProxy;

    if-eqz v3, :cond_f

    .line 210
    check-cast v0, Lti/modules/titanium/ui/AttributedStringProxy;

    .end local v0    # "attributedString":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIText;->setAttributedStringText(Lti/modules/titanium/ui/AttributedStringProxy;)V

    .line 214
    :cond_f
    const-string v3, "autoLink"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 215
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const-string v4, "autoLink"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->linkifyIfEnabled(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 217
    :cond_10
    return-void

    .line 150
    :cond_11
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 170
    :cond_12
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_1
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 223
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 224
    const-string v6, "TiUIText"

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

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " new: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    const-string v6, "enabled"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 227
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 287
    .end local p3    # "newValue":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 228
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_2
    const-string v6, "value"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 229
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 230
    :cond_3
    const-string v6, "maxLength"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 231
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    .line 233
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 234
    .local v0, "currentText":Landroid/text/Editable;
    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    if-ltz v6, :cond_1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v6

    iget v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    if-le v6, v7, :cond_1

    .line 235
    const/4 v6, 0x0

    iget v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    invoke-interface {v0, v6, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 236
    .local v4, "truncateText":Ljava/lang/CharSequence;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 237
    .local v1, "cursor":I
    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    if-le v1, v6, :cond_4

    .line 238
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    .line 240
    :cond_4
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 243
    .end local v0    # "currentText":Landroid/text/Editable;
    .end local v1    # "cursor":I
    .end local v4    # "truncateText":Ljava/lang/CharSequence;
    :cond_5
    const-string v6, "color"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 244
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 245
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_6
    const-string v6, "hintText"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 246
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 247
    :cond_7
    const-string v6, "hintTextColor"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 248
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto/16 :goto_0

    .line 249
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_8
    const-string v6, "ellipsize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 250
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 251
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 253
    :cond_9
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 255
    :cond_a
    const-string v6, "textAlign"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "verticalAlign"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 256
    :cond_b
    const/4 v3, 0x0

    .line 257
    .local v3, "textAlign":Ljava/lang/String;
    const/4 v5, 0x0

    .line 258
    .local v5, "verticalAlign":Ljava/lang/String;
    const-string v6, "textAlign"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 259
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 263
    :cond_c
    :goto_1
    const-string v6, "verticalAlign"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 264
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 268
    :cond_d
    :goto_2
    invoke-virtual {p0, v3, v5}, Lti/modules/titanium/ui/widget/TiUIText;->handleTextAlign(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    :cond_e
    const-string v6, "textAlign"

    invoke-virtual {p4, v6}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 261
    const-string v6, "textAlign"

    invoke-virtual {p4, v6}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 265
    :cond_f
    const-string v6, "verticalAlign"

    invoke-virtual {p4, v6}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 266
    const-string v6, "verticalAlign"

    invoke-virtual {p4, v6}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 269
    .end local v3    # "textAlign":Ljava/lang/String;
    .end local v5    # "verticalAlign":Ljava/lang/String;
    :cond_10
    const-string v6, "keyboardType"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "autocorrect"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "autocapitalization"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "passwordMask"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "editable"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 272
    :cond_11
    invoke-virtual {p4}, Lorg/appcelerator/kroll/KrollProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    .line 273
    .local v2, "d":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/TiUIText;->handleKeyboard(Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0

    .line 274
    .end local v2    # "d":Lorg/appcelerator/kroll/KrollDict;
    :cond_12
    const-string v6, "returnKeyType"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 275
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/widget/TiUIText;->handleReturnKeyType(I)V

    goto/16 :goto_0

    .line 276
    :cond_13
    const-string v6, "font"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 277
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    check-cast p3, Ljava/util/HashMap;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-static {v6, p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 278
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_14
    const-string v6, "autoLink"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 279
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-static {v6, p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->linkifyIfEnabled(Landroid/widget/TextView;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 280
    :cond_15
    const-string v6, "attributedHintText"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    instance-of v6, p3, Lti/modules/titanium/ui/AttributedStringProxy;

    if-eqz v6, :cond_16

    .line 281
    check-cast p3, Lti/modules/titanium/ui/AttributedStringProxy;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/TiUIText;->setAttributedStringHint(Lti/modules/titanium/ui/AttributedStringProxy;)V

    goto/16 :goto_0

    .line 282
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_16
    const-string v6, "attributedString"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    instance-of v6, p3, Lti/modules/titanium/ui/AttributedStringProxy;

    if-eqz v6, :cond_17

    .line 283
    check-cast p3, Lti/modules/titanium/ui/AttributedStringProxy;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/TiUIText;->setAttributedStringText(Lti/modules/titanium/ui/AttributedStringProxy;)V

    goto/16 :goto_0

    .line 285
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_17
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method public setAttributedStringHint(Lti/modules/titanium/ui/AttributedStringProxy;)V
    .locals 2
    .param p1, "attrString"    # Lti/modules/titanium/ui/AttributedStringProxy;

    .prologue
    .line 650
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1, v1}, Lti/modules/titanium/ui/AttributedStringProxy;->toSpannable(Lti/modules/titanium/ui/AttributedStringProxy;Landroid/app/Activity;)Landroid/text/Spannable;

    move-result-object v0

    .line 651
    .local v0, "spannableText":Landroid/text/Spannable;
    if-eqz v0, :cond_0

    .line 652
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 654
    :cond_0
    return-void
.end method

.method public setAttributedStringText(Lti/modules/titanium/ui/AttributedStringProxy;)V
    .locals 3
    .param p1, "attrString"    # Lti/modules/titanium/ui/AttributedStringProxy;

    .prologue
    .line 640
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1, v1}, Lti/modules/titanium/ui/AttributedStringProxy;->toSpannableInBundle(Lti/modules/titanium/ui/AttributedStringProxy;Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v0

    .line 641
    .local v0, "bundleText":Landroid/os/Bundle;
    const-string v1, "attributedString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const-string v1, "attributedString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 643
    const-string v1, "hasLink"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 647
    :cond_0
    return-void
.end method

.method public setSelection(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 575
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 576
    .local v0, "textLength":I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-le p2, v0, :cond_1

    .line 577
    :cond_0
    const-string v1, "TiUIText"

    const-string v2, "Invalid range for text selection. Ignoring."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v1, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0
.end method
