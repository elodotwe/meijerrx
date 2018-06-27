.class public Lti/modules/titanium/ui/widget/searchview/TiUISearchView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUISearchView.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;
.implements Landroid/support/v7/widget/SearchView$OnCloseListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field protected searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

.field private searchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 35
    new-instance v0, Landroid/support/v7/widget/SearchView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    .line 36
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 37
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SearchView;->setOnCloseListener(Landroid/support/v7/widget/SearchView$OnCloseListener;)V

    .line 38
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->setNativeView(Landroid/view/View;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 2

    .prologue
    .line 107
    const-string v0, "cancel"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    invoke-interface {v0, p1}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;->filterBy(Ljava/lang/String;)V

    .line 117
    :cond_0
    const-string v0, "change"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->nativeView:Landroid/view/View;

    invoke-static {v0, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 124
    const-string v0, "submit"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 125
    return v2
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 6
    .param p1, "props"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 49
    const-string v3, "hintText"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    const-string v4, "hintText"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    const-string v3, "value"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    const-string v4, "value"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 55
    :cond_1
    const-string v3, "iconified"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    const-string v4, "iconified"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    .line 58
    :cond_2
    const-string v3, "iconifiedByDefault"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 59
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    const-string v4, "iconifiedByDefault"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 61
    :cond_3
    const-string v3, "submitEnabled"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 62
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    const-string v4, "submitEnabled"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 64
    :cond_4
    const-string v3, "color"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 66
    :try_start_0
    const-string v3, "id.search_src_text"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    .line 67
    .local v1, "id":I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 68
    .local v2, "text":Landroid/widget/EditText;
    if-eqz v2, :cond_5

    .line 69
    const-string v3, "color"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "id":I
    .end local v2    # "text":Landroid/widget/EditText;
    :cond_5
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    const-string v3, "SearchView"

    const-string v4, "Could not find SearchView EditText"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 80
    const-string v3, "color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    :try_start_0
    const-string v3, "id.search_src_text"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    .line 83
    .local v1, "id":I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 84
    .local v2, "text":Landroid/widget/EditText;
    if-eqz v2, :cond_0

    .line 85
    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "id":I
    .end local v2    # "text":Landroid/widget/EditText;
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    const-string v3, "SearchView"

    const-string v4, "Could not find SearchView EditText"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    .end local v0    # "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v3, "hintText"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p3}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_2
    const-string v3, "value"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 94
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v3, "iconified"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 95
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    goto :goto_0

    .line 96
    :cond_4
    const-string v3, "iconifiedByDefault"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 97
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    goto :goto_0

    .line 98
    :cond_5
    const-string v3, "submitEnabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 99
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView;->setSubmitButtonEnabled(Z)V

    goto :goto_0

    .line 101
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public setOnSearchChangeListener(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    .prologue
    .line 129
    iput-object p1, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    .line 130
    return-void
.end method
