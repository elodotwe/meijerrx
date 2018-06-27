.class public Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "TiListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/listview/TiListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TiBaseAdapter"
.end annotation


# instance fields
.field context:Landroid/app/Activity;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/listview/TiListView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/listview/TiListView;Landroid/app/Activity;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 186
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 187
    iput-object p2, p0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->context:Landroid/app/Activity;

    .line 188
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-static {v3}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$200(Lti/modules/titanium/ui/widget/listview/TiListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 194
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-static {v3}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$200(Lti/modules/titanium/ui/widget/listview/TiListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .line 195
    .local v2, "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getItemCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 209
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 220
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-virtual {v3, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;->getSectionInfoByEntryIndex(I)Landroid/util/Pair;

    move-result-object v0

    .line 221
    .local v0, "info":Landroid/util/Pair;, "Landroid/util/Pair<Lti/modules/titanium/ui/widget/listview/ListSectionProxy;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .line 222
    .local v1, "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 223
    .local v2, "sectionItemIndex":I
    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isHeaderTitle(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isFooterTitle(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    :cond_0
    const/4 v3, 0x1

    .line 228
    :goto_0
    return v3

    .line 225
    :cond_1
    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isHeaderView(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isFooterView(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 226
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getTemplateByIndex(I)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->getType()I

    move-result v3

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget-object v8, v0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getSectionInfoByEntryIndex(I)Landroid/util/Pair;

    move-result-object v15

    .line 235
    .local v15, "info":Landroid/util/Pair;, "Landroid/util/Pair<Lti/modules/titanium/ui/widget/listview/ListSectionProxy;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    iget-object v1, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .line 236
    .local v1, "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    iget-object v8, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 237
    .local v5, "sectionItemIndex":I
    iget-object v8, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 239
    .local v6, "sectionIndex":I
    move-object/from16 v7, p2

    .line 242
    .local v7, "content":Landroid/view/View;
    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isHeaderView(I)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isFooterView(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 243
    :cond_0
    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getHeaderOrFooterView(I)Landroid/view/View;

    move-result-object v8

    .line 272
    :goto_0
    return-object v8

    .line 244
    :cond_1
    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isHeaderTitle(I)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isFooterTitle(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 246
    :cond_2
    if-nez v7, :cond_3

    .line 247
    sget-object v8, Lti/modules/titanium/ui/widget/listview/TiListView;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$400(Lti/modules/titanium/ui/widget/listview/TiListView;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 249
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-static {v8}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$500(Lti/modules/titanium/ui/widget/listview/TiListView;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 250
    .local v17, "title":Landroid/widget/TextView;
    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getHeaderOrFooterTitle(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v8, v7

    .line 251
    goto :goto_0

    .line 255
    .end local v17    # "title":Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->hasHeader()Z

    move-result v9

    invoke-virtual {v8, v6, v5, v9}, Lti/modules/titanium/ui/widget/listview/TiListView;->checkMarker(IIZ)V

    .line 258
    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListItemData(I)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    .line 259
    .local v2, "data":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getTemplateByIndex(I)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v4

    .line 261
    .local v4, "template":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    if-eqz v7, :cond_5

    .line 262
    sget v8, Lti/modules/titanium/ui/widget/listview/TiListView;->listContentId:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;

    .line 263
    .local v3, "itemContent":Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;
    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->populateViews(Lorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;IILandroid/view/View;)V

    :goto_1
    move-object v8, v7

    .line 272
    goto :goto_0

    .line 265
    .end local v3    # "itemContent":Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;
    :cond_5
    sget-object v8, Lti/modules/titanium/ui/widget/listview/TiListView;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$600(Lti/modules/titanium/ui/widget/listview/TiListView;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 266
    sget v8, Lti/modules/titanium/ui/widget/listview/TiListView;->listContentId:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;

    .line 267
    .restart local v3    # "itemContent":Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;
    new-instance v16, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct/range {v16 .. v16}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 268
    .local v16, "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v8, 0x1

    move-object/from16 v0, v16

    iput-boolean v8, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 269
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v8, v1

    move v9, v6

    move-object v10, v2

    move-object v11, v4

    move-object v12, v3

    move v13, v5

    move-object v14, v7

    .line 270
    invoke-virtual/range {v8 .. v14}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->generateCellContent(ILorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;ILandroid/view/View;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$300(Lti/modules/titanium/ui/widget/listview/TiListView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method
