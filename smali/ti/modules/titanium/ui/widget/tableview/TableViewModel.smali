.class public Lti/modules/titanium/ui/widget/tableview/TableViewModel;
.super Ljava/lang/Object;
.source "TableViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TableViewModel"


# instance fields
.field private dirty:Z

.field private proxy:Lti/modules/titanium/ui/TableViewProxy;

.field private viewModel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lti/modules/titanium/ui/TableViewProxy;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "proxy"    # Lti/modules/titanium/ui/TableViewProxy;

    .prologue
    .line 63
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/ui/TableViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Lti/modules/titanium/ui/TableViewProxy;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->dirty:Z

    .line 59
    return-void
.end method

.method public static classNameForRow(Lti/modules/titanium/ui/TableViewRowProxy;)Ljava/lang/String;
    .locals 2
    .param p0, "rowProxy"    # Lti/modules/titanium/ui/TableViewRowProxy;

    .prologue
    .line 75
    const-string v1, "className"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 77
    const-string v0, "__default__"

    .line 79
    :cond_0
    return-object v0
.end method

.method private itemForHeader(ILti/modules/titanium/ui/TableViewSectionProxy;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .locals 2
    .param p1, "index"    # I
    .param p2, "proxy"    # Lti/modules/titanium/ui/TableViewSectionProxy;
    .param p3, "headerText"    # Ljava/lang/String;
    .param p4, "footerText"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;-><init>(Lti/modules/titanium/ui/widget/tableview/TableViewModel;I)V

    .line 84
    .local v0, "newItem":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    const-string v1, "__header__"

    iput-object v1, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    .line 85
    if-eqz p3, :cond_1

    .line 86
    iput-object p3, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->headerText:Ljava/lang/String;

    .line 90
    :cond_0
    :goto_0
    iput-object p2, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 92
    return-object v0

    .line 87
    :cond_1
    if-eqz p4, :cond_0

    .line 88
    iput-object p4, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->footerText:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getRowCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getRowHeight(II)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "defaultHeight"    # I

    .prologue
    .line 188
    move v2, p2

    .line 190
    .local v2, "rowHeight":I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 191
    .local v0, "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iget-object v3, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "rowHeight"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 192
    .local v1, "rh":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 193
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    .line 196
    :cond_0
    return v2
.end method

.method public getSection(I)Lti/modules/titanium/ui/TableViewSectionProxy;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    invoke-virtual {v0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TableViewSectionProxy;

    return-object v0
.end method

.method public getViewIndex(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 172
    const/4 v2, -0x1

    .line 174
    .local v2, "position":I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 176
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 177
    .local v1, "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iget v3, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->index:I

    if-ne p1, v3, :cond_1

    .line 178
    move v2, v0

    .line 184
    .end local v0    # "i":I
    .end local v1    # "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    :cond_0
    return v2

    .line 175
    .restart local v0    # "i":I
    .restart local v1    # "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getViewModel()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->dirty:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 110
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    .line 111
    const/4 v15, 0x0

    .line 112
    .local v15, "sectionIndex":I
    const/4 v10, 0x0

    .line 113
    .local v10, "indexInSection":I
    const/4 v9, 0x0

    .line 114
    .local v9, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v16

    .line 115
    .local v16, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    if-eqz v16, :cond_8

    .line 116
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 117
    .local v14, "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    const-string v17, "headerTitle"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lti/modules/titanium/ui/TableViewSectionProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "headerTitle":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v14, v5, v1}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->itemForHeader(ILti/modules/titanium/ui/TableViewSectionProxy;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    const-string v17, "headerView"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lti/modules/titanium/ui/TableViewSectionProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 122
    const-string v17, "headerView"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lti/modules/titanium/ui/TableViewSectionProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 123
    .local v6, "headerView":Ljava/lang/Object;
    instance-of v0, v6, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 124
    new-instance v11, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v9}, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;-><init>(Lti/modules/titanium/ui/widget/tableview/TableViewModel;I)V

    .line 125
    .local v11, "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    check-cast v6, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v6    # "headerView":Ljava/lang/Object;
    iput-object v6, v11, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 126
    const-string v17, "__headerView__"

    move-object/from16 v0, v17

    iput-object v0, v11, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v11    # "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    :cond_1
    :goto_1
    invoke-virtual {v14}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v2

    .local v2, "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    array-length v12, v2

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v12, :cond_3

    aget-object v13, v2, v8

    .line 133
    .local v13, "row":Lti/modules/titanium/ui/TableViewRowProxy;
    new-instance v11, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v9}, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;-><init>(Lti/modules/titanium/ui/widget/tableview/TableViewModel;I)V

    .line 134
    .restart local v11    # "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iput v15, v11, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->sectionIndex:I

    .line 135
    iput v10, v11, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->indexInSection:I

    .line 136
    iput-object v13, v11, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 137
    invoke-virtual {v13}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v17

    const-string v18, "rowData"

    invoke-virtual/range {v17 .. v18}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->rowData:Ljava/lang/Object;

    .line 138
    invoke-static {v13}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->classNameForRow(Lti/modules/titanium/ui/TableViewRowProxy;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v9, v9, 0x1

    .line 142
    add-int/lit8 v10, v10, 0x1

    .line 132
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 129
    .end local v2    # "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v8    # "i$":I
    .end local v11    # "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .end local v12    # "len$":I
    .end local v13    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    .restart local v6    # "headerView":Ljava/lang/Object;
    :cond_2
    const-string v17, "TableViewModel"

    const-string v18, "HeaderView must be of type TiViewProxy"

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 145
    .end local v6    # "headerView":Ljava/lang/Object;
    .restart local v2    # "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    .restart local v8    # "i$":I
    .restart local v12    # "len$":I
    :cond_3
    const-string v17, "footerTitle"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lti/modules/titanium/ui/TableViewSectionProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "footerTitle":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v14, v1, v3}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->itemForHeader(ILti/modules/titanium/ui/TableViewSectionProxy;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_4
    const-string v17, "footerView"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lti/modules/titanium/ui/TableViewSectionProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 151
    const-string v17, "footerView"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lti/modules/titanium/ui/TableViewSectionProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 152
    .local v4, "footerView":Ljava/lang/Object;
    instance-of v0, v4, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 153
    new-instance v11, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v9}, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;-><init>(Lti/modules/titanium/ui/widget/tableview/TableViewModel;I)V

    .line 154
    .restart local v11    # "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    check-cast v4, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v4    # "footerView":Ljava/lang/Object;
    iput-object v4, v11, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 155
    const-string v17, "__headerView__"

    move-object/from16 v0, v17

    iput-object v0, v11, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v11    # "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    :cond_5
    :goto_3
    add-int/lit8 v15, v15, 0x1

    .line 163
    const/4 v10, 0x0

    .line 164
    goto/16 :goto_0

    .line 158
    .restart local v4    # "footerView":Ljava/lang/Object;
    :cond_6
    const-string v17, "TableViewModel"

    const-string v18, "FooterView must be of type TiViewProxy"

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 165
    .end local v2    # "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v3    # "footerTitle":Ljava/lang/String;
    .end local v4    # "footerView":Ljava/lang/Object;
    .end local v5    # "headerTitle":Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_7
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->dirty:Z

    .line 168
    .end local v9    # "index":I
    .end local v10    # "indexInSection":I
    .end local v15    # "sectionIndex":I
    .end local v16    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    return-object v17
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    .line 71
    :cond_0
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    .line 72
    return-void
.end method

.method public setDirty()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->dirty:Z

    .line 201
    return-void
.end method
