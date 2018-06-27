.class public final Lcom/google/zxing/client/android/book/SearchBookContentsActivity;
.super Landroid/app/Activity;
.source "SearchBookContentsActivity.java"


# static fields
.field private static final GT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final LT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final QUOTE_ENTITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final QUOT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final buttonListener:Landroid/view/View$OnClickListener;

.field private final handler:Landroid/os/Handler;

.field private headerView:Landroid/widget/TextView;

.field private isbn:Ljava/lang/String;

.field private final keyListener:Landroid/view/View$OnKeyListener;

.field private networkThread:Ljava/lang/Thread;

.field private queryButton:Landroid/widget/Button;

.field private queryTextView:Landroid/widget/EditText;

.field private resultListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->TAG:Ljava/lang/String;

    .line 55
    const-string v0, "\\<.*?\\>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 56
    const-string v0, "&lt;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->LT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    .line 57
    const-string v0, "&gt;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->GT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    .line 58
    const-string v0, "&#39;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->QUOTE_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    .line 59
    const-string v0, "&quot;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->QUOT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$1;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$1;-><init>(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->handler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$2;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$2;-><init>(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->buttonListener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$3;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$3;-><init>(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->keyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/zxing/client/android/book/SearchBookContentsActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->handleSearchResults(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resetForNewQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->headerView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->launchSearch()V

    return-void
.end method

.method private handleSearchResults(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x0

    .line 175
    :try_start_0
    const-string v6, "number_of_results"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 176
    .local v0, "count":I
    iget-object v7, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->headerView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    const-string v6, "1 result"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    if-lez v0, :cond_2

    .line 178
    const-string v6, "search_results"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 179
    .local v3, "results":Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/zxing/client/android/book/SearchBookContentsResult;->setQuery(Ljava/lang/String;)V

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/client/android/book/SearchBookContentsResult;>;"
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 182
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->parseResult(Lorg/json/JSONObject;)Lcom/google/zxing/client/android/book/SearchBookContentsResult;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 176
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/client/android/book/SearchBookContentsResult;>;"
    .end local v3    # "results":Lorg/json/JSONArray;
    .end local v5    # "x":I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " results"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 184
    .restart local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/client/android/book/SearchBookContentsResult;>;"
    .restart local v3    # "results":Lorg/json/JSONArray;
    .restart local v5    # "x":I
    :cond_1
    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;

    new-instance v7, Lcom/google/zxing/client/android/book/BrowseBookListener;

    invoke-direct {v7, p0, v2}, Lcom/google/zxing/client/android/book/BrowseBookListener;-><init>(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 185
    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;

    new-instance v7, Lcom/google/zxing/client/android/book/SearchBookContentsAdapter;

    invoke-direct {v7, p0, v2}, Lcom/google/zxing/client/android/book/SearchBookContentsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    .end local v0    # "count":I
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/client/android/book/SearchBookContentsResult;>;"
    .end local v3    # "results":Lorg/json/JSONArray;
    .end local v5    # "x":I
    :goto_2
    return-void

    .line 187
    .restart local v0    # "count":I
    :cond_2
    const-string v6, "searchable"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "searchable":Ljava/lang/String;
    const-string v6, "false"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 189
    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->headerView:Landroid/widget/TextView;

    const-string v7, "msg_sbc_book_not_searchable"

    invoke-static {v7}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 191
    :cond_3
    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 193
    .end local v0    # "count":I
    .end local v4    # "searchable":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->TAG:Ljava/lang/String;

    const-string v7, "Bad JSON from book search"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->headerView:Landroid/widget/TextView;

    const-string v7, "msg_sbc_failed"

    invoke-static {v7}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private launchSearch()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 158
    iget-object v1, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->networkThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "query":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 161
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/zxing/client/android/book/NetworkWorker;

    iget-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->isbn:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->handler:Landroid/os/Handler;

    invoke-direct {v2, v3, v0, v4}, Lcom/google/zxing/client/android/book/NetworkWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->networkThread:Ljava/lang/Thread;

    .line 162
    iget-object v1, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->networkThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 163
    iget-object v1, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->headerView:Landroid/widget/TextView;

    const-string v2, "msg_sbc_searching_book"

    invoke-static {v2}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v1, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    iget-object v1, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 166
    iget-object v1, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    .end local v0    # "query":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private parseResult(Lorg/json/JSONObject;)Lcom/google/zxing/client/android/book/SearchBookContentsResult;
    .locals 10
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 203
    :try_start_0
    const-string v5, "page_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "pageId":Ljava/lang/String;
    const-string v5, "page_number"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "pageNumber":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg_sbc_page"

    invoke-static {v6}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    :goto_0
    const-string v5, "snippet_text"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "snippet":Ljava/lang/String;
    const/4 v4, 0x1

    .line 215
    .local v4, "valid":Z
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 216
    sget-object v5, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    sget-object v5, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->LT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    sget-object v5, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->GT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    sget-object v5, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->QUOTE_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    sget-object v5, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->QUOT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    :goto_1
    new-instance v5, Lcom/google/zxing/client/android/book/SearchBookContentsResult;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/zxing/client/android/book/SearchBookContentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 228
    .end local v1    # "pageId":Ljava/lang/String;
    .end local v2    # "pageNumber":Ljava/lang/String;
    .end local v3    # "snippet":Ljava/lang/String;
    .end local v4    # "valid":Z
    :goto_2
    return-object v5

    .line 209
    .restart local v1    # "pageId":Ljava/lang/String;
    .restart local v2    # "pageNumber":Ljava/lang/String;
    :cond_0
    const-string v5, "msg_sbc_unknown_page"

    invoke-static {v5}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 222
    .restart local v3    # "snippet":Ljava/lang/String;
    .restart local v4    # "valid":Z
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "msg_sbc_snippet_unavailable"

    invoke-static {v6}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 223
    const/4 v4, 0x0

    goto :goto_1

    .line 226
    .end local v1    # "pageId":Ljava/lang/String;
    .end local v2    # "pageNumber":Ljava/lang/String;
    .end local v3    # "snippet":Ljava/lang/String;
    .end local v4    # "valid":Z
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Lcom/google/zxing/client/android/book/SearchBookContentsResult;

    const-string v6, "msg_sbc_no_page_returned"

    invoke-static {v6}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/zxing/client/android/book/SearchBookContentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method private resetForNewQuery()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->networkThread:Ljava/lang/Thread;

    .line 152
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 154
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    return-void
.end method


# virtual methods
.method getISBN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->isbn:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 109
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 111
    invoke-virtual {p0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 112
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.zxing.client.android.SEARCH_BOOK_CONTENTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->finish()V

    .line 142
    :goto_0
    return-void

    .line 117
    :cond_1
    const-string v3, "ISBN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->isbn:Ljava/lang/String;

    .line 118
    iget-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->isbn:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/zxing/client/android/LocaleManager;->isBookSearchUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    const-string v3, "sbc_name"

    invoke-static {v3}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    :goto_1
    const-string v3, "search_book_contents"

    invoke-static {v3}, Lti/barcode/RHelper;->getLayout(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->setContentView(I)V

    .line 125
    const-string v3, "query_text_view"

    invoke-static {v3}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;

    .line 127
    const-string v3, "QUERY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "initialQuery":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 130
    iget-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_2
    iget-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->keyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 134
    const-string v3, "query_button"

    invoke-static {v3}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryButton:Landroid/widget/Button;

    .line 135
    iget-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const-string v3, "result_list_view"

    invoke-static {v3}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;

    .line 138
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 139
    .local v0, "factory":Landroid/view/LayoutInflater;
    const-string v3, "search_book_contents_header"

    invoke-static {v3}, Lti/barcode/RHelper;->getLayout(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->headerView:Landroid/widget/TextView;

    .line 141
    iget-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->headerView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    .end local v1    # "initialQuery":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sbc_name"

    invoke-static {v4}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": ISBN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->isbn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 148
    return-void
.end method
