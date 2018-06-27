.class public Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;
.super Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
.source "TiTableViewRowProxyItem.java"


# static fields
.field private static ICS_OR_GREATER:Z = false

.field private static final LEFT_MARGIN:I = 0x5

.field private static final MIN_HEIGHT:I = 0x30

.field private static final RIGHT_MARGIN:I = 0x7

.field private static final TAG:Ljava/lang/String; = "TitaniumTableViewItem"

.field private static filteredProperties:[Ljava/lang/String;


# instance fields
.field private content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field private hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private height:Lorg/appcelerator/titanium/TiDimension;

.field private item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

.field private leftImage:Landroid/widget/ImageView;

.field private rightImage:Landroid/widget/ImageView;

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field private selectorSource:Ljava/lang/Object;

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiUIView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->ICS_OR_GREATER:Z

    .line 579
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "backgroundImage"

    aput-object v3, v0, v2

    const-string v2, "backgroundColor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "backgroundSelectedImage"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "backgroundSelectedColor"

    aput-object v2, v0, v1

    sput-object v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filteredProperties:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 61
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;-><init>(Landroid/app/Activity;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->height:Lorg/appcelerator/titanium/TiDimension;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->handler:Landroid/os/Handler;

    .line 64
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {v0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 78
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;-><init>(Landroid/app/Activity;)V

    .line 79
    return-void
.end method

.method private canUseExistingViews(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "proxies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    const/4 v4, 0x0

    .line 164
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 165
    .local v1, "len":I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 167
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/view/TiUIView;

    .line 168
    .local v2, "view":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v4

    .line 177
    .end local v0    # "i":I
    .end local v2    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :goto_1
    return v3

    .line 170
    .restart local v0    # "i":I
    .restart local v2    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v5, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->checkViewHeirarchy(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    .line 171
    goto :goto_1

    .line 166
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_3
    move v3, v4

    .line 177
    goto :goto_1
.end method

.method private checkBorderProps(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Z
    .locals 7
    .param p1, "oldProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "newProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    .line 116
    .local v3, "oldProperties":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    .line 117
    .local v1, "newProperties":Lorg/appcelerator/kroll/KrollDict;
    const-string v6, "borderColor"

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "borderRadius"

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "borderWidth"

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v2, v5

    .line 120
    .local v2, "oldHasBorder":Z
    :goto_0
    const-string v6, "borderColor"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "borderRadius"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "borderWidth"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    move v0, v5

    .line 124
    .local v0, "newHasBorder":Z
    :goto_1
    if-ne v2, v0, :cond_4

    :goto_2
    return v5

    .end local v0    # "newHasBorder":Z
    .end local v2    # "oldHasBorder":Z
    :cond_2
    move v2, v4

    .line 117
    goto :goto_0

    .restart local v2    # "oldHasBorder":Z
    :cond_3
    move v0, v4

    .line 120
    goto :goto_1

    .restart local v0    # "newHasBorder":Z
    :cond_4
    move v5, v4

    .line 124
    goto :goto_2
.end method

.method private checkViewHeirarchy(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Z
    .locals 8
    .param p1, "oldProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "newProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 131
    if-ne p1, p2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v4

    .line 134
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_2

    move v4, v5

    .line 136
    goto :goto_0

    .line 137
    :cond_2
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->checkBorderProps(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Z

    move-result v6

    if-nez v6, :cond_3

    move v4, v5

    .line 139
    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    .line 143
    .local v3, "oldChildren":[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    .line 144
    .local v2, "newChildren":[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    array-length v6, v3

    array-length v7, v2

    if-eq v6, v7, :cond_4

    move v4, v5

    .line 145
    goto :goto_0

    .line 147
    :cond_4
    array-length v1, v3

    .line 148
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 149
    aget-object v6, v3, v0

    aget-object v7, v2, v0

    invoke-direct {p0, v6, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->checkViewHeirarchy(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Z

    move-result v6

    if-nez v6, :cond_5

    move v4, v5

    .line 150
    goto :goto_0

    .line 148
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private filterProperties(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 584
    if-nez p1, :cond_1

    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 592
    :cond_0
    return-object v0

    .line 586
    :cond_1
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 587
    .local v0, "filtered":Lorg/appcelerator/kroll/KrollDict;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filteredProperties:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 588
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filteredProperties:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 589
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filteredProperties:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getChangeSet(Lorg/appcelerator/kroll/KrollDict;Lorg/appcelerator/kroll/KrollDict;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "oldProps"    # Lorg/appcelerator/kroll/KrollDict;
    .param p2, "newProps"    # Lorg/appcelerator/kroll/KrollDict;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/kroll/KrollDict;",
            "Lorg/appcelerator/kroll/KrollDict;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/kroll/KrollPropertyChange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v5, "propertyChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/kroll/KrollPropertyChange;>;"
    invoke-virtual {p2}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 212
    .local v3, "oldValue":Ljava/lang/Object;
    invoke-virtual {p2, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 214
    .local v2, "newValue":Ljava/lang/Object;
    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    .line 215
    :cond_1
    if-nez v3, :cond_2

    if-nez v2, :cond_4

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 216
    :cond_4
    new-instance v4, Lorg/appcelerator/kroll/KrollPropertyChange;

    invoke-direct {v4, v1, v3, v2}, Lorg/appcelerator/kroll/KrollPropertyChange;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    .local v4, "pch":Lorg/appcelerator/kroll/KrollPropertyChange;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Object;
    .end local v3    # "oldValue":Ljava/lang/Object;
    .end local v4    # "pch":Lorg/appcelerator/kroll/KrollPropertyChange;
    :cond_5
    return-object v5
.end method


# virtual methods
.method protected addViewToOldRow(ILorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 4
    .param p1, "index"    # I
    .param p2, "titleView"    # Lorg/appcelerator/titanium/view/TiUIView;
    .param p3, "newViewProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 99
    const-string v1, "TitaniumTableViewItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was added an old style row, reusing the title TiUILabel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Lti/modules/titanium/ui/LabelProxy;

    invoke-direct {v0}, Lti/modules/titanium/ui/LabelProxy;-><init>()V

    .line 101
    .local v0, "label":Lti/modules/titanium/ui/LabelProxy;
    invoke-virtual {p2}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/LabelProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 102
    invoke-virtual {v0, p2}, Lti/modules/titanium/ui/LabelProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 103
    invoke-virtual {v0, p2}, Lti/modules/titanium/ui/LabelProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 104
    invoke-virtual {p2, v0}, Lorg/appcelerator/titanium/view/TiUIView;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 106
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getControls()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 107
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-object v0
.end method

.method protected applyChildProperties(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 8
    .param p1, "viewProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "view"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 280
    const/4 v3, 0x0

    .line 281
    .local v3, "i":I
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    .line 282
    .local v0, "childProxies":[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {p2}, Lorg/appcelerator/titanium/view/TiUIView;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/view/TiUIView;

    .line 283
    .local v2, "childView":Lorg/appcelerator/titanium/view/TiUIView;
    aget-object v1, v0, v3

    .line 284
    .local v1, "childProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v5

    .line 285
    .local v5, "oldProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eq v1, v5, :cond_0

    .line 286
    invoke-virtual {v1, v2, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->transferView(Lorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 287
    invoke-virtual {v2, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 288
    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getChangeSet(Lorg/appcelerator/kroll/KrollDict;Lorg/appcelerator/kroll/KrollDict;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Lorg/appcelerator/titanium/view/TiUIView;->propertiesChanged(Ljava/util/List;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 289
    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->applyChildProperties(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 291
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 292
    goto :goto_0

    .line 293
    .end local v1    # "childProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v2    # "childView":Lorg/appcelerator/titanium/view/TiUIView;
    .end local v5    # "oldProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_1
    return-void
.end method

.method protected createControls()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 232
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v5

    .line 233
    .local v5, "parent":Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v5}, Lti/modules/titanium/ui/TableViewRowProxy;->getControls()Ljava/util/ArrayList;

    move-result-object v6

    .line 234
    .local v6, "proxies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 236
    .local v1, "len":I
    invoke-direct {p0, v6}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->canUseExistingViews(Ljava/util/ArrayList;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 237
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v10}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 238
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    .line 239
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    .line 244
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 245
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 246
    .local v7, "proxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->clearChildViews(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 247
    invoke-virtual {v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->forceCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v9

    .line 248
    .local v9, "view":Lorg/appcelerator/titanium/view/TiUIView;
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {v9}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v8

    .line 250
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_0

    .line 251
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v9}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    .end local v0    # "i":I
    .end local v7    # "proxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v8    # "v":Landroid/view/View;
    .end local v9    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_1
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 257
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 258
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/appcelerator/titanium/view/TiUIView;

    .line 259
    .restart local v9    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v9}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    .line 260
    .local v3, "oldProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 262
    .local v2, "newProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eq v3, v2, :cond_3

    .line 263
    invoke-virtual {v2, v9, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->transferView(Lorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 264
    invoke-virtual {v9, v5}, Lorg/appcelerator/titanium/view/TiUIView;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 265
    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v10

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getChangeSet(Lorg/appcelerator/kroll/KrollDict;Lorg/appcelerator/kroll/KrollDict;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Lorg/appcelerator/titanium/view/TiUIView;->propertiesChanged(Ljava/util/List;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 267
    invoke-virtual {p0, v2, v9}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->applyChildProperties(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 257
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 271
    .end local v2    # "newProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v3    # "oldProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v9    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_4
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v10}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 272
    .local v4, "p":Landroid/view/ViewGroup$LayoutParams;
    iput v12, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 273
    iput v12, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 274
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v10, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    .end local v4    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    return-void
.end method

.method public getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    return-object v0
.end method

.method protected getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v0, Lti/modules/titanium/ui/TableViewRowProxy;

    return-object v0
.end method

.method public getSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 604
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v2

    .line 605
    .local v2, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 606
    const-string v4, "backgroundSelectedImage"

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 607
    const-string v4, "backgroundSelectedImage"

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "path":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 616
    .end local v1    # "path":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v4

    .line 611
    :cond_1
    const-string v4, "backgroundSelectedColor"

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 612
    const-string v4, "backgroundSelectedColor"

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v0

    .line 613
    .local v0, "color":I
    new-instance v4, Lti/modules/titanium/ui/widget/tableview/TiTableViewColorSelector;

    invoke-direct {v4, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewColorSelector;-><init>(I)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public hasSelector()Z
    .locals 2

    .prologue
    .line 597
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v0

    .line 598
    .local v0, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    const-string v1, "backgroundSelectedImage"

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "backgroundSelectedColor"

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hasView(Lorg/appcelerator/titanium/view/TiUIView;)Z
    .locals 4
    .param p1, "view"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    const/4 v2, 0x0

    .line 448
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v2

    .line 449
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/view/TiUIView;

    .line 450
    .local v1, "v":Lorg/appcelerator/titanium/view/TiUIView;
    if-ne v1, p1, :cond_2

    .line 451
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 539
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v10

    invoke-virtual {v10, p0}, Lti/modules/titanium/ui/TableViewRowProxy;->setTableViewItem(Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;)V

    .line 542
    move/from16 v2, p2

    .line 543
    .local v2, "contentLeft":I
    move/from16 v3, p4

    .line 544
    .local v3, "contentRight":I
    sub-int p5, p5, p3

    .line 545
    const/16 p3, 0x0

    .line 547
    sub-int v5, p5, p3

    .line 549
    .local v5, "height":I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 550
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    .line 551
    .local v9, "w":I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    .line 552
    .local v4, "h":I
    const/4 v6, 0x5

    .line 554
    .local v6, "leftMargin":I
    add-int v10, v9, v6

    add-int/2addr v2, v10

    .line 555
    sub-int v10, v5, v4

    div-int/lit8 v7, v10, 0x2

    .line 556
    .local v7, "offset":I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    add-int v11, p2, v6

    add-int v12, p3, v7

    add-int v13, p2, v6

    add-int/2addr v13, v9

    add-int v14, p3, v7

    add-int/2addr v14, v4

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/ImageView;->layout(IIII)V

    .line 559
    .end local v4    # "h":I
    .end local v6    # "leftMargin":I
    .end local v7    # "offset":I
    .end local v9    # "w":I
    :cond_0
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    .line 560
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    .line 561
    .restart local v9    # "w":I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    .line 562
    .restart local v4    # "h":I
    const/4 v8, 0x7

    .line 564
    .local v8, "rightMargin":I
    add-int v10, v9, v8

    sub-int/2addr v3, v10

    .line 565
    sub-int v10, v5, v4

    div-int/lit8 v7, v10, 0x2

    .line 566
    .restart local v7    # "offset":I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    sub-int v11, p4, v9

    sub-int/2addr v11, v8

    add-int v12, p3, v7

    sub-int v13, p4, v8

    add-int v14, p3, v7

    add-int/2addr v14, v4

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/ImageView;->layout(IIII)V

    .line 574
    .end local v4    # "h":I
    .end local v7    # "offset":I
    .end local v8    # "rightMargin":I
    .end local v9    # "w":I
    :cond_1
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v10, :cond_2

    .line 575
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {v10, v2, v0, v3, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->layout(IIII)V

    .line 577
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 460
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 461
    .local v15, "w":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 462
    .local v16, "wMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 463
    .local v5, "h":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 464
    .local v6, "hMode":I
    const/4 v8, 0x0

    .line 466
    .local v8, "imageHMargin":I
    const/4 v10, 0x0

    .line 467
    .local v10, "leftImageWidth":I
    const/4 v9, 0x0

    .line 468
    .local v9, "leftImageHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->measureChild(Landroid/view/View;II)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    .line 472
    add-int/lit8 v8, v8, 0x5

    .line 475
    :cond_0
    const/4 v13, 0x0

    .line 476
    .local v13, "rightImageWidth":I
    const/4 v12, 0x0

    .line 477
    .local v12, "rightImageHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->measureChild(Landroid/view/View;II)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v13

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v12

    .line 481
    add-int/lit8 v8, v8, 0x7

    .line 484
    :cond_1
    sub-int v17, v15, v10

    sub-int v17, v17, v13

    sub-int v4, v17, v8

    .line 487
    .local v4, "adjustedWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v17, v0

    check-cast v17, Lti/modules/titanium/ui/TableViewRowProxy;

    invoke-virtual/range {v17 .. v17}, Lti/modules/titanium/ui/TableViewRowProxy;->hasControls()Z

    move-result v7

    .line 492
    .local v7, "hasChildView":Z
    if-eqz v7, :cond_6

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setMinimumHeight(I)V

    .line 498
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-object/from16 v17, v0

    move/from16 v0, v16

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->measureChild(Landroid/view/View;II)V

    .line 499
    if-nez v6, :cond_5

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v17, v0

    check-cast v17, Lti/modules/titanium/ui/TableViewRowProxy;

    invoke-virtual/range {v17 .. v17}, Lti/modules/titanium/ui/TableViewRowProxy;->getTable()Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v14

    .line 501
    .local v14, "table":Lti/modules/titanium/ui/TableViewProxy;
    const/4 v11, -0x1

    .line 502
    .local v11, "minRowHeight":I
    if-eqz v14, :cond_2

    const-string v17, "minRowHeight"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 503
    const-string v17, "minRowHeight"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x7

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v11

    .line 508
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->height:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    .line 510
    if-nez v6, :cond_7

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getMeasuredHeight()I

    move-result v17

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 515
    :goto_1
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 520
    :goto_2
    if-eqz v7, :cond_3

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v5, v0, :cond_3

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 524
    :cond_3
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 525
    const-string v17, "TitaniumTableViewItem"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Row content measure ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "DEBUG_MODE"

    invoke-static/range {v17 .. v19}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-object/from16 v17, v0

    move/from16 v0, v16

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->measureChild(Landroid/view/View;II)V

    .line 532
    .end local v7    # "hasChildView":Z
    .end local v11    # "minRowHeight":I
    .end local v14    # "table":Lti/modules/titanium/ui/TableViewProxy;
    :cond_5
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setMeasuredDimension(II)V

    .line 533
    return-void

    .line 495
    .restart local v7    # "hasChildView":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x30

    invoke-virtual/range {v17 .. v18}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setMinimumHeight(I)V

    goto/16 :goto_0

    .line 513
    .restart local v11    # "minRowHeight":I
    .restart local v14    # "table":Lti/modules/titanium/ui/TableViewProxy;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getMeasuredHeight()I

    move-result v17

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto/16 :goto_1

    .line 517
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->height:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto/16 :goto_2
.end method

.method protected refreshOldStyleRow()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    const/4 v7, 0x0

    .line 297
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .line 298
    .local v1, "rp":Lti/modules/titanium/ui/TableViewRowProxy;
    const-string v5, "touchEnabled"

    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 303
    sget-boolean v5, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->ICS_OR_GREATER:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 304
    :cond_0
    const-string v5, "touchEnabled"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 310
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/view/TiUIView;

    .line 311
    .local v2, "rv":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v5, v2, Lti/modules/titanium/ui/widget/TiUILabel;

    if-nez v5, :cond_2

    .line 312
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 313
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 314
    const/4 v5, 0x0

    iput-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    .line 317
    .end local v2    # "rv":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_2
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    .line 318
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    .line 319
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    new-instance v6, Lti/modules/titanium/ui/widget/TiUILabel;

    invoke-direct {v6, v1}, Lti/modules/titanium/ui/widget/TiUILabel;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_3
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/TiUILabel;

    .line 322
    .local v3, "t":Lti/modules/titanium/ui/widget/TiUILabel;
    invoke-virtual {v3, v1}, Lti/modules/titanium/ui/widget/TiUILabel;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 323
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-direct {p0, v5}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filterProperties(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-virtual {v3, v5}, Lti/modules/titanium/ui/widget/TiUILabel;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 324
    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUILabel;->getOuterView()Landroid/view/View;

    move-result-object v4

    .line 325
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_6

    .line 326
    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUILabel;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    .line 327
    .local v0, "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iget-object v5, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    if-nez v5, :cond_4

    .line 328
    new-instance v5, Lorg/appcelerator/titanium/TiDimension;

    invoke-direct {v5, v8, v9, v7}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v5, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 331
    :cond_4
    iget-object v5, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    if-nez v5, :cond_5

    .line 332
    new-instance v5, Lorg/appcelerator/titanium/TiDimension;

    const/4 v6, 0x2

    invoke-direct {v5, v8, v9, v6}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v5, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 334
    :cond_5
    const/4 v5, 0x1

    iput-boolean v5, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 335
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v5, v4, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    .end local v0    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_6
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 621
    invoke-super {p0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->release()V

    .line 622
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 623
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/view/TiUIView;

    .line 624
    .local v1, "view":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    goto :goto_0

    .line 626
    .end local v1    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    iput-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    .line 628
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v2, :cond_2

    .line 629
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 630
    iput-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 632
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 633
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 634
    iput-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 636
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4

    .line 637
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 638
    iput-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 641
    :cond_4
    return-void
.end method

.method public setRowData(Lti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 13
    .param p1, "rp"    # Lti/modules/titanium/ui/TableViewRowProxy;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 342
    const/4 v4, 0x0

    .line 343
    .local v4, "newSelectorSource":Ljava/lang/Object;
    const-string v8, "backgroundSelectedImage"

    invoke-virtual {p1, v8}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 344
    const-string v8, "backgroundSelectedImage"

    invoke-virtual {p1, v8}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 348
    .end local v4    # "newSelectorSource":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 349
    :cond_1
    iput-object v11, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 351
    :cond_2
    iput-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    .line 352
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    if-eqz v8, :cond_3

    .line 353
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->getTable()Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/widget/TiUITableView;->getTableView()Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->enableCustomSelector()V

    .line 356
    :cond_3
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setBackgroundFromProxy(Lorg/appcelerator/kroll/KrollProxy;)V

    .line 358
    const/4 v1, 0x1

    .line 360
    .local v1, "clearRightImage":Z
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    .line 361
    .local v6, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "hasCheck"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 362
    const-string v8, "hasCheck"

    invoke-static {v6, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 363
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v8, :cond_4

    .line 364
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->createHasCheckDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    iput-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 366
    :cond_4
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    iget-object v9, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    const/4 v1, 0x0

    .line 371
    :cond_5
    const-string v8, "hasChild"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 372
    const-string v8, "hasChild"

    invoke-static {v6, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 373
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v8, :cond_6

    .line 374
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->createHasChildDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    iput-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 376
    :cond_6
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    iget-object v9, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    const/4 v1, 0x0

    .line 381
    :cond_7
    const-string v8, "rightImage"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 382
    const-string v8, "rightImage"

    invoke-static {v6, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {p1, v11, v5}, Lti/modules/titanium/ui/TableViewRowProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 384
    .local v7, "url":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 385
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_8

    .line 386
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    const/4 v1, 0x0

    .line 392
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :cond_8
    if-eqz v1, :cond_9

    .line 393
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    :cond_9
    const-string v8, "leftImage"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 399
    const-string v8, "leftImage"

    invoke-static {v6, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 400
    .restart local v5    # "path":Ljava/lang/String;
    invoke-virtual {p1, v11, v5}, Lti/modules/titanium/ui/TableViewRowProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 402
    .restart local v7    # "url":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 403
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_a

    .line 404
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :cond_a
    :goto_1
    const-string v8, "height"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 413
    const-string v8, "height"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "auto"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "height"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "size"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 415
    const-string v8, "height"

    invoke-static {v6, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v8

    iput-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->height:Lorg/appcelerator/titanium/TiDimension;

    .line 419
    :cond_b
    const-string v8, "layout"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 420
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const-string v9, "layout"

    invoke-static {v6, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setLayoutArrangement(Ljava/lang/String;)V

    .line 422
    :cond_c
    const-string v8, "horizontalWrap"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 423
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const-string v9, "horizontalWrap"

    invoke-static {v6, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setEnableHorizontalWrap(Z)V

    .line 427
    :cond_d
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasControls()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 428
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->createControls()V

    .line 434
    :goto_2
    sget-boolean v8, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->ICS_OR_GREATER:Z

    if-eqz v8, :cond_e

    .line 435
    const-string v8, "accessibilityHidden"

    invoke-virtual {p1, v8}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 436
    .local v0, "accessibilityHiddenVal":Ljava/lang/Object;
    if-eqz v0, :cond_e

    .line 437
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 438
    .local v3, "hidden":Z
    if-eqz v3, :cond_12

    .line 439
    const/4 v8, 0x2

    invoke-static {p0, v8}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 445
    .end local v0    # "accessibilityHiddenVal":Ljava/lang/Object;
    .end local v3    # "hidden":Z
    :cond_e
    :goto_3
    return-void

    .line 345
    .end local v1    # "clearRightImage":Z
    .end local v6    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "newSelectorSource":Ljava/lang/Object;
    :cond_f
    const-string v8, "backgroundSelectedColor"

    invoke-virtual {p1, v8}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 346
    const-string v8, "backgroundSelectedColor"

    invoke-virtual {p1, v8}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 408
    .end local v4    # "newSelectorSource":Ljava/lang/Object;
    .restart local v1    # "clearRightImage":Z
    .restart local v6    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_10
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 431
    :cond_11
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->refreshOldStyleRow()V

    goto :goto_2

    .line 441
    .restart local v0    # "accessibilityHiddenVal":Ljava/lang/Object;
    .restart local v3    # "hidden":Z
    :cond_12
    invoke-static {p0, v10}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_3
.end method

.method public setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V
    .locals 2
    .param p1, "item"    # Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .prologue
    .line 86
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 87
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v0

    .line 88
    .local v0, "rp":Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v0}, Lti/modules/titanium/ui/TableViewRowProxy;->getTableViewRowProxyItem()Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    move-result-object v1

    if-eq p0, v1, :cond_0

    .line 89
    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/TableViewRowProxy;->setTableViewItem(Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;)V

    .line 91
    :cond_0
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setRowData(Lti/modules/titanium/ui/TableViewRowProxy;)V

    .line 92
    return-void
.end method
