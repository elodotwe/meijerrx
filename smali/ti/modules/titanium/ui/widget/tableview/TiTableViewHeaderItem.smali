.class public Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;
.super Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
.source "TiTableViewHeaderItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;
    }
.end annotation


# instance fields
.field private headerView:Lorg/appcelerator/titanium/view/TiUIView;

.field private isHeaderView:Z

.field private rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, -0x1

    .line 78
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;-><init>(Landroid/app/Activity;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->isHeaderView:Z

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->handler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    .line 81
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawDIPSize(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->setMinimumHeight(I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "headerView"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;-><init>(Landroid/app/Activity;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->isHeaderView:Z

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->handler:Landroid/os/Handler;

    .line 90
    invoke-virtual {p2}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-virtual {p2}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawDIPSize(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->setMinimumHeight(I)V

    .line 93
    iput-object p2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->headerView:Lorg/appcelerator/titanium/view/TiUIView;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->isHeaderView:Z

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Landroid/app/Activity;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 99
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;-><init>(Landroid/app/Activity;)V

    .line 100
    return-void
.end method


# virtual methods
.method public getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->isHeaderView:Z

    if-nez v1, :cond_1

    .line 134
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    sub-int v2, p5, p3

    invoke-virtual {v1, p2, v3, p4, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->layout(IIII)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->headerView:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "view":Landroid/view/View;
    sub-int v1, p5, p3

    invoke-virtual {v0, p2, v3, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 139
    instance-of v1, v0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->headerView:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    sub-int v2, p5, p3

    invoke-virtual {v1, p2, v3, p4, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->measureChildren(II)V

    .line 118
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 119
    .local v1, "w":I
    const/4 v0, 0x0

    .line 121
    .local v0, "h":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 122
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->getSuggestedMinimumHeight()I

    move-result v0

    .line 126
    :goto_0
    invoke-static {v1, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->resolveSize(II)I

    move-result v2

    invoke-static {v0, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->setMeasuredDimension(II)V

    .line 128
    return-void

    .line 124
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V
    .locals 1
    .param p1, "item"    # Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .prologue
    .line 104
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->isHeaderView:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V

    .line 107
    :cond_0
    return-void
.end method
