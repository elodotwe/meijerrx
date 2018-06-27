.class Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$TabGroupFragmentPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "TiUIActionBarTabGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabGroupFragmentPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 175
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$TabGroupFragmentPagerAdapter;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    .line 176
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 177
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$TabGroupFragmentPagerAdapter;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->access$500(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$TabGroupFragmentPagerAdapter;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->access$600(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)I

    move-result v0

    .line 207
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$TabGroupFragmentPagerAdapter;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->access$300(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getNavigationItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 183
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$TabGroupFragmentPagerAdapter;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-static {v2}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->access$300(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/app/ActionBar;->getTabAt(I)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    .line 184
    .local v0, "tab":Landroid/support/v7/app/ActionBar$Tab;
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    .line 185
    .local v1, "tabView":Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->createFragment()Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;

    move-result-object v2

    return-object v2
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 195
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$TabGroupFragmentPagerAdapter;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-static {v2}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->access$400(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 196
    .local v0, "id":J
    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 219
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 220
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "tag":Ljava/lang/String;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$TabGroupFragmentPagerAdapter;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-static {v3}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->access$700(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 222
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 223
    const/4 v1, -0x2

    .line 225
    .end local v1    # "index":I
    :cond_0
    return v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 235
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;

    .line 236
    .local v0, "fragment":Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "tag":Ljava/lang/String;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$TabGroupFragmentPagerAdapter;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-static {v3}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->access$700(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 238
    .local v1, "sanityCheck":I
    if-ltz v1, :cond_0

    .line 240
    const-string v3, "TiUIActionBarTabGroup"

    const-string v4, "instantiateItem trying to add an existing tag"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$TabGroupFragmentPagerAdapter;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-static {v3}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->access$700(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p2, :cond_1

    .line 243
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$TabGroupFragmentPagerAdapter;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-static {v3}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->access$700(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$TabGroupFragmentPagerAdapter;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-static {v3}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->access$700(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 246
    return-object v0
.end method
