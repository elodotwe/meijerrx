.class public Lti/modules/titanium/ui/WindowProxy;
.super Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.source "WindowProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiActivityWindow;


# static fields
.field private static final MSG_FIRST_ID:I = 0x4bc

.field protected static final MSG_LAST_ID:I = 0x8a3

.field private static final MSG_SET_PIXEL_FORMAT:I = 0x520

.field private static final MSG_SET_STATUS_BAR_COLOR:I = 0x523

.field private static final MSG_SET_TITLE:I = 0x521

.field private static final MSG_SET_WIDTH_HEIGHT:I = 0x522

.field private static final PROPERTY_POST_WINDOW_CREATED:Ljava/lang/String; = "postWindowCreated"

.field private static final TAG:Ljava/lang/String; = "WindowProxy"


# instance fields
.field private windowActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/TiBaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;-><init>()V

    .line 74
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "windowPixelFormat"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method private fillIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 271
    const/4 v7, 0x0

    .line 272
    .local v7, "windowFlags":I
    const-string v8, "windowFlags"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 273
    const-string v8, "windowFlags"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v12}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v7

    .line 277
    :cond_0
    const-string v8, "fullscreen"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 278
    const-string v8, "fullscreen"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v12}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v2

    .line 279
    .local v2, "flagVal":Z
    if-eqz v2, :cond_1

    .line 280
    or-int/lit16 v7, v7, 0x400

    .line 285
    .end local v2    # "flagVal":Z
    :cond_1
    const-string v8, "flagSecure"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 286
    const-string v8, "flagSecure"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v12}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v2

    .line 287
    .restart local v2    # "flagVal":Z
    if-eqz v2, :cond_2

    .line 288
    or-int/lit16 v7, v7, 0x2000

    .line 293
    .end local v2    # "flagVal":Z
    :cond_2
    const-string v8, "windowFlags"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string v8, "windowSoftInputMode"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 296
    const-string v8, "windowSoftInputMode"

    const-string v9, "windowSoftInputMode"

    invoke-virtual {p0, v9}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v9

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    :cond_3
    const-string v8, "exitOnClose"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 299
    const-string v8, "finishRoot"

    const-string v9, "exitOnClose"

    invoke-virtual {p0, v9}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v12}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v9

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 304
    :goto_0
    const/4 v3, 0x0

    .line 305
    .local v3, "modal":Z
    const-string v8, "modal"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 306
    const-string v8, "modal"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v12}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v3

    .line 307
    if-eqz v3, :cond_4

    .line 308
    const-class v8, Lorg/appcelerator/titanium/TiTranslucentActivity;

    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 310
    :cond_4
    const-string v8, "modal"

    invoke-virtual {p2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    :cond_5
    if-nez v3, :cond_c

    const-string v8, "opacity"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 313
    const-class v8, Lorg/appcelerator/titanium/TiTranslucentActivity;

    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 320
    :cond_6
    :goto_1
    const-string v8, "windowPixelFormat"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 321
    const-string v8, "windowPixelFormat"

    const-string v9, "windowPixelFormat"

    invoke-virtual {p0, v9}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v12}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v9

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    :cond_7
    const-string v8, "theme"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 326
    const-string v8, "theme"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, "theme":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 329
    :try_start_0
    const-string v8, "theme"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "style."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "[^A-Za-z0-9_]"

    const-string v11, "_"

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v5    # "theme":Ljava/lang/String;
    :cond_8
    :goto_2
    const-string v8, "splitActionBar"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 339
    const-string v8, "splitActionBar"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v12}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v4

    .line 340
    .local v4, "splitActionBar":Z
    if-eqz v4, :cond_9

    .line 341
    const-string v8, "splitActionBar"

    invoke-virtual {p2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    .end local v4    # "splitActionBar":Z
    :cond_9
    const-string v8, "translucent"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 347
    const-string v8, "translucent"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v12}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v6

    .line 348
    .local v6, "translucentActionBar":Z
    if-eqz v6, :cond_a

    .line 349
    const-string v8, "translucent"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 352
    .end local v6    # "translucentActionBar":Z
    :cond_a
    return-void

    .line 301
    .end local v3    # "modal":Z
    :cond_b
    const-string v8, "finishRoot"

    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v9

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 314
    .restart local v3    # "modal":Z
    :cond_c
    const-string v8, "backgroundColor"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 315
    iget-object v8, p0, Lti/modules/titanium/ui/WindowProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v9, "backgroundColor"

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 316
    .local v0, "bgColor":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    const/16 v9, 0xff

    if-ge v8, v9, :cond_6

    .line 317
    const-class v8, Lorg/appcelerator/titanium/TiTranslucentActivity;

    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 331
    .end local v0    # "bgColor":I
    .restart local v5    # "theme":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "WindowProxy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot find the theme: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setWindowWidthHeight(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "width"    # Ljava/lang/Object;
    .param p2, "height"    # Ljava/lang/Object;

    .prologue
    .line 463
    invoke-virtual {p0}, Lti/modules/titanium/ui/WindowProxy;->getWindowActivity()Landroid/app/Activity;

    move-result-object v0

    .line 464
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 465
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 466
    .local v6, "win":Landroid/view/Window;
    if-eqz v6, :cond_2

    .line 467
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 468
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 469
    const/4 v4, -0x1

    .line 470
    .local v4, "w":I
    if-eqz p1, :cond_0

    const-string v7, "fill"

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 471
    const/4 v7, 0x6

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    .line 472
    .local v5, "wDimension":Lorg/appcelerator/titanium/TiDimension;
    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v7

    if-nez v7, :cond_0

    .line 473
    invoke-virtual {v5, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v4

    .line 476
    .end local v5    # "wDimension":Lorg/appcelerator/titanium/TiDimension;
    :cond_0
    const/4 v2, -0x1

    .line 477
    .local v2, "h":I
    if-eqz p2, :cond_1

    const-string v7, "fill"

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 478
    const/4 v7, 0x7

    invoke-static {p2, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v3

    .line 479
    .local v3, "hDimension":Lorg/appcelerator/titanium/TiDimension;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v7

    if-nez v7, :cond_1

    .line 480
    invoke-virtual {v3, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    .line 483
    .end local v3    # "hDimension":Lorg/appcelerator/titanium/TiDimension;
    :cond_1
    invoke-virtual {v6, v4, v2}, Landroid/view/Window;->setLayout(II)V

    .line 487
    .end local v1    # "decorView":Landroid/view/View;
    .end local v2    # "h":I
    .end local v4    # "w":I
    .end local v6    # "win":Landroid/view/Window;
    :cond_2
    return-void
.end method


# virtual methods
.method public close(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 124
    iget-boolean v0, p0, Lti/modules/titanium/ui/WindowProxy;->opened:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/ui/WindowProxy;->opening:Z

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->close(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    .line 88
    new-instance v0, Lti/modules/titanium/ui/widget/TiView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 89
    .local v0, "v":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v1

    iput-boolean v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 90
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v1

    iput-boolean v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 91
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/WindowProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 92
    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    const-string v0, "Ti.UI.Window"

    return-object v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 81
    .local v0, "table":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "title"

    const-string v2, "titleid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-object v0
.end method

.method protected getWindowActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxy;->windowActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxy;->windowActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleClose(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 6
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 163
    const-string v2, "animated"

    const/4 v4, 0x1

    invoke-static {p1, v2, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v1

    .line 164
    .local v1, "animated":Z
    iget-object v2, p0, Lti/modules/titanium/ui/WindowProxy;->windowActivity:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lti/modules/titanium/ui/WindowProxy;->windowActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/TiBaseActivity;

    move-object v0, v2

    .line 165
    .local v0, "activity":Lorg/appcelerator/titanium/TiBaseActivity;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 167
    if-nez v1, :cond_3

    .line 168
    invoke-virtual {v0, v5, v5}, Lorg/appcelerator/titanium/TiBaseActivity;->overridePendingTransition(II)V

    .line 176
    :cond_0
    :goto_1
    invoke-static {v0}, Lorg/appcelerator/titanium/TiApplication;->removeFromActivityStack(Landroid/app/Activity;)V

    .line 177
    iput-object v3, p0, Lti/modules/titanium/ui/WindowProxy;->windowActivity:Ljava/lang/ref/WeakReference;

    .line 179
    :cond_1
    return-void

    .end local v0    # "activity":Lorg/appcelerator/titanium/TiBaseActivity;
    :cond_2
    move-object v0, v3

    .line 164
    goto :goto_0

    .line 169
    .restart local v0    # "activity":Lorg/appcelerator/titanium/TiBaseActivity;
    :cond_3
    const-string v2, "activityEnterAnimation"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "activityExitAnimation"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    :cond_4
    const-string v2, "activityEnterAnimation"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v2

    const-string v4, "activityExitAnimation"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lorg/appcelerator/titanium/TiBaseActivity;->overridePendingTransition(II)V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 419
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 458
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v3

    :goto_0
    return v3

    .line 421
    :pswitch_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/WindowProxy;->getWindowActivity()Landroid/app/Activity;

    move-result-object v0

    .line 422
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 424
    .local v2, "win":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 425
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setFormat(I)V

    .line 426
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .end local v2    # "win":Landroid/view/Window;
    :cond_0
    move v3, v4

    .line 429
    goto :goto_0

    .line 432
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_1

    .line 433
    invoke-virtual {p0}, Lti/modules/titanium/ui/WindowProxy;->getWindowActivity()Landroid/app/Activity;

    move-result-object v0

    .line 434
    .restart local v0    # "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 435
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 436
    .restart local v2    # "win":Landroid/view/Window;
    if-eqz v2, :cond_1

    .line 437
    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 438
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 439
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "win":Landroid/view/Window;
    :cond_1
    move v3, v4

    .line 443
    goto :goto_0

    .line 446
    :pswitch_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/WindowProxy;->getWindowActivity()Landroid/app/Activity;

    move-result-object v0

    .line 447
    .restart local v0    # "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 448
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v5, ""

    invoke-static {v3, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    move v3, v4

    .line 450
    goto :goto_0

    .line 453
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    .line 454
    .local v1, "obj":[Ljava/lang/Object;
    aget-object v3, v1, v5

    aget-object v5, v1, v4

    invoke-direct {p0, v3, v5}, Lti/modules/titanium/ui/WindowProxy;->setWindowWidthHeight(Ljava/lang/Object;Ljava/lang/Object;)V

    move v3, v4

    .line 455
    goto :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x520
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 7
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 133
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 135
    .local v2, "topActivity":Landroid/app/Activity;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lorg/appcelerator/titanium/TiActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v2, v1}, Lti/modules/titanium/ui/WindowProxy;->fillIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 141
    invoke-static {p0}, Lorg/appcelerator/titanium/TiActivityWindows;->addWindow(Lorg/appcelerator/titanium/TiActivityWindow;)I

    move-result v3

    .line 142
    .local v3, "windowId":I
    const-string v4, "useActivityWindow"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    const-string v4, "windowId"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const-string v4, "animated"

    invoke-static {p1, v4, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v0

    .line 146
    .local v0, "animated":Z
    if-nez v0, :cond_2

    .line 147
    const/high16 v4, 0x10000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 149
    invoke-virtual {v2, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 150
    :cond_2
    const-string v4, "activityEnterAnimation"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "activityExitAnimation"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 152
    :cond_3
    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 153
    const-string v4, "activityEnterAnimation"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v4

    const-string v5, "activityExitAnimation"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 156
    :cond_4
    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 357
    iget-boolean v2, p0, Lti/modules/titanium/ui/WindowProxy;->opening:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lti/modules/titanium/ui/WindowProxy;->opened:Z

    if-eqz v2, :cond_1

    .line 358
    :cond_0
    const-string v2, "windowPixelFormat"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    invoke-virtual {p0}, Lti/modules/titanium/ui/WindowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x520

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 377
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    :cond_2
    return-void

    .line 360
    :cond_3
    const-string v2, "statusBarColor"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 361
    invoke-virtual {p0}, Lti/modules/titanium/ui/WindowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x523

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 362
    :cond_4
    const-string v2, "title"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 363
    invoke-virtual {p0}, Lti/modules/titanium/ui/WindowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x521

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 364
    :cond_5
    const-string v2, "top"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "bottom"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "left"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "right"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 368
    const-string v2, "exitOnClose"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Lti/modules/titanium/ui/WindowProxy;->windowActivity:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lti/modules/titanium/ui/WindowProxy;->windowActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object v0, v2

    .line 370
    .local v0, "activity":Landroid/app/Activity;
    :goto_1
    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 372
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "finishRoot"

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 369
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onWindowActivityCreated()V
    .locals 2

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/WindowProxy;->opened:Z

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/WindowProxy;->opening:Z

    .line 257
    const-string v0, "open"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/WindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {p0}, Lti/modules/titanium/ui/WindowProxy;->handlePostOpen()V

    .line 260
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowActivityCreated()V

    .line 261
    return-void
.end method

.method public open(Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "option":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 100
    check-cast v1, Ljava/util/HashMap;

    .line 102
    :cond_0
    if-eqz v1, :cond_1

    .line 103
    iget-object v2, p0, Lti/modules/titanium/ui/WindowProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v2, v1}, Lorg/appcelerator/kroll/KrollDict;->putAll(Ljava/util/Map;)V

    .line 106
    :cond_1
    const-string v2, "orientationModes"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    const-string v2, "orientationModes"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, "obj":Ljava/lang/Object;
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 109
    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "obj":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toIntArray([Ljava/lang/Object;)[I

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/ui/WindowProxy;->orientationModes:[I

    .line 114
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/WindowProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v3, "top"

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v2, p0, Lti/modules/titanium/ui/WindowProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v3, "bottom"

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v2, p0, Lti/modules/titanium/ui/WindowProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v3, "left"

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v2, p0, Lti/modules/titanium/ui/WindowProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v3, "right"

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->open(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public setHeight(Ljava/lang/Object;)V
    .locals 6
    .param p1, "height"    # Ljava/lang/Object;

    .prologue
    .line 402
    iget-boolean v2, p0, Lti/modules/titanium/ui/WindowProxy;->opening:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lti/modules/titanium/ui/WindowProxy;->opened:Z

    if-eqz v2, :cond_1

    .line 403
    :cond_0
    const-string v2, "height"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 404
    .local v0, "current":Ljava/lang/Object;
    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/ui/WindowProxy;->shouldFireChange(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    const-string v2, "width"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 406
    .local v1, "width":Ljava/lang/Object;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    invoke-direct {p0, v1, p1}, Lti/modules/titanium/ui/WindowProxy;->setWindowWidthHeight(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 413
    .end local v0    # "current":Ljava/lang/Object;
    .end local v1    # "width":Ljava/lang/Object;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setHeight(Ljava/lang/Object;)V

    .line 414
    return-void

    .line 409
    .restart local v0    # "current":Ljava/lang/Object;
    .restart local v1    # "width":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/WindowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x522

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setWidth(Ljava/lang/Object;)V
    .locals 6
    .param p1, "width"    # Ljava/lang/Object;

    .prologue
    .line 384
    iget-boolean v2, p0, Lti/modules/titanium/ui/WindowProxy;->opening:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lti/modules/titanium/ui/WindowProxy;->opened:Z

    if-eqz v2, :cond_1

    .line 385
    :cond_0
    const-string v2, "width"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 386
    .local v0, "current":Ljava/lang/Object;
    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/ui/WindowProxy;->shouldFireChange(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    const-string v2, "height"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 388
    .local v1, "height":Ljava/lang/Object;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    invoke-direct {p0, p1, v1}, Lti/modules/titanium/ui/WindowProxy;->setWindowWidthHeight(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 395
    .end local v0    # "current":Ljava/lang/Object;
    .end local v1    # "height":Ljava/lang/Object;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setWidth(Ljava/lang/Object;)V

    .line 396
    return-void

    .line 391
    .restart local v0    # "current":Ljava/lang/Object;
    .restart local v1    # "height":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/WindowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x522

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "activity"    # Lorg/appcelerator/titanium/TiBaseActivity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    new-instance v15, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lti/modules/titanium/ui/WindowProxy;->windowActivity:Ljava/lang/ref/WeakReference;

    .line 185
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->setWindowProxy(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 186
    invoke-virtual/range {p0 .. p1}, Lti/modules/titanium/ui/WindowProxy;->setActivity(Landroid/app/Activity;)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Lorg/appcelerator/titanium/TiBaseActivity;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v3

    .line 190
    .local v3, "activityProxy":Lorg/appcelerator/titanium/proxy/ActivityProxy;
    const/4 v10, 0x0

    .line 191
    .local v10, "options":Lorg/appcelerator/kroll/KrollDict;
    const-string v15, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 192
    const-string v15, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 193
    .local v2, "activityObject":Ljava/lang/Object;
    instance-of v15, v2, Ljava/util/HashMap;

    if-eqz v15, :cond_0

    .line 194
    new-instance v10, Lorg/appcelerator/kroll/KrollDict;

    .end local v10    # "options":Lorg/appcelerator/kroll/KrollDict;
    check-cast v2, Ljava/util/HashMap;

    .end local v2    # "activityObject":Ljava/lang/Object;
    invoke-direct {v10, v2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 195
    .restart local v10    # "options":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v3, v10}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 199
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 204
    .local v14, "win":Landroid/view/Window;
    const-string v15, "modal"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v9

    .line 205
    .local v9, "modal":Z
    const/4 v4, 0x0

    .line 206
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_7

    .line 207
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    const/high16 v15, -0x61000000

    invoke-direct {v4, v15}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 211
    .restart local v4    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 212
    invoke-virtual {v14, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_2
    const-string v15, "width"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "height"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 221
    :cond_3
    const-string v15, "width"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 222
    .local v13, "width":Ljava/lang/Object;
    const-string v15, "height"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lti/modules/titanium/ui/WindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 223
    .local v8, "height":Ljava/lang/Object;
    invoke-virtual {v14}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 224
    .local v5, "decorView":Landroid/view/View;
    if-eqz v5, :cond_6

    .line 225
    const/4 v11, -0x1

    .line 226
    .local v11, "w":I
    if-eqz v13, :cond_4

    const-string v15, "fill"

    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 227
    const/4 v15, 0x6

    invoke-static {v13, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v12

    .line 228
    .local v12, "wDimension":Lorg/appcelerator/titanium/TiDimension;
    invoke-virtual {v12}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v15

    if-nez v15, :cond_4

    .line 229
    invoke-virtual {v12, v5}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v11

    .line 232
    .end local v12    # "wDimension":Lorg/appcelerator/titanium/TiDimension;
    :cond_4
    const/4 v6, -0x1

    .line 233
    .local v6, "h":I
    if-eqz v8, :cond_5

    const-string v15, "fill"

    invoke-virtual {v8, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 234
    const/4 v15, 0x7

    invoke-static {v8, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v7

    .line 235
    .local v7, "hDimension":Lorg/appcelerator/titanium/TiDimension;
    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v15

    if-nez v15, :cond_5

    .line 236
    invoke-virtual {v7, v5}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    .line 239
    .end local v7    # "hDimension":Lorg/appcelerator/titanium/TiDimension;
    :cond_5
    invoke-virtual {v14, v11, v6}, Landroid/view/Window;->setLayout(II)V

    .line 243
    .end local v5    # "decorView":Landroid/view/View;
    .end local v6    # "h":I
    .end local v8    # "height":Ljava/lang/Object;
    .end local v11    # "w":I
    .end local v13    # "width":Ljava/lang/Object;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/appcelerator/titanium/TiBaseActivity;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v15

    invoke-virtual {v15}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getDecorView()Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 244
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->addWindowToStack(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 247
    const-string v15, "postWindowCreated"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lti/modules/titanium/ui/WindowProxy;->callPropertySync(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    return-void

    .line 208
    :cond_7
    const-string v15, "opacity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lti/modules/titanium/ui/WindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 209
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    invoke-direct {v4, v15}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v4    # "background":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0
.end method
