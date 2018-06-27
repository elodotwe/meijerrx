.class public Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;
.super Lorg/appcelerator/titanium/view/TiCompositeLayout;
.source "TiBaseListViewItem.java"


# instance fields
.field private minHeight:I

.field private viewItem:Lti/modules/titanium/ui/widget/listview/ViewItem;

.field private viewsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lti/modules/titanium/ui/widget/listview/ViewItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->viewsMap:Ljava/util/HashMap;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    sget v1, Lti/modules/titanium/ui/widget/listview/TiListView;->listContentId:I

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->setId(I)V

    .line 33
    new-instance v0, Lorg/appcelerator/titanium/TiDimension;

    const-string v1, "30dp"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 34
    .local v0, "heightDimension":Lorg/appcelerator/titanium/TiDimension;
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->minHeight:I

    .line 35
    iget v1, p0, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->minHeight:I

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->setMinimumHeight(I)V

    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->viewsMap:Ljava/util/HashMap;

    .line 37
    new-instance v1, Lti/modules/titanium/ui/widget/listview/ViewItem;

    const/4 v2, 0x0

    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-direct {v1, v2, v3}, Lti/modules/titanium/ui/widget/listview/ViewItem;-><init>(Lorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/kroll/KrollDict;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->viewItem:Lti/modules/titanium/ui/widget/listview/ViewItem;

    .line 38
    return-void
.end method


# virtual methods
.method public bindView(Ljava/lang/String;Lti/modules/titanium/ui/widget/listview/ViewItem;)V
    .locals 1
    .param p1, "binding"    # Ljava/lang/String;
    .param p2, "view"    # Lti/modules/titanium/ui/widget/listview/ViewItem;

    .prologue
    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->viewsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public getViewFromBinding(Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .param p1, "binding"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->viewsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/listview/ViewItem;

    .line 54
    .local v0, "viewItem":Lti/modules/titanium/ui/widget/listview/ViewItem;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ViewItem;->getView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getViewItem()Lti/modules/titanium/ui/widget/listview/ViewItem;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->viewItem:Lti/modules/titanium/ui/widget/listview/ViewItem;

    return-object v0
.end method

.method public getViewsMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lti/modules/titanium/ui/widget/listview/ViewItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->viewsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 61
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 62
    .local v0, "h":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 63
    .local v1, "hMode":I
    iget v2, p0, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->minHeight:I

    if-ge v0, v2, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_0

    .line 64
    iget v0, p0, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->minHeight:I

    .line 66
    :cond_0
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, p1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->onMeasure(II)V

    .line 67
    return-void
.end method
