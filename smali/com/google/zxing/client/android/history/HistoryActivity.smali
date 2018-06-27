.class public final Lcom/google/zxing/client/android/history/HistoryActivity;
.super Landroid/app/ListActivity;
.source "HistoryActivity.java"


# static fields
.field private static final CLEAR_ID:I = 0x2

.field private static final SEND_ID:I = 0x1


# instance fields
.field private adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

.field private historyManager:Lcom/google/zxing/client/android/history/HistoryManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/zxing/client/android/history/HistoryActivity;)Lcom/google/zxing/client/android/history/HistoryManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/client/android/history/HistoryActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    return-object v0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 90
    .local v0, "position":I
    iget-object v1, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->deleteHistoryItem(I)V

    .line 91
    invoke-virtual {p0}, Lcom/google/zxing/client/android/history/HistoryActivity;->finish()V

    .line 92
    const/4 v1, 0x1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance v1, Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/history/HistoryManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    .line 50
    new-instance v1, Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/history/HistoryItemAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    .line 51
    iget-object v1, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/history/HistoryActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/zxing/client/android/history/HistoryActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 53
    .local v0, "listview":Landroid/widget/ListView;
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/history/HistoryActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 83
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 84
    .local v0, "position":I
    const/4 v1, 0x0

    const-string v2, "history_clear_one_history_text"

    invoke-static {v2}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v0, v0, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 98
    iget-object v2, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/history/HistoryManager;->hasHistoryItems()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const-string v2, "history_send"

    invoke-static {v2}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const-string v3, "history_clear_text"

    invoke-static {v3}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 100
    const/4 v2, 0x2

    const-string v3, "history_clear_text"

    invoke-static {v3}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const-string v2, "msg_unmount_usb"

    invoke-static {v2}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 103
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 71
    iget-object v1, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    invoke-virtual {v1, p3}, Lcom/google/zxing/client/android/history/HistoryItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/android/history/HistoryItem;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/history/HistoryItem;->getResult()Lcom/google/zxing/Result;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/zxing/client/android/CaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ITEM_NUMBER"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/client/android/history/HistoryActivity;->setResult(ILandroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/zxing/client/android/history/HistoryActivity;->finish()V

    .line 77
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 144
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    .line 146
    :goto_0
    return v5

    .line 110
    :pswitch_0
    iget-object v6, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v6}, Lcom/google/zxing/client/android/history/HistoryManager;->buildHistory()Ljava/lang/CharSequence;

    move-result-object v1

    .line 111
    .local v1, "history":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/zxing/client/android/history/HistoryManager;->saveHistory(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 112
    .local v2, "historyFile":Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 113
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v6, "msg_unmount_usb"

    invoke-static {v6}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 115
    const-string v6, "button_ok"

    invoke-static {v6}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 118
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    const-string v7, "mailto:"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x80000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0}, Lcom/google/zxing/client/android/history/HistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "history_email_title"

    invoke-static {v7}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "subject":Ljava/lang/String;
    const-string v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    const-string v6, "text/csv"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/history/HistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 129
    .end local v1    # "history":Ljava/lang/CharSequence;
    .end local v2    # "historyFile":Landroid/net/Uri;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "subject":Ljava/lang/String;
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v6, "msg_sure"

    invoke-static {v6}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 132
    const-string v6, "button_ok"

    invoke-static {v6}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Lcom/google/zxing/client/android/history/HistoryActivity$1;

    invoke-direct {v7, p0}, Lcom/google/zxing/client/android/history/HistoryActivity$1;-><init>(Lcom/google/zxing/client/android/history/HistoryActivity;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    const-string v6, "button_cancel"

    invoke-static {v6}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 58
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 59
    iget-object v3, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v3}, Lcom/google/zxing/client/android/history/HistoryManager;->buildHistoryItems()Ljava/util/List;

    move-result-object v2

    .line 60
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/client/android/history/HistoryItem;>;"
    iget-object v3, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    invoke-virtual {v3}, Lcom/google/zxing/client/android/history/HistoryItemAdapter;->clear()V

    .line 61
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/android/history/HistoryItem;

    .line 62
    .local v1, "item":Lcom/google/zxing/client/android/history/HistoryItem;
    iget-object v3, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    invoke-virtual {v3, v1}, Lcom/google/zxing/client/android/history/HistoryItemAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    .end local v1    # "item":Lcom/google/zxing/client/android/history/HistoryItem;
    :cond_0
    iget-object v3, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    invoke-virtual {v3}, Lcom/google/zxing/client/android/history/HistoryItemAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    new-instance v4, Lcom/google/zxing/client/android/history/HistoryItem;

    invoke-direct {v4, v5, v5, v5}, Lcom/google/zxing/client/android/history/HistoryItem;-><init>(Lcom/google/zxing/Result;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/zxing/client/android/history/HistoryItemAdapter;->add(Ljava/lang/Object;)V

    .line 67
    :cond_1
    return-void
.end method
