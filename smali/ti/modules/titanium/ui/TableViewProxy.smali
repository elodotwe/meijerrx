.class public Lti/modules/titanium/ui/TableViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TableViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/TableViewProxy$RowResult;
    }
.end annotation


# static fields
.field public static final CLASSNAME_DEFAULT:Ljava/lang/String; = "__default__"

.field public static final CLASSNAME_HEADER:Ljava/lang/String; = "__header__"

.field public static final CLASSNAME_HEADERVIEW:Ljava/lang/String; = "__headerView__"

.field public static final CLASSNAME_NORMAL:Ljava/lang/String; = "__normal__"

.field private static final INSERT_ROW_AFTER:I = 0x1

.field private static final INSERT_ROW_BEFORE:I = 0x0

.field private static final INSERT_SECTION_AFTER:I = 0x1

.field private static final INSERT_SECTION_BEFORE:I = 0x0

.field private static final MSG_APPEND_ROW:I = 0x1849

.field private static final MSG_APPEND_SECTION:I = 0x184c

.field private static final MSG_DELETE_ROW:I = 0x1847

.field private static final MSG_DELETE_SECTION:I = 0x184d

.field private static final MSG_INSERT_ROW:I = 0x1848

.field private static final MSG_INSERT_SECTION:I = 0x184e

.field private static final MSG_SCROLL_TO_INDEX:I = 0x1845

.field private static final MSG_SCROLL_TO_TOP:I = 0x184a

.field private static final MSG_SELECT_ROW:I = 0x184b

.field private static final MSG_SET_DATA:I = 0x1846

.field private static final MSG_UPDATE_VIEW:I = 0x1844

.field private static final TAG:Ljava/lang/String; = "TableViewProxy"


# instance fields
.field private localSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TableViewSectionProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 85
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "overScrollMode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 91
    invoke-direct {p0}, Lti/modules/titanium/ui/TableViewProxy;-><init>()V

    .line 92
    return-void
.end method

.method private addRowToSection(Lti/modules/titanium/ui/TableViewRowProxy;Lti/modules/titanium/ui/TableViewSectionProxy;)Lti/modules/titanium/ui/TableViewSectionProxy;
    .locals 3
    .param p1, "row"    # Lti/modules/titanium/ui/TableViewRowProxy;
    .param p2, "currentSection"    # Lti/modules/titanium/ui/TableViewSectionProxy;

    .prologue
    .line 591
    const/4 v0, 0x0

    .line 592
    .local v0, "addedToSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    if-eqz p2, :cond_0

    const-string v1, "header"

    invoke-virtual {p1, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 593
    :cond_0
    new-instance v0, Lti/modules/titanium/ui/TableViewSectionProxy;

    .end local v0    # "addedToSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-direct {v0}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>()V

    .line 597
    .restart local v0    # "addedToSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    :goto_0
    const-string v1, "header"

    invoke-virtual {p1, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    const-string v1, "headerTitle"

    const-string v2, "header"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    :cond_1
    const-string v1, "footer"

    invoke-virtual {p1, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 601
    const-string v1, "footerTitle"

    const-string v2, "footer"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 603
    :cond_2
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/TableViewSectionProxy;->add(Lti/modules/titanium/ui/TableViewRowProxy;)V

    .line 604
    return-object v0

    .line 595
    :cond_3
    move-object v0, p2

    goto :goto_0
.end method

.method private cleanupSections()V
    .locals 4

    .prologue
    .line 650
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v2

    .line 651
    .local v2, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 652
    .local v1, "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 654
    .end local v1    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 655
    return-void
.end method

.method private handleAppendRow(Ljava/lang/Object;)V
    .locals 7
    .param p1, "rows"    # Ljava/lang/Object;

    .prologue
    .line 260
    const/4 v3, 0x0

    .line 262
    .local v3, "rowList":[Ljava/lang/Object;
    instance-of v6, p1, [Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 263
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "rows":Ljava/lang/Object;
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    .line 268
    :goto_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v5

    .line 269
    .local v5, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 270
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->processData([Ljava/lang/Object;)V

    .line 284
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v6

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 285
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 286
    return-void

    .line 265
    .end local v5    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    .restart local p1    # "rows":Ljava/lang/Object;
    :cond_1
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Object;

    .end local v3    # "rowList":[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object p1, v3, v6

    .restart local v3    # "rowList":[Ljava/lang/Object;
    goto :goto_0

    .line 272
    .end local p1    # "rows":Ljava/lang/Object;
    .restart local v5    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_0

    .line 273
    aget-object v6, v3, v1

    invoke-direct {p0, v6}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v4

    .line 275
    .local v4, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 276
    .local v2, "lastSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-direct {p0, v4, v2}, Lti/modules/titanium/ui/TableViewProxy;->addRowToSection(Lti/modules/titanium/ui/TableViewRowProxy;Lti/modules/titanium/ui/TableViewSectionProxy;)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .line 277
    .local v0, "addedToSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 278
    :cond_3
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 272
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private handleAppendSection(Ljava/lang/Object;)V
    .locals 5
    .param p1, "sections"    # Ljava/lang/Object;

    .prologue
    .line 301
    const/4 v2, 0x0

    .line 303
    .local v2, "sectionList":[Ljava/lang/Object;
    instance-of v4, p1, [Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 304
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "sections":Ljava/lang/Object;
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    .line 309
    :goto_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 310
    .local v0, "currentSections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 311
    aget-object v4, v2, v1

    invoke-direct {p0, v4}, Lti/modules/titanium/ui/TableViewProxy;->sectionProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v3

    .line 312
    .local v3, "sectionProxy":Lti/modules/titanium/ui/TableViewSectionProxy;
    if-eqz v3, :cond_0

    .line 313
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-virtual {v3, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 310
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 306
    .end local v0    # "currentSections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    .end local v1    # "i":I
    .end local v3    # "sectionProxy":Lti/modules/titanium/ui/TableViewSectionProxy;
    .restart local p1    # "sections":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Object;

    .end local v2    # "sectionList":[Ljava/lang/Object;
    const/4 v4, 0x0

    aput-object p1, v2, v4

    .restart local v2    # "sectionList":[Ljava/lang/Object;
    goto :goto_0

    .line 318
    .end local p1    # "sections":Ljava/lang/Object;
    .restart local v0    # "currentSections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 319
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 320
    return-void
.end method

.method private handleDeleteRow(Ljava/lang/Object;)V
    .locals 7
    .param p1, "row"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 339
    instance-of v4, p1, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 340
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "row":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 341
    .local v0, "index":I
    new-instance v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/TableViewProxy$RowResult;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 342
    .local v2, "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    invoke-direct {p0, v0, v2}, Lti/modules/titanium/ui/TableViewProxy;->locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    iget-object v4, v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    iget v5, v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    invoke-virtual {v4, v5}, Lti/modules/titanium/ui/TableViewSectionProxy;->removeRowAt(I)V

    .line 344
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 345
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 362
    .end local v0    # "index":I
    .end local v2    # "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :goto_0
    return-void

    .line 347
    .restart local v0    # "index":I
    .restart local v2    # "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :cond_0
    const-string v4, "TableViewProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete row. Index out of range. Non-existent row at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    .end local v0    # "index":I
    .end local v2    # "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    .restart local p1    # "row":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v4, :cond_3

    move-object v1, p1

    .line 350
    check-cast v1, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 351
    .local v1, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    .line 352
    .local v3, "section":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    instance-of v4, v3, Lti/modules/titanium/ui/TableViewSectionProxy;

    if-eqz v4, :cond_2

    .line 353
    check-cast v3, Lti/modules/titanium/ui/TableViewSectionProxy;

    .end local v3    # "section":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v3, v1}, Lti/modules/titanium/ui/TableViewSectionProxy;->remove(Lti/modules/titanium/ui/TableViewRowProxy;)V

    .line 354
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 355
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    goto :goto_0

    .line 357
    .restart local v3    # "section":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_2
    const-string v4, "TableViewProxy"

    const-string v5, "Unable to delete row. The row is not added to the table yet."

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 360
    .end local v1    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v3    # "section":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_3
    const-string v4, "TableViewProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete row. Invalid type of row: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleDeleteSection(I)V
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 383
    .local v0, "currentSections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 384
    .local v2, "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 385
    invoke-virtual {v2}, Lti/modules/titanium/ui/TableViewSectionProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 386
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 388
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 389
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    return-void

    .line 390
    .end local v2    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete section. Index out of range. Non-existent section at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private handleInsertRowAfter(ILjava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 509
    new-instance v1, Lti/modules/titanium/ui/TableViewProxy$RowResult;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/TableViewProxy$RowResult;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 510
    .local v1, "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    invoke-direct {p0, p1, v1}, Lti/modules/titanium/ui/TableViewProxy;->locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v0

    .line 513
    .local v0, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v2, v1, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    iget v3, v1, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v0}, Lti/modules/titanium/ui/TableViewSectionProxy;->insertRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V

    .line 514
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 515
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 519
    return-void

    .line 517
    .end local v0    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index out of range. Non-existent row at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleInsertRowBefore(ILjava/lang/Object;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 437
    if-gez p1, :cond_0

    .line 438
    const/4 p1, 0x0

    .line 441
    :cond_0
    new-instance v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/TableViewProxy$RowResult;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 442
    .local v2, "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    invoke-direct {p0, p1, v2}, Lti/modules/titanium/ui/TableViewProxy;->locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 443
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .line 444
    .local v1, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v3, v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    iget v4, v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    invoke-virtual {v3, v4, v1}, Lti/modules/titanium/ui/TableViewSectionProxy;->insertRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V

    .line 453
    .end local v1    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v2    # "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :goto_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 454
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 455
    return-void

    .line 446
    .restart local v2    # "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index out of range. Non-existent row at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 450
    .end local v2    # "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :cond_2
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v4

    aput-object v4, v0, v3

    .line 451
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TableViewProxy;->processData([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleInsertSectionAfter(ILjava/lang/Object;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->sectionProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v2

    .line 540
    .local v2, "sectionProxy":Lti/modules/titanium/ui/TableViewSectionProxy;
    if-nez v2, :cond_0

    .line 541
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to insert section. Invalid type for section: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 544
    :cond_0
    if-gez p1, :cond_1

    .line 545
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to insert section. Index out of range. Non-existent row at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 549
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 550
    .local v0, "currentSections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 551
    invoke-virtual {v2, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 552
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 553
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    return-void

    .line 554
    .end local v0    # "currentSections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    :catch_0
    move-exception v1

    .line 555
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to insert section. Index out of range. Non-existent row at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private handleInsertSectionBefore(ILjava/lang/Object;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->sectionProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v2

    .line 476
    .local v2, "sectionProxy":Lti/modules/titanium/ui/TableViewSectionProxy;
    if-nez v2, :cond_0

    .line 477
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to insert section. Invalid type for section: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 481
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 482
    .local v0, "currentSections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 483
    invoke-virtual {v2, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 484
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 485
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    return-void

    .line 486
    .end local v0    # "currentSections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    :catch_0
    move-exception v1

    .line 487
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to insert section. Index out of range. Non-existent row at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private handleSetData([Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 694
    if-eqz p1, :cond_0

    .line 695
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->processData([Ljava/lang/Object;)V

    .line 696
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 697
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 699
    :cond_0
    return-void
.end method

.method private locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z
    .locals 16
    .param p1, "index"    # I
    .param p2, "rowResult"    # Lti/modules/titanium/ui/TableViewProxy$RowResult;

    .prologue
    .line 792
    const/4 v3, 0x0

    .line 793
    .local v3, "found":Z
    const/4 v7, 0x0

    .line 794
    .local v7, "rowCount":I
    const/4 v11, 0x0

    .line 796
    .local v11, "sectionIndex":I
    if-gez p1, :cond_0

    move v4, v3

    .line 820
    .end local v3    # "found":Z
    .local v4, "found":I
    :goto_0
    return v4

    .line 800
    .end local v4    # "found":I
    .restart local v3    # "found":Z
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()[Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v2

    .local v2, "arr$":[Lti/modules/titanium/ui/TableViewSectionProxy;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v10, v2, v5

    .line 801
    .local v10, "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v10}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRowCount()D

    move-result-wide v14

    double-to-int v12, v14

    .line 802
    .local v12, "sectionRowCount":I
    add-int v13, v12, v7

    move/from16 v0, p1

    if-le v13, v0, :cond_2

    .line 803
    move-object/from16 v0, p2

    iput-object v10, v0, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 804
    move-object/from16 v0, p2

    iput v11, v0, Lti/modules/titanium/ui/TableViewProxy$RowResult;->sectionIndex:I

    .line 805
    invoke-virtual {v10}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v9

    .line 806
    .local v9, "rowsInSection":[Lti/modules/titanium/ui/TableViewRowProxy;
    sub-int v8, p1, v7

    .line 807
    .local v8, "rowIndexInSection":I
    if-ltz v8, :cond_3

    array-length v13, v9

    if-ge v8, v13, :cond_3

    .line 808
    aget-object v13, v9, v8

    move-object/from16 v0, p2

    iput-object v13, v0, Lti/modules/titanium/ui/TableViewProxy$RowResult;->row:Lti/modules/titanium/ui/TableViewRowProxy;

    .line 809
    move-object/from16 v0, p2

    iput v8, v0, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    .line 810
    const/4 v3, 0x1

    .end local v8    # "rowIndexInSection":I
    .end local v9    # "rowsInSection":[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v10    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v12    # "sectionRowCount":I
    :cond_1
    move v4, v3

    .line 820
    .restart local v4    # "found":I
    goto :goto_0

    .line 814
    .end local v4    # "found":I
    .restart local v10    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    .restart local v12    # "sectionRowCount":I
    :cond_2
    add-int/2addr v7, v12

    .line 817
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 800
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;
    .locals 5
    .param p1, "row"    # Ljava/lang/Object;

    .prologue
    .line 715
    const/4 v1, 0x0

    .line 716
    .local v1, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    instance-of v2, p1, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 717
    check-cast v1, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 718
    const-string v2, "rowData"

    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 740
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 741
    const-string v2, "TableViewProxy"

    const-string v3, "Unable to create table view row proxy for object, likely an error in the type of the object passed in..."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v1, 0x0

    .line 746
    .end local v1    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_1
    return-object v1

    .line 721
    .restart local v1    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_2
    const/4 v0, 0x0

    .line 722
    .local v0, "rowDict":Lorg/appcelerator/kroll/KrollDict;
    instance-of v2, p1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v2, :cond_4

    move-object v0, p1

    .line 723
    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 729
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 730
    new-instance v1, Lti/modules/titanium/ui/TableViewRowProxy;

    .end local v1    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-direct {v1}, Lti/modules/titanium/ui/TableViewRowProxy;-><init>()V

    .line 731
    .restart local v1    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->creationUrl:Lorg/appcelerator/titanium/util/TiUrl;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiUrl;->getNormalizedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->setCreationUrl(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v1, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 733
    const-string v2, "className"

    const-string v3, "__normal__"

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 734
    invoke-virtual {v1, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->setCreationProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 735
    const-string v2, "rowData"

    invoke-virtual {v1, v2, p1}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 736
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 725
    :cond_4
    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 726
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0    # "rowDict":Lorg/appcelerator/kroll/KrollDict;
    move-object v2, p1

    check-cast v2, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .restart local v0    # "rowDict":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1
.end method

.method private sectionProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewSectionProxy;
    .locals 4
    .param p1, "section"    # Ljava/lang/Object;

    .prologue
    .line 752
    const/4 v1, 0x0

    .line 753
    .local v1, "sectionProxy":Lti/modules/titanium/ui/TableViewSectionProxy;
    instance-of v2, p1, Lti/modules/titanium/ui/TableViewSectionProxy;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 754
    check-cast v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 755
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxy;->setActivity(Landroid/app/Activity;)V

    .line 781
    .end local p1    # "section":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 782
    const-string v2, "TableViewProxy"

    const-string v3, "Unable to create table view section proxy for object, likely an error in the type of the object passed in..."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v1, 0x0

    .line 787
    .end local v1    # "sectionProxy":Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_1
    return-object v1

    .line 757
    .restart local v1    # "sectionProxy":Lti/modules/titanium/ui/TableViewSectionProxy;
    .restart local p1    # "section":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    .line 758
    .local v0, "sectionDict":Lorg/appcelerator/kroll/KrollDict;
    instance-of v2, p1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v2, :cond_8

    move-object v0, p1

    .line 759
    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 763
    .end local p1    # "section":Ljava/lang/Object;
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 764
    new-instance v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .end local v1    # "sectionProxy":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-direct {v1}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>()V

    .line 765
    .restart local v1    # "sectionProxy":Lti/modules/titanium/ui/TableViewSectionProxy;
    const-string v2, "headerTitle"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 766
    const-string v2, "headerTitle"

    const-string v3, "headerTitle"

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 768
    :cond_4
    const-string v2, "footerTitle"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 769
    const-string v2, "footerTitle"

    const-string v3, "footerTitle"

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 771
    :cond_5
    const-string v2, "headerView"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 772
    const-string v2, "headerView"

    const-string v3, "headerView"

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 774
    :cond_6
    const-string v2, "footerView"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 775
    const-string v2, "footerView"

    const-string v3, "footerView"

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 777
    :cond_7
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxy;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 760
    .restart local p1    # "section":Ljava/lang/Object;
    :cond_8
    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 761
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0    # "sectionDict":Lorg/appcelerator/kroll/KrollDict;
    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "section":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .restart local v0    # "sectionDict":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1
.end method


# virtual methods
.method public appendRow(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "rows"    # Ljava/lang/Object;
    .param p2, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 249
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->handleAppendRow(Ljava/lang/Object;)V

    .line 256
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1849

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public appendSection(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "sections"    # Ljava/lang/Object;
    .param p2, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 291
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->handleAppendSection(Ljava/lang/Object;)V

    .line 297
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x184c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 146
    new-instance v0, Lti/modules/titanium/ui/widget/TiUITableView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUITableView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public deleteRow(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "row"    # Ljava/lang/Object;
    .param p2, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 325
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->handleDeleteRow(Ljava/lang/Object;)V

    .line 335
    :cond_0
    return-void

    .line 330
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1847

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 332
    .local v0, "asyncResult":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 333
    check-cast v0, Ljava/lang/IllegalStateException;

    .end local v0    # "asyncResult":Ljava/lang/Object;
    throw v0
.end method

.method public deleteSection(ILorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 367
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->handleDeleteSection(I)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x184d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 374
    .local v0, "asyncResult":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 375
    const-string v1, "TableViewProxy"

    check-cast v0, Ljava/lang/IllegalStateException;

    .end local v0    # "asyncResult":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 9
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 951
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 952
    const-string v8, "click"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-ne p3, p0, :cond_1

    .line 953
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()[Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .local v0, "arr$":[Lti/modules/titanium/ui/TableViewSectionProxy;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 954
    .local v7, "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v7}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .local v1, "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v6, v1, v2

    .line 955
    .local v6, "row":Lti/modules/titanium/ui/TableViewRowProxy;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lti/modules/titanium/ui/TableViewRowProxy;->setLabelsClickable(Z)V

    .line 954
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 953
    .end local v6    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 959
    .end local v1    # "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_1
    return-void
.end method

.method public eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 9
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 964
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 965
    const-string v8, "click"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez p2, :cond_1

    if-ne p3, p0, :cond_1

    .line 966
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()[Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .local v0, "arr$":[Lti/modules/titanium/ui/TableViewSectionProxy;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 967
    .local v7, "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v7}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .local v1, "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v6, v1, v2

    .line 968
    .local v6, "row":Lti/modules/titanium/ui/TableViewRowProxy;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lti/modules/titanium/ui/TableViewRowProxy;->setLabelsClickable(Z)V

    .line 967
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 966
    .end local v6    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 972
    .end local v1    # "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_1
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 10
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "bubbles"    # Z

    .prologue
    .line 157
    instance-of v8, p2, Ljava/util/HashMap;

    if-eqz v8, :cond_0

    .line 161
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    move-object v8, p2

    check-cast v8, Ljava/util/HashMap;

    invoke-direct {v0, v8}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 162
    .local v0, "dataCopy":Lorg/appcelerator/kroll/KrollDict;
    const-string v8, "x"

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "y"

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 163
    const-string v8, "x"

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollDict;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 164
    .local v4, "x":D
    const-string v8, "y"

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollDict;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 165
    .local v6, "y":D
    const-string v8, "source"

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 166
    .local v3, "source":Ljava/lang/Object;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/widget/TiUITableView;->getTableView()Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-result-object v8

    invoke-virtual {v8, v4, v5, v6, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getIndexFromXY(DD)I

    move-result v1

    .line 167
    .local v1, "index":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    if-ne v3, p0, :cond_0

    .line 168
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/widget/TiUITableView;->getTableView()Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-result-object v8

    invoke-virtual {v8, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getItemAtPosition(I)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v2

    .line 169
    .local v2, "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    if-eqz v2, :cond_0

    .line 170
    const-string v8, "source"

    iget-object v9, v2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v8, v2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v8, p1, v0, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v8

    .line 177
    .end local v0    # "dataCopy":Lorg/appcelerator/kroll/KrollDict;
    .end local v1    # "index":I
    .end local v2    # "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .end local v3    # "source":Ljava/lang/Object;
    .end local v4    # "x":D
    .end local v6    # "y":D
    :goto_0
    return v8

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v8

    goto :goto_0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 977
    const-string v0, "Ti.UI.TableView"

    return-object v0
.end method

.method public getData()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 704
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 705
    .local v0, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 709
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getIndexByName(Ljava/lang/String;)I
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 398
    const/4 v5, -0x1

    .line 399
    .local v5, "index":I
    const/4 v4, 0x0

    .line 400
    .local v4, "idx":I
    if-eqz p1, :cond_1

    .line 401
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()[Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .local v0, "arr$":[Lti/modules/titanium/ui/TableViewSectionProxy;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v2    # "i$":I
    .end local v6    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v10, v0, v3

    .line 402
    .local v10, "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v10}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .local v1, "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v7, :cond_0

    aget-object v9, v1, v2

    .line 403
    .local v9, "row":Lti/modules/titanium/ui/TableViewRowProxy;
    const-string v11, "name"

    invoke-virtual {v9, v11}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, "rname":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 405
    move v5, v4

    .line 410
    .end local v8    # "rname":Ljava/lang/String;
    .end local v9    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    const/4 v11, -0x1

    if-le v5, v11, :cond_3

    .line 415
    .end local v1    # "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v2    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_1
    return v5

    .line 408
    .restart local v1    # "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    .restart local v2    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "rname":Ljava/lang/String;
    .restart local v9    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    .restart local v10    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 401
    .end local v8    # "rname":Ljava/lang/String;
    .end local v9    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 2

    .prologue
    .line 569
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 570
    .local v0, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method public getSections()[Lti/modules/titanium/ui/TableViewSectionProxy;
    .locals 2

    .prologue
    .line 562
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 563
    .local v0, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/ui/TableViewSectionProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lti/modules/titanium/ui/TableViewSectionProxy;

    return-object v1
.end method

.method public getSectionsArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TableViewSectionProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    .line 576
    .local v0, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    if-nez v0, :cond_0

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .restart local v0    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    iput-object v0, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    .line 580
    :cond_0
    return-object v0
.end method

.method public getTableView()Lti/modules/titanium/ui/widget/TiUITableView;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUITableView;

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "data":[Ljava/lang/Object;
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 100
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 101
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "o":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 102
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    const-string v2, "sections"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    const-string v2, "sections"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 110
    .restart local v1    # "o":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 111
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "o":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 112
    const-string v2, "sections"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_1
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 116
    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TableViewProxy;->processData([Ljava/lang/Object;)V

    .line 119
    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 863
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1844

    if-ne v3, v5, :cond_0

    .line 864
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUITableView;->updateView()V

    .line 865
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/appcelerator/kroll/common/AsyncResult;

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 943
    :goto_0
    return v3

    .line 867
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1845

    if-ne v3, v5, :cond_1

    .line 868
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Lti/modules/titanium/ui/widget/TiUITableView;->scrollToIndex(I)V

    move v3, v4

    .line 869
    goto :goto_0

    .line 870
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1846

    if-ne v3, v5, :cond_2

    .line 871
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 872
    .local v2, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    .line 873
    .local v0, "data":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/TableViewProxy;->handleSetData([Ljava/lang/Object;)V

    .line 874
    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 875
    goto :goto_0

    .line 876
    .end local v0    # "data":[Ljava/lang/Object;
    .end local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1848

    if-ne v3, v5, :cond_4

    .line 877
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 879
    .restart local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :try_start_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_3

    .line 880
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowAfter(ILjava/lang/Object;)V

    .line 885
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    :goto_2
    move v3, v4

    .line 890
    goto :goto_0

    .line 883
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowBefore(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 887
    :catch_0
    move-exception v1

    .line 888
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 891
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_4
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1849

    if-ne v3, v5, :cond_5

    .line 892
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 893
    .restart local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->handleAppendRow(Ljava/lang/Object;)V

    .line 894
    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 895
    goto :goto_0

    .line 896
    .end local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_5
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1847

    if-ne v3, v5, :cond_6

    .line 897
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 899
    .restart local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :try_start_1
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->handleDeleteRow(Ljava/lang/Object;)V

    .line 900
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move v3, v4

    .line 904
    goto/16 :goto_0

    .line 901
    :catch_1
    move-exception v1

    .line 902
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_3

    .line 905
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_6
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x184e

    if-ne v3, v5, :cond_8

    .line 906
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 908
    .restart local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :try_start_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_7

    .line 909
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertSectionAfter(ILjava/lang/Object;)V

    .line 914
    :goto_4
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    :goto_5
    move v3, v4

    .line 919
    goto/16 :goto_0

    .line 912
    :cond_7
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertSectionBefore(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 916
    :catch_2
    move-exception v1

    .line 917
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_5

    .line 920
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_8
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x184c

    if-ne v3, v5, :cond_9

    .line 921
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 922
    .restart local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->handleAppendSection(Ljava/lang/Object;)V

    .line 923
    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 924
    goto/16 :goto_0

    .line 925
    .end local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_9
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x184d

    if-ne v3, v5, :cond_a

    .line 926
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 928
    .restart local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :try_start_3
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->handleDeleteSection(I)V

    .line 929
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_6
    move v3, v4

    .line 933
    goto/16 :goto_0

    .line 930
    :catch_3
    move-exception v1

    .line 931
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_6

    .line 934
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_a
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x184a

    if-ne v3, v5, :cond_b

    .line 935
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Lti/modules/titanium/ui/widget/TiUITableView;->scrollToTop(I)V

    move v3, v4

    .line 936
    goto/16 :goto_0

    .line 937
    :cond_b
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x184b

    if-ne v3, v5, :cond_c

    .line 938
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Lti/modules/titanium/ui/widget/TiUITableView;->selectRow(I)V

    move v3, v4

    .line 939
    goto/16 :goto_0

    .line 943
    :cond_c
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public insertRowAfter(ILjava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 494
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowAfter(ILjava/lang/Object;)V

    .line 505
    :cond_0
    return-void

    .line 499
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1848

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 502
    .local v0, "asyncResult":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 503
    check-cast v0, Ljava/lang/IllegalStateException;

    .end local v0    # "asyncResult":Ljava/lang/Object;
    throw v0
.end method

.method public insertRowBefore(ILjava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 421
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowBefore(ILjava/lang/Object;)V

    .line 432
    :cond_0
    return-void

    .line 426
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1848

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 429
    .local v0, "asyncResult":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 430
    check-cast v0, Ljava/lang/IllegalStateException;

    .end local v0    # "asyncResult":Ljava/lang/Object;
    throw v0
.end method

.method public insertSectionAfter(ILjava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 524
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertSectionAfter(ILjava/lang/Object;)V

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x184e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 532
    .local v0, "asyncResult":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 533
    const-string v1, "TableViewProxy"

    check-cast v0, Ljava/lang/IllegalStateException;

    .end local v0    # "asyncResult":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertSectionBefore(ILjava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 460
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowBefore(ILjava/lang/Object;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x184e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 468
    .local v0, "asyncResult":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 469
    const-string v1, "TableViewProxy"

    check-cast v0, Ljava/lang/IllegalStateException;

    .end local v0    # "asyncResult":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processData([Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 609
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v5

    .line 610
    .local v5, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-direct {p0}, Lti/modules/titanium/ui/TableViewProxy;->cleanupSections()V

    .line 612
    const/4 v1, 0x0

    .line 613
    .local v1, "currentSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    const-string v6, "headerTitle"

    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 614
    new-instance v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .end local v1    # "currentSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-direct {v1}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>()V

    .line 615
    .restart local v1    # "currentSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v1, v6}, Lti/modules/titanium/ui/TableViewSectionProxy;->setActivity(Landroid/app/Activity;)V

    .line 616
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 618
    const-string v6, "headerTitle"

    const-string v7, "headerTitle"

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 620
    :cond_0
    const-string v6, "footerTitle"

    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 621
    if-nez v1, :cond_1

    .line 622
    new-instance v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .end local v1    # "currentSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-direct {v1}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>()V

    .line 623
    .restart local v1    # "currentSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v1, v6}, Lti/modules/titanium/ui/TableViewSectionProxy;->setActivity(Landroid/app/Activity;)V

    .line 624
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 627
    :cond_1
    const-string v6, "footerTitle"

    const-string v7, "footerTitle"

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 630
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_7

    .line 631
    aget-object v3, p1, v2

    .line 632
    .local v3, "o":Ljava/lang/Object;
    instance-of v6, v3, Ljava/util/HashMap;

    if-nez v6, :cond_3

    instance-of v6, v3, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v6, :cond_6

    .line 633
    :cond_3
    invoke-direct {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v4

    .line 634
    .local v4, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-direct {p0, v4, v1}, Lti/modules/titanium/ui/TableViewProxy;->addRowToSection(Lti/modules/titanium/ui/TableViewRowProxy;Lti/modules/titanium/ui/TableViewSectionProxy;)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .line 635
    .local v0, "addedToSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 636
    :cond_4
    move-object v1, v0

    .line 637
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 630
    .end local v0    # "addedToSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v4    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 640
    :cond_6
    instance-of v6, v3, Lti/modules/titanium/ui/TableViewSectionProxy;

    if-eqz v6, :cond_5

    move-object v1, v3

    .line 641
    check-cast v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 642
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_1

    .line 646
    .end local v3    # "o":Ljava/lang/Object;
    :cond_7
    return-void
.end method

.method public releaseViews()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 136
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 138
    .local v1, "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewSectionProxy;->releaseViews()V

    goto :goto_0

    .line 141
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_0
    return-void
.end method

.method public scrollToIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 836
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1845

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 838
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 839
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 840
    return-void
.end method

.method public scrollToTop(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 854
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x184a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 856
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 857
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 858
    return-void
.end method

.method public selectRow(I)V
    .locals 3
    .param p1, "row_id"    # I

    .prologue
    .line 845
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x184b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 846
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 847
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 848
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 125
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 127
    .local v1, "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v1, p1}, Lti/modules/titanium/ui/TableViewSectionProxy;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 130
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_0
    return-void
.end method

.method public setData([Ljava/lang/Object;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 660
    move-object v0, p1

    .line 661
    .local v0, "data":[Ljava/lang/Object;
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    aget-object v1, p1, v2

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 662
    aget-object v1, p1, v2

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 664
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/TableViewProxy;->handleSetData([Ljava/lang/Object;)V

    .line 670
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1846

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSections([Ljava/lang/Object;)V
    .locals 8
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 675
    move-object v1, p1

    .line 676
    .local v1, "data":[Ljava/lang/Object;
    if-eqz p1, :cond_0

    array-length v5, p1

    if-lez v5, :cond_0

    aget-object v5, p1, v6

    instance-of v5, v5, [Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 677
    aget-object v5, p1, v6

    check-cast v5, [Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, [Ljava/lang/Object;

    .line 679
    :cond_0
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 680
    .local v4, "section":Ljava/lang/Object;
    instance-of v5, v4, Lti/modules/titanium/ui/TableViewSectionProxy;

    if-nez v5, :cond_1

    .line 681
    const-string v5, "TableViewProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to set sections. Invalid type for section: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .end local v4    # "section":Ljava/lang/Object;
    :goto_1
    return-void

    .line 679
    .restart local v4    # "section":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 685
    .end local v4    # "section":Ljava/lang/Object;
    :cond_2
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 686
    invoke-direct {p0, v1}, Lti/modules/titanium/ui/TableViewProxy;->handleSetData([Ljava/lang/Object;)V

    goto :goto_1

    .line 688
    :cond_3
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x1846

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public updateRow(Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 11
    .param p1, "row"    # Ljava/lang/Object;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 183
    const/4 v6, 0x0

    .line 184
    .local v6, "sectionProxy":Lti/modules/titanium/ui/TableViewSectionProxy;
    const/4 v2, -0x1

    .line 185
    .local v2, "rowIndex":I
    instance-of v8, p1, Ljava/lang/Number;

    if-eqz v8, :cond_1

    .line 186
    new-instance v5, Lti/modules/titanium/ui/TableViewProxy$RowResult;

    invoke-direct {v5, p0}, Lti/modules/titanium/ui/TableViewProxy$RowResult;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .local v5, "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    move-object v8, p1

    .line 187
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 188
    invoke-direct {p0, v2, v5}, Lti/modules/titanium/ui/TableViewProxy;->locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z

    .line 189
    iget-object v6, v5, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 190
    iget v2, v5, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    .line 204
    .end local v5    # "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v3

    .line 205
    .local v3, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    if-nez v3, :cond_4

    .line 206
    const-string v8, "TableViewProxy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to update row. Invalid type for row: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_1
    return-void

    .line 191
    .end local v3    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_1
    instance-of v8, p1, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v8, :cond_0

    .line 192
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v7

    .line 193
    .local v7, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 194
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lti/modules/titanium/ui/TableViewSectionProxy;

    iget-object v4, v8, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    .line 195
    .local v4, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewRowProxy;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 196
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, p1, :cond_2

    .line 197
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sectionProxy":Lti/modules/titanium/ui/TableViewSectionProxy;
    check-cast v6, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 198
    .restart local v6    # "sectionProxy":Lti/modules/titanium/ui/TableViewSectionProxy;
    move v2, v1

    .line 199
    goto :goto_0

    .line 195
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 193
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 209
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v4    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewRowProxy;>;"
    .end local v7    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    .restart local v3    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_4
    if-eqz v6, :cond_5

    .line 210
    invoke-virtual {v6, v2, v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->updateRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V

    .line 211
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 212
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    goto :goto_1

    .line 214
    :cond_5
    const-string v8, "TableViewProxy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to update row. Non-existent row: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateSection(Ljava/lang/Number;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 8
    .param p1, "index"    # Ljava/lang/Number;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 221
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 222
    .local v3, "sectionIndex":I
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->sectionProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v4

    .line 224
    .local v4, "sectionProxy":Lti/modules/titanium/ui/TableViewSectionProxy;
    if-nez v4, :cond_0

    .line 225
    const-string v5, "TableViewProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to update section. Invalid type for section: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    return-void

    .line 229
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 230
    .local v0, "currentSections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 231
    .local v2, "oldSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 232
    if-eq v4, v2, :cond_1

    .line 233
    invoke-virtual {v4, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 234
    invoke-virtual {v2}, Lti/modules/titanium/ui/TableViewSectionProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v5

    if-ne v5, p0, :cond_1

    .line 235
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 238
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v5

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 239
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    .end local v0    # "currentSections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    .end local v2    # "oldSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "TableViewProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to update section. Index out of range. Non-existent section at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateView()V
    .locals 2

    .prologue
    .line 825
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUITableView;->updateView()V

    .line 831
    :goto_0
    return-void

    .line 830
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1844

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method
