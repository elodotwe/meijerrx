.class public Lorg/appcelerator/titanium/proxy/ActionBarProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "ActionBarProxy.java"


# static fields
.field private static final BACKGROUND_COLOR:Ljava/lang/String; = "backgroundColor"

.field private static final BACKGROUND_IMAGE:Ljava/lang/String; = "backgroundImage"

.field private static final HOME_BUTTON_ENABLED:Ljava/lang/String; = "homeButtonEnabled"

.field private static final ICON:Ljava/lang/String; = "icon"

.field private static final LOGO:Ljava/lang/String; = "logo"

.field private static final MSG_DISPLAY_HOME_AS_UP:I = 0x138

.field private static final MSG_FIRST_ID:I = 0xd4

.field private static final MSG_HIDE:I = 0x13c

.field private static final MSG_SET_BACKGROUND_COLOR:I = 0x144

.field private static final MSG_SET_BACKGROUND_IMAGE:I = 0x139

.field private static final MSG_SET_CUSTOM_VIEW:I = 0x147

.field private static final MSG_SET_DISPLAY_SHOW_CUSTOM:I = 0x148

.field private static final MSG_SET_DISPLAY_SHOW_HOME:I = 0x142

.field private static final MSG_SET_DISPLAY_SHOW_TITLE:I = 0x143

.field private static final MSG_SET_HOME_BUTTON_ENABLED:I = 0x13f

.field private static final MSG_SET_ICON:I = 0x13e

.field private static final MSG_SET_LOGO:I = 0x13d

.field private static final MSG_SET_NAVIGATION_MODE:I = 0x140

.field private static final MSG_SET_SUBTITLE:I = 0x141

.field private static final MSG_SET_SUBTITLE_ATTRIBUTES:I = 0x146

.field private static final MSG_SET_TITLE:I = 0x13a

.field private static final MSG_SET_TITLE_ATTRIBUTES:I = 0x145

.field private static final MSG_SHOW:I = 0x13b

.field private static final NAVIGATION_MODE:Ljava/lang/String; = "navigationMode"

.field private static final SHOW_HOME_AS_UP:Ljava/lang/String; = "showHomeAsUp"

.field private static final SUBTITLE_ATTRIBUTES:Ljava/lang/String; = "subtitleAttributes"

.field private static final TAG:Ljava/lang/String; = "ActionBarProxy"

.field private static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private actionBar:Landroid/support/v7/app/ActionBar;

.field private customView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field private showTitleEnabled:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v7/app/AppCompatActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->showTitleEnabled:Z

    .line 75
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 76
    return-void
.end method

.method private getDrawableFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 583
    new-instance v0, Lorg/appcelerator/titanium/util/TiUrl;

    invoke-direct {v0, p1}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, "imageUrl":Lorg/appcelerator/titanium/util/TiUrl;
    new-instance v1, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 585
    .local v1, "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiUrl;->resolve()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private handleHide()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    const-string v0, "ActionBarProxy"

    const-string v1, "ActionBar is not enabled"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSetBackgroundColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "bgColor"    # Ljava/lang/String;

    .prologue
    .line 419
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_1

    .line 420
    const-string v0, "ActionBarProxy"

    const-string v1, "ActionBar is not enabled"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    if-eqz p1, :cond_0

    .line 426
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    iget-boolean v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->showTitleEnabled:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 427
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    iget-boolean v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->showTitleEnabled:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 428
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 426
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleSetBackgroundImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-nez v1, :cond_1

    .line 404
    const-string v1, "ActionBarProxy"

    const-string v2, "ActionBar is not enabled"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getDrawableFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 410
    .local v0, "backgroundImage":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 411
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    iget-boolean v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->showTitleEnabled:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 412
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    iget-boolean v2, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->showTitleEnabled:Z

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 413
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 411
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private handleSetCustomView()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 538
    const-string v0, "ActionBarProxy"

    const-string v1, "ActionBar is not enabled"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->customView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private handleSetIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 339
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-nez v1, :cond_1

    .line 340
    const-string v1, "ActionBarProxy"

    const-string v2, "ActionBar is not enabled"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getDrawableFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 345
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 346
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private handleSetLogo(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 570
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-nez v1, :cond_1

    .line 571
    const-string v1, "ActionBarProxy"

    const-string v2, "ActionBar is not enabled"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getDrawableFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 576
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 577
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private handleSetSubTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 368
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_1

    .line 369
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 370
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 372
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 373
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 374
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 381
    .end local v0    # "ssb":Landroid/text/SpannableStringBuilder;
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 379
    :cond_1
    const-string v1, "ActionBarProxy"

    const-string v2, "ActionBar is not enabled"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSetSubtitleAttributes(Ljava/util/HashMap;)V
    .locals 10
    .param p1, "d"    # Ljava/util/HashMap;

    .prologue
    const/16 v9, 0x21

    const/4 v8, 0x0

    .line 485
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-nez v5, :cond_0

    .line 486
    const-string v5, "ActionBarProxy"

    const-string v6, "ActionBar is not enabled"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 492
    .local v0, "appContext":Lorg/appcelerator/titanium/TiApplication;
    const-string v3, ""

    .line 494
    .local v3, "subtitle":Ljava/lang/String;
    const-string v5, "subtitle"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 495
    const-string v5, "subtitle"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "subtitle":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 502
    .restart local v3    # "subtitle":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v5

    instance-of v5, v5, Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_8

    .line 503
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/SpannableStringBuilder;

    .line 504
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 505
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 510
    :goto_2
    const-string v5, "color"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 511
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const-string v5, "color"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v6, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v7, 0x12

    invoke-virtual {v2, v6, v8, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 517
    :cond_2
    const-string v5, "font"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 518
    const-string v5, "font"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 519
    .local v1, "font":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "fontFamily"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 520
    new-instance v5, Lorg/appcelerator/titanium/util/TypefaceSpan;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v6

    const-string v7, "fontFamily"

    invoke-static {v1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/appcelerator/titanium/util/TypefaceSpan;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v5, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 522
    :cond_3
    const-string v5, "fontSize"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 523
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const-string v6, "fontSize"

    invoke-static {v1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawSize(Ljava/lang/String;Landroid/content/Context;)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v5, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v5, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 525
    :cond_4
    const-string v5, "fontWeight"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 526
    const-string v5, "fontWeight"

    invoke-static {v1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "fontStyle"

    invoke-static {v1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypefaceStyle(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 527
    .local v4, "typefaceStyle":I
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v5, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 532
    .end local v1    # "font":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "typefaceStyle":I
    :cond_5
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v5, v2}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 496
    .end local v2    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_6
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 497
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 498
    :cond_7
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v5

    instance-of v5, v5, Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_1

    .line 499
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 507
    :cond_8
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v2    # "ssb":Landroid/text/SpannableStringBuilder;
    goto/16 :goto_2
.end method

.method private handleSetTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_1

    .line 353
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 355
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 356
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 357
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    .end local v0    # "ssb":Landroid/text/SpannableStringBuilder;
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 362
    :cond_1
    const-string v1, "ActionBarProxy"

    const-string v2, "ActionBar is not enabled"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSetTitleAttributes(Ljava/util/HashMap;)V
    .locals 9
    .param p1, "d"    # Ljava/util/HashMap;

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x0

    .line 434
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-nez v4, :cond_0

    .line 435
    const-string v4, "ActionBarProxy"

    const-string v5, "ActionBar is not enabled"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_0
    return-void

    .line 440
    :cond_0
    const-string v2, ""

    .line 442
    .local v2, "title":Ljava/lang/String;
    const-string v4, "title"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 443
    const-string v4, "title"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "title":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 450
    .restart local v2    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v4, v4, Landroid/text/SpannableStringBuilder;

    if-eqz v4, :cond_8

    .line 451
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 452
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 453
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 458
    :goto_2
    const-string v4, "color"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 459
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "color"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v5, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v6, 0x12

    invoke-virtual {v1, v5, v7, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 465
    :cond_2
    const-string v4, "font"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 466
    const-string v4, "font"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 467
    .local v0, "font":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "fontFamily"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 468
    new-instance v4, Lorg/appcelerator/titanium/util/TypefaceSpan;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    const-string v6, "fontFamily"

    invoke-static {v0, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/appcelerator/titanium/util/TypefaceSpan;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v7, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 470
    :cond_3
    const-string v4, "fontSize"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 471
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const-string v5, "fontSize"

    invoke-static {v0, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawSize(Ljava/lang/String;Landroid/content/Context;)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v7, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 473
    :cond_4
    const-string v4, "fontWeight"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 474
    const-string v4, "fontWeight"

    invoke-static {v0, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fontStyle"

    invoke-static {v0, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypefaceStyle(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 475
    .local v3, "typefaceStyle":I
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v7, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 480
    .end local v0    # "font":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "typefaceStyle":I
    :cond_5
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v4, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 444
    .end local v1    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_6
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 445
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 446
    :cond_7
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v4, v4, Landroid/text/SpannableStringBuilder;

    if-eqz v4, :cond_1

    .line 447
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 455
    :cond_8
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1    # "ssb":Landroid/text/SpannableStringBuilder;
    goto/16 :goto_2
.end method

.method private handleShow()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    const-string v0, "ActionBarProxy"

    const-string v1, "ActionBar is not enabled"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlesetDisplayHomeAsUp(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    .line 547
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    const-string v0, "ActionBarProxy"

    const-string v1, "ActionBar is not enabled"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlesetHomeButtonEnabled(Z)V
    .locals 2
    .param p1, "homeButtonEnabled"    # Z

    .prologue
    .line 556
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    const-string v0, "ActionBarProxy"

    const-string v1, "ActionBar is not enabled"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlesetNavigationMode(I)V
    .locals 1
    .param p1, "navigationMode"    # I

    .prologue
    .line 565
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 566
    return-void
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    const-string v0, "Ti.Android.ActionBar"

    return-object v0
.end method

.method public getCustomView()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->customView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 288
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getNavigationMode()I

    move-result v0

    goto :goto_0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 263
    :goto_0
    return-object v0

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 277
    :goto_0
    return-object v0

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 591
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 657
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 593
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "showHomeAsUp"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handlesetDisplayHomeAsUp(Z)V

    move v1, v2

    .line 594
    goto :goto_0

    .line 596
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "navigationMode"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handlesetNavigationMode(I)V

    move v1, v2

    .line 597
    goto :goto_0

    .line 599
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "backgroundImage"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetBackgroundImage(Ljava/lang/String;)V

    move v1, v2

    .line 600
    goto :goto_0

    .line 602
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "backgroundColor"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetBackgroundColor(Ljava/lang/String;)V

    move v1, v2

    .line 603
    goto :goto_0

    .line 605
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "title"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetTitle(Ljava/lang/String;)V

    move v1, v2

    .line 606
    goto :goto_0

    .line 608
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "subtitle"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetSubTitle(Ljava/lang/String;)V

    move v1, v2

    .line 609
    goto :goto_0

    .line 611
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "titleAttributes"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetTitleAttributes(Ljava/util/HashMap;)V

    move v1, v2

    .line 612
    goto :goto_0

    .line 614
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "subtitleAttributes"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetSubtitleAttributes(Ljava/util/HashMap;)V

    move v1, v2

    .line 615
    goto :goto_0

    .line 617
    :pswitch_8
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetCustomView()V

    move v1, v2

    .line 618
    goto/16 :goto_0

    .line 620
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    .line 621
    .local v0, "show":Z
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_0

    .line 622
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    move v1, v2

    .line 624
    goto/16 :goto_0

    .line 627
    .end local v0    # "show":Z
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    .line 628
    .restart local v0    # "show":Z
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_1

    .line 629
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_1
    move v1, v2

    .line 631
    goto/16 :goto_0

    .line 634
    .end local v0    # "show":Z
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    .line 635
    .restart local v0    # "show":Z
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_2

    .line 636
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 637
    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->showTitleEnabled:Z

    :cond_2
    move v1, v2

    .line 639
    goto/16 :goto_0

    .line 642
    .end local v0    # "show":Z
    :pswitch_c
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleShow()V

    move v1, v2

    .line 643
    goto/16 :goto_0

    .line 645
    :pswitch_d
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleHide()V

    move v1, v2

    .line 646
    goto/16 :goto_0

    .line 648
    :pswitch_e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "logo"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetLogo(Ljava/lang/String;)V

    move v1, v2

    .line 649
    goto/16 :goto_0

    .line 651
    :pswitch_f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "icon"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetIcon(Ljava/lang/String;)V

    move v1, v2

    .line 652
    goto/16 :goto_0

    .line 654
    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "homeButtonEnabled"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handlesetHomeButtonEnabled(Z)V

    move v1, v2

    .line 655
    goto/16 :goto_0

    .line 591
    nop

    :pswitch_data_0
    .packed-switch 0x138
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_1
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 304
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleHide()V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 663
    const-string v1, "onHomeIconItemSelected"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 674
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 675
    return-void

    .line 669
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13f

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 670
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "homeButtonEnabled"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 671
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "bgColor"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetBackgroundColor(Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x144

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "backgroundColor"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetBackgroundImage(Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x139

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 121
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "backgroundImage"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setCustomView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .param p1, "viewProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    const-string v1, "ActionBarProxy"

    const-string v2, "Invalid value for customView"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void

    .line 194
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->customView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 196
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetCustomView()V

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x147

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 200
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setDisplayHomeAsUp(Z)V
    .locals 4
    .param p1, "showHomeAsUp"    # Z

    .prologue
    .line 81
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handlesetDisplayHomeAsUp(Z)V

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x138

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 85
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "showHomeAsUp"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 213
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-nez v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x148

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 221
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 227
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-nez v1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x142

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 235
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 241
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    if-nez v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 247
    iput-boolean p1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->showTitleEnabled:Z

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x143

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 250
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 4
    .param p1, "homeButtonEnabled"    # Z

    .prologue
    .line 93
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handlesetHomeButtonEnabled(Z)V

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13f

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 97
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "homeButtonEnabled"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetIcon(Ljava/lang/String;)V

    .line 335
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13e

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 331
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetLogo(Ljava/lang/String;)V

    .line 322
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13d

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 318
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "logo"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setNavigationMode(I)V
    .locals 4
    .param p1, "navigationMode"    # I

    .prologue
    .line 105
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handlesetNavigationMode(I)V

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x140

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 109
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "navigationMode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetSubTitle(Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x141

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 157
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "subtitle"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setSubtitleAttributes(Ljava/util/HashMap;)V
    .locals 3
    .param p1, "d"    # Ljava/util/HashMap;

    .prologue
    .line 177
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetSubtitleAttributes(Ljava/util/HashMap;)V

    .line 184
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x146

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 181
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "subtitleAttributes"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 182
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetTitle(Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13a

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setTitleAttributes(Ljava/util/HashMap;)V
    .locals 3
    .param p1, "d"    # Ljava/util/HashMap;

    .prologue
    .line 165
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetTitleAttributes(Ljava/util/HashMap;)V

    .line 172
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x145

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 169
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "titleAttributes"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 170
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 294
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleShow()V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
