.class public Lti/modules/titanium/ui/widget/TiUITableView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUITableView.java"

# interfaces
.implements Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;
.implements Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# static fields
.field private static final SEARCHVIEW_ID:I = 0x66

.field private static final TAG:Ljava/lang/String; = "TitaniumTableView"


# instance fields
.field protected tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 50
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUITableView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 51
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUITableView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 52
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getTableViewModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getTableView()Lti/modules/titanium/ui/widget/tableview/TiTableView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    return-object v0
.end method

.method public onClick(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "data"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 57
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "click"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 240
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 244
    return-void
.end method

.method public onLongClick(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 2
    .param p1, "data"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 63
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "longclick"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 243
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 235
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->dataSetChanged()V

    .line 238
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 242
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 241
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 22
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 111
    new-instance v19, Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v18, v0

    check-cast v18, Lti/modules/titanium/ui/TableViewProxy;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .line 113
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 114
    .local v4, "activity":Landroid/app/Activity;
    instance-of v0, v4, Lorg/appcelerator/titanium/TiBaseActivity;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 115
    check-cast v4, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v4    # "activity":Landroid/app/Activity;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 118
    :cond_1
    const/4 v5, 0x1

    .line 119
    .local v5, "clickable":Z
    const-string v18, "touchEnabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v18, v0

    const-string v19, "touchEnabled"

    invoke-virtual/range {v18 .. v19}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v5

    .line 122
    :cond_2
    if-eqz v5, :cond_3

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setOnItemClickListener(Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setOnItemLongClickListener(Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;)V

    .line 128
    :cond_3
    const-string v18, "filterText"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-object/from16 v18, v0

    const-string v19, "filterText"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterText(Ljava/lang/String;)V

    .line 132
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiUITableView;->getListView()Landroid/widget/ListView;

    move-result-object v10

    .line 133
    .local v10, "list":Landroid/widget/ListView;
    const-string v18, "footerDividersEnabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 134
    const-string v18, "footerDividersEnabled"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v6

    .line 135
    .local v6, "enabled":Z
    invoke-virtual {v10, v6}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 140
    .end local v6    # "enabled":Z
    :goto_0
    const-string v18, "headerDividersEnabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 141
    const-string v18, "headerDividersEnabled"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v6

    .line 142
    .restart local v6    # "enabled":Z
    invoke-virtual {v10, v6}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 147
    .end local v6    # "enabled":Z
    :goto_1
    const-string v18, "search"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 148
    const-string v18, "search"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 149
    .local v16, "searchView":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual/range {v16 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v15

    .line 150
    .local v15, "search":Lorg/appcelerator/titanium/view/TiUIView;
    move-object/from16 v0, v16

    instance-of v0, v0, Lti/modules/titanium/ui/SearchBarProxy;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v18, v15

    .line 151
    check-cast v18, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->setOnSearchChangeListener(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;)V

    .line 155
    :goto_2
    const-string v18, "searchAsChild"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    const-string v18, "searchAsChild"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 157
    :cond_5
    invoke-virtual {v15}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v14

    .line 159
    .local v14, "sView":Landroid/view/View;
    new-instance v9, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 160
    .local v9, "layout":Landroid/widget/RelativeLayout;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 161
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 163
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 166
    .local v11, "p":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 167
    const/16 v18, 0x9

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 168
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 171
    const-string v18, "height"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 172
    const-string v18, "height"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v13

    .line 176
    .local v13, "rawHeight":Lorg/appcelerator/titanium/TiDimension;
    :goto_3
    invoke-virtual {v13, v9}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 179
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    .line 180
    .local v12, "parent":Landroid/view/ViewParent;
    instance-of v0, v12, Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v17, v12

    .line 181
    check-cast v17, Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    .line 182
    .local v17, "v":Lorg/appcelerator/titanium/view/TiBorderWrapperView;
    const/16 v18, 0x66

    invoke-virtual/range {v17 .. v18}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setId(I)V

    .line 183
    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .end local v17    # "v":Lorg/appcelerator/titanium/view/TiBorderWrapperView;
    :goto_4
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v11    # "p":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v18, -0x1

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 194
    .restart local v11    # "p":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v18, 0x9

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 195
    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 197
    const/16 v18, 0x3

    const/16 v19, 0x66

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lti/modules/titanium/ui/widget/TiUITableView;->setNativeView(Landroid/view/View;)V

    .line 207
    .end local v9    # "layout":Landroid/widget/RelativeLayout;
    .end local v11    # "p":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "parent":Landroid/view/ViewParent;
    .end local v13    # "rawHeight":Lorg/appcelerator/titanium/TiDimension;
    .end local v14    # "sView":Landroid/view/View;
    .end local v15    # "search":Lorg/appcelerator/titanium/view/TiUIView;
    .end local v16    # "searchView":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :goto_5
    const-string v18, "filterAttribute"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-object/from16 v18, v0

    const-string v19, "filterAttribute"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterAttribute(Ljava/lang/String;)V

    .line 215
    :goto_6
    const-string v18, "overScrollMode"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 216
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    .line 217
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiUITableView;->getListView()Landroid/widget/ListView;

    move-result-object v18

    const-string v19, "overScrollMode"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 220
    :cond_6
    const/4 v8, 0x1

    .line 221
    .local v8, "filterCaseInsensitive":Z
    const-string v18, "filterCaseInsensitive"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 222
    const-string v18, "filterCaseInsensitive"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v8

    .line 224
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterCaseInsensitive(Z)V

    .line 225
    const/4 v7, 0x0

    .line 226
    .local v7, "filterAnchored":Z
    const-string v18, "filterAnchored"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 227
    const-string v18, "filterAnchored"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v7

    .line 229
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterAnchored(Z)V

    .line 230
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 231
    return-void

    .line 137
    .end local v7    # "filterAnchored":Z
    .end local v8    # "filterCaseInsensitive":Z
    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    goto/16 :goto_0

    .line 144
    :cond_a
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    goto/16 :goto_1

    .restart local v15    # "search":Lorg/appcelerator/titanium/view/TiUIView;
    .restart local v16    # "searchView":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_b
    move-object/from16 v18, v15

    .line 153
    check-cast v18, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->setOnSearchChangeListener(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;)V

    goto/16 :goto_2

    .line 174
    .restart local v9    # "layout":Landroid/widget/RelativeLayout;
    .restart local v11    # "p":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v14    # "sView":Landroid/view/View;
    :cond_c
    const-string v18, "52dp"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v13

    .restart local v13    # "rawHeight":Lorg/appcelerator/titanium/TiDimension;
    goto/16 :goto_3

    .line 184
    .restart local v12    # "parent":Landroid/view/ViewParent;
    :cond_d
    if-nez v12, :cond_e

    .line 185
    const/16 v18, 0x66

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->setId(I)V

    .line 186
    invoke-virtual {v9, v14, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 188
    :cond_e
    const-string v18, "TitaniumTableView"

    const-string v19, "Searchview already has parent, cannot add to tableview."

    const-string v20, "DEBUG_MODE"

    invoke-static/range {v18 .. v20}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 201
    .end local v9    # "layout":Landroid/widget/RelativeLayout;
    .end local v11    # "p":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "parent":Landroid/view/ViewParent;
    .end local v13    # "rawHeight":Lorg/appcelerator/titanium/TiDimension;
    .end local v14    # "sView":Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUITableView;->setNativeView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 204
    .end local v15    # "search":Lorg/appcelerator/titanium/view/TiUIView;
    .end local v16    # "searchView":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUITableView;->setNativeView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 211
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v18, v0

    const-string v19, "filterAttribute"

    const-string v20, "title"

    invoke-virtual/range {v18 .. v20}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-object/from16 v18, v0

    const-string v19, "title"

    invoke-virtual/range {v18 .. v19}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterAttribute(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v4, 0x0

    .line 270
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    const-string v1, "TitaniumTableView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    const-string v1, "touchEnabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 276
    .local v0, "clickable":Z
    if-eqz v0, :cond_4

    .line 277
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setOnItemClickListener(Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;)V

    .line 278
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setOnItemLongClickListener(Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;)V

    .line 287
    .end local v0    # "clickable":Z
    :cond_1
    :goto_0
    const-string v1, "filterText"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterText(Ljava/lang/String;)V

    .line 291
    :cond_2
    const-string v1, "separatorColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 292
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setSeparatorColor(Ljava/lang/String;)V

    .line 316
    .end local p2    # "oldValue":Ljava/lang/Object;
    :cond_3
    :goto_1
    return-void

    .line 281
    .restart local v0    # "clickable":Z
    .restart local p2    # "oldValue":Ljava/lang/Object;
    :cond_4
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v1, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setOnItemClickListener(Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;)V

    .line 282
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v1, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setOnItemLongClickListener(Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;)V

    goto :goto_0

    .line 293
    .end local v0    # "clickable":Z
    :cond_5
    const-string v1, "overScrollMode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 294
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_3

    .line 295
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUITableView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p3, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    goto :goto_1

    .line 297
    :cond_6
    const-string v1, "minRowHeight"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 298
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUITableView;->updateView()V

    goto :goto_1

    .line 299
    :cond_7
    const-string v1, "headerView"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 300
    if-eqz p2, :cond_8

    .line 301
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    check-cast p2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local p2    # "oldValue":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->removeHeaderView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 303
    :cond_8
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setHeaderView()V

    goto :goto_1

    .line 304
    .restart local p2    # "oldValue":Ljava/lang/Object;
    :cond_9
    const-string v1, "footerView"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 305
    if-eqz p2, :cond_a

    .line 306
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    check-cast p2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local p2    # "oldValue":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->removeFooterView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 308
    :cond_a
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFooterView()V

    goto :goto_1

    .line 309
    .restart local p2    # "oldValue":Ljava/lang/Object;
    :cond_b
    const-string v1, "filterAnchored"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 310
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterAnchored(Z)V

    goto :goto_1

    .line 311
    :cond_c
    const-string v1, "filterCaseInsensitive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 312
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterCaseInsensitive(Z)V

    goto/16 :goto_1

    .line 314
    :cond_d
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_1
.end method

.method public registerForTouch()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUITableView;->registerForTouch(Landroid/view/View;)V

    .line 321
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->nativeView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->nativeView:Landroid/view/View;

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 252
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "search"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object v0, v1

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 253
    .local v0, "searchView":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->release()V

    .line 256
    .end local v0    # "searchView":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->release()V

    .line 258
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .line 260
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 261
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->removeOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 263
    :cond_2
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUITableView;->nativeView:Landroid/view/View;

    .line 264
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 265
    return-void
.end method

.method public scrollToIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 84
    return-void
.end method

.method public scrollToTop(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 89
    return-void
.end method

.method public selectRow(I)V
    .locals 1
    .param p1, "row_id"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 94
    return-void
.end method

.method public setModelDirty()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getTableViewModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->setDirty()V

    .line 69
    return-void
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->dataSetChanged()V

    .line 79
    return-void
.end method
