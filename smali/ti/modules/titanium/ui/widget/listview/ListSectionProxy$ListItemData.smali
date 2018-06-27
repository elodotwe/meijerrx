.class public Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;
.super Ljava/lang/Object;
.source "ListSectionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItemData"
.end annotation


# instance fields
.field private properties:Lorg/appcelerator/kroll/KrollDict;

.field private searchableText:Ljava/lang/String;

.field private template:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/listview/ListSectionProxy;Lorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;)V
    .locals 4
    .param p2, "properties"    # Lorg/appcelerator/kroll/KrollDict;
    .param p3, "template"    # Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    .prologue
    .line 74
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->this$0:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v3, ""

    iput-object v3, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->searchableText:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->properties:Lorg/appcelerator/kroll/KrollDict;

    .line 76
    iput-object p3, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->template:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    .line 78
    const-string v3, "properties"

    invoke-virtual {p2, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    const-string v3, "properties"

    invoke-virtual {p2, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, "props":Ljava/lang/Object;
    instance-of v3, v0, Ljava/util/HashMap;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 81
    check-cast v1, Ljava/util/HashMap;

    .line 82
    .local v1, "propsHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "searchableText"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 83
    .local v2, "searchText":Ljava/lang/Object;
    const-string v3, "searchableText"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 84
    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->searchableText:Ljava/lang/String;

    .line 89
    .end local v0    # "props":Ljava/lang/Object;
    .end local v1    # "propsHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "searchText":Ljava/lang/Object;
    :cond_0
    return-void
.end method


# virtual methods
.method public getProperties()Lorg/appcelerator/kroll/KrollDict;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->properties:Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method public getSearchableText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->searchableText:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->template:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    return-object v0
.end method
