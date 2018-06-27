.class public abstract Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
.super Landroid/view/ViewGroup;
.source "TiBaseTableViewItem.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiBaseTableViewItem"

.field private static checkIndicatorBitmap:Landroid/graphics/Bitmap;

.field private static childIndicatorBitmap:Landroid/graphics/Bitmap;


# instance fields
.field protected className:Ljava/lang/String;

.field protected handler:Landroid/os/Handler;

.field protected tfh:Lorg/appcelerator/titanium/util/TiFileHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    sput-object v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->childIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 40
    sput-object v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->checkIndicatorBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v7, 0x1e0

    const/16 v6, 0x140

    const/16 v5, 0x10

    const/16 v4, 0x9

    .line 48
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->handler:Landroid/os/Handler;

    .line 51
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->childIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->checkIndicatorBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    .line 52
    :cond_0
    const-class v3, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    monitor-enter v3

    .line 54
    :try_start_0
    sget v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    .line 55
    .local v0, "density":I
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->childIndicatorBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 56
    const-string v1, "/org/appcelerator/titanium/res/drawable/btn_more.png"

    .line 58
    .local v1, "path":Ljava/lang/String;
    sparse-switch v0, :sswitch_data_0

    .line 63
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_1

    if-ne v0, v6, :cond_1

    .line 64
    const-string v1, "/org/appcelerator/titanium/res/drawable/btn_more_64.png"

    .line 67
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_2

    if-lt v0, v7, :cond_2

    .line 68
    const-string v1, "/org/appcelerator/titanium/res/drawable/btn_more_100.png"

    .line 71
    :cond_2
    const-class v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->childIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 73
    .end local v1    # "path":Ljava/lang/String;
    :cond_3
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->checkIndicatorBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    .line 74
    const-string v1, "/org/appcelerator/titanium/res/drawable/btn_check_buttonless_on.png"

    .line 75
    .restart local v1    # "path":Ljava/lang/String;
    sparse-switch v0, :sswitch_data_1

    .line 80
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_4

    if-ne v0, v6, :cond_4

    .line 81
    const-string v1, "/org/appcelerator/titanium/res/drawable/btn_check_buttonless_on_64.png"

    .line 84
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_5

    if-lt v0, v7, :cond_5

    .line 85
    const-string v1, "/org/appcelerator/titanium/res/drawable/btn_check_buttonless_on_100.png"

    .line 89
    :cond_5
    const-class v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->checkIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 91
    .end local v1    # "path":Ljava/lang/String;
    :cond_6
    monitor-exit v3

    .line 93
    .end local v0    # "density":I
    :cond_7
    return-void

    .line 59
    .restart local v0    # "density":I
    .restart local v1    # "path":Ljava/lang/String;
    :sswitch_0
    const-string v1, "/org/appcelerator/titanium/res/drawable/btn_more_48.png"

    goto :goto_0

    .line 60
    :sswitch_1
    const-string v1, "/org/appcelerator/titanium/res/drawable/btn_more_18.png"

    goto :goto_0

    .line 76
    :sswitch_2
    const-string v1, "/org/appcelerator/titanium/res/drawable/btn_check_buttonless_on_48.png"

    goto :goto_1

    .line 77
    :sswitch_3
    const-string v1, "/org/appcelerator/titanium/res/drawable/btn_check_buttonless_on_18.png"

    goto :goto_1

    .line 91
    .end local v0    # "density":I
    .end local v1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 58
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch

    .line 75
    :sswitch_data_1
    .sparse-switch
        0x78 -> :sswitch_3
        0xf0 -> :sswitch_2
    .end sparse-switch
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Landroid/app/Activity;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;-><init>(Landroid/app/Activity;)V

    .line 98
    return-void
.end method

.method protected static clearChildViews(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 5
    .param p0, "parent"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    .local v0, "arr$":[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 202
    .local v1, "childProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 203
    invoke-static {v1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->clearChildViews(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "childProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    return-void
.end method

.method private createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 121
    :try_start_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-object v2

    .line 122
    :catch_0
    move-exception v1

    .line 124
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "TiBaseTableViewItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 125
    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 128
    goto :goto_0
.end method


# virtual methods
.method public createHasCheckDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->checkIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public createHasChildDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->childIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundImageDrawable(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 157
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lorg/appcelerator/kroll/KrollProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getLastClickedViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
.end method

.method public getSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public hasSelector()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->tfh:Lorg/appcelerator/titanium/util/TiFileHelper;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->tfh:Lorg/appcelerator/titanium/util/TiFileHelper;

    .line 145
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->tfh:Lorg/appcelerator/titanium/util/TiFileHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->handler:Landroid/os/Handler;

    .line 197
    return-void
.end method

.method public setBackgroundDrawable(Lorg/appcelerator/kroll/KrollDict;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 163
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 166
    .local v0, "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 167
    .local v1, "transparent":Landroid/graphics/drawable/ColorDrawable;
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 169
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 171
    new-array v2, v5, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 173
    new-array v2, v4, [I

    invoke-virtual {v0, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 175
    const-string v2, "opacity"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const-string v2, "opacity"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 178
    :cond_0
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    return-void

    .line 167
    :array_0
    .array-data 4
        0x101009d
        0x101009e
        0x10100a7
    .end array-data

    .line 171
    :array_1
    .array-data 4
        0x101009c
        0x101009d
        0x101009e
    .end array-data
.end method

.method public setBackgroundFromProxy(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .param p1, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const-string v4, "backgroundImage"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 184
    .local v3, "bkgdImage":Ljava/lang/Object;
    const-string v4, "backgroundColor"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 185
    .local v2, "bkgdColor":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 186
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getBackgroundImageDrawable(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 192
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setBackgroundDrawable(Lorg/appcelerator/kroll/KrollDict;Landroid/graphics/drawable/Drawable;)V

    .line 193
    return-void

    .line 187
    :cond_1
    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 189
    .local v1, "bgColor":Ljava/lang/Integer;
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->className:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public abstract setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V
.end method
