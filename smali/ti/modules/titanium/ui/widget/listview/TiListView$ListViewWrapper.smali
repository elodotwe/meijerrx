.class Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;
.super Landroid/widget/FrameLayout;
.source "TiListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/listview/TiListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListViewWrapper"
.end annotation


# instance fields
.field private selectionSet:Z

.field final synthetic this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

.field private viewFocused:Z


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/listview/TiListView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 106
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    .line 107
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 104
    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->viewFocused:Z

    .line 105
    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->selectionSet:Z

    .line 108
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 118
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-static {v5}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$000(Lti/modules/titanium/ui/widget/listview/TiListView;)Landroid/widget/ListView;

    move-result-object v5

    if-eqz v5, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_2

    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-static {v5}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$000(Lti/modules/titanium/ui/widget/listview/TiListView;)Landroid/widget/ListView;

    move-result-object v5

    if-eqz v5, :cond_2

    if-nez p1, :cond_2

    iget-boolean v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->viewFocused:Z

    if-eqz v5, :cond_2

    .line 119
    :cond_0
    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->viewFocused:Z

    .line 120
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_3

    iget-boolean v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->selectionSet:Z

    if-eqz v5, :cond_3

    .line 126
    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->selectionSet:Z

    goto :goto_0

    .line 129
    :cond_3
    const/4 v1, 0x0

    .line 130
    .local v1, "focusListener":Landroid/view/View$OnFocusChangeListener;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-static {v5}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$000(Lti/modules/titanium/ui/widget/listview/TiListView;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 131
    .local v2, "focusedView":Landroid/view/View;
    const/4 v0, -0x1

    .line 132
    .local v0, "cursorPosition":I
    if-eqz v2, :cond_5

    .line 133
    invoke-virtual {v2}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v3

    .line 134
    .local v3, "listener":Landroid/view/View$OnFocusChangeListener;
    if-eqz v3, :cond_5

    instance-of v5, v3, Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v5, :cond_5

    .line 137
    instance-of v5, v2, Landroid/widget/EditText;

    if-eqz v5, :cond_4

    move-object v5, v2

    .line 138
    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 140
    :cond_4
    invoke-virtual {v2, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 141
    move-object v1, v3

    .line 147
    .end local v3    # "listener":Landroid/view/View$OnFocusChangeListener;
    :cond_5
    if-eqz v2, :cond_6

    .line 148
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-static {v5}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$000(Lti/modules/titanium/ui/widget/listview/TiListView;)Landroid/widget/ListView;

    move-result-object v5

    const/high16 v6, 0x60000

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 150
    :cond_6
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 152
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-static {v5}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$000(Lti/modules/titanium/ui/widget/listview/TiListView;)Landroid/widget/ListView;

    move-result-object v5

    const/high16 v6, 0x40000

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 154
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-static {v5}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$100(Lti/modules/titanium/ui/widget/listview/TiListView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v4

    .line 155
    .local v4, "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v4, :cond_7

    const-string v5, "postlayout"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 156
    const-string v5, "postlayout"

    invoke-virtual {v4, v5, v9}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 160
    :cond_7
    if-eqz v1, :cond_1

    .line 162
    if-eqz p1, :cond_8

    .line 163
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 164
    invoke-interface {v1, v2, v7}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    goto :goto_0

    .line 167
    :cond_8
    iput-boolean v8, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->viewFocused:Z

    .line 168
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 169
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 171
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 172
    check-cast v2, Landroid/widget/EditText;

    .end local v2    # "focusedView":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 173
    iput-boolean v8, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->selectionSet:Z

    goto/16 :goto_0
.end method
