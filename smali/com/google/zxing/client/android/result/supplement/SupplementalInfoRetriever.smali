.class public abstract Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;
.super Ljava/lang/Object;
.source "SupplementalInfoRetriever.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static executorInstance:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

.field private final textViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->executorInstance:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;Landroid/os/Handler;Lcom/google/zxing/client/android/history/HistoryManager;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "historyManager"    # Lcom/google/zxing/client/android/history/HistoryManager;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->textViewRef:Ljava/lang/ref/WeakReference;

    .line 95
    iput-object p2, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->handler:Landroid/os/Handler;

    .line 96
    iput-object p3, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    .line 97
    return-void
.end method

.method private static declared-synchronized getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 49
    const-class v1, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->executorInstance:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever$1;

    invoke-direct {v0}, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->executorInstance:Ljava/util/concurrent/ExecutorService;

    .line 59
    :cond_0
    sget-object v0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->executorInstance:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static maybeInvokeRetrieval(Landroid/widget/TextView;Lcom/google/zxing/client/result/ParsedResult;Landroid/os/Handler;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V
    .locals 14
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "result"    # Lcom/google/zxing/client/result/ParsedResult;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "historyManager"    # Lcom/google/zxing/client/android/history/HistoryManager;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    new-instance v13, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .local v13, "retrievers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;>;"
    instance-of v0, p1, Lcom/google/zxing/client/result/URIParsedResult;

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lcom/google/zxing/client/android/result/supplement/URIResultInfoRetriever;

    move-object v2, p1

    check-cast v2, Lcom/google/zxing/client/result/URIParsedResult;

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/android/result/supplement/URIResultInfoRetriever;-><init>(Landroid/widget/TextView;Lcom/google/zxing/client/result/URIParsedResult;Landroid/os/Handler;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    .end local p1    # "result":Lcom/google/zxing/client/result/ParsedResult;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;

    .line 82
    .local v12, "retriever":Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;
    invoke-static {}, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    .line 83
    .local v9, "executor":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v9, v12}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v10

    .line 85
    .local v10, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v0, Lcom/google/zxing/client/android/result/supplement/KillerCallable;

    const-wide/16 v6, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v10, v6, v7, v1}, Lcom/google/zxing/client/android/result/supplement/KillerCallable;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_1

    .line 72
    .end local v9    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v10    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "retriever":Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;
    .restart local p1    # "result":Lcom/google/zxing/client/result/ParsedResult;
    :cond_1
    instance-of v0, p1, Lcom/google/zxing/client/result/ProductParsedResult;

    if-eqz v0, :cond_2

    .line 73
    check-cast p1, Lcom/google/zxing/client/result/ProductParsedResult;

    .end local p1    # "result":Lcom/google/zxing/client/result/ParsedResult;
    invoke-virtual {p1}, Lcom/google/zxing/client/result/ProductParsedResult;->getProductID()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "productID":Ljava/lang/String;
    new-instance v0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;-><init>(Landroid/widget/TextView;Ljava/lang/String;Landroid/os/Handler;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v2    # "productID":Ljava/lang/String;
    .restart local p1    # "result":Lcom/google/zxing/client/result/ParsedResult;
    :cond_2
    instance-of v0, p1, Lcom/google/zxing/client/result/ISBNParsedResult;

    if-eqz v0, :cond_0

    .line 76
    check-cast p1, Lcom/google/zxing/client/result/ISBNParsedResult;

    .end local p1    # "result":Lcom/google/zxing/client/result/ParsedResult;
    invoke-virtual {p1}, Lcom/google/zxing/client/result/ISBNParsedResult;->getISBN()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "isbn":Ljava/lang/String;
    new-instance v3, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;

    move-object v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;-><init>(Landroid/widget/TextView;Ljava/lang/String;Landroid/os/Handler;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V

    invoke-interface {v13, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v3, Lcom/google/zxing/client/android/result/supplement/BookResultInfoRetriever;

    move-object v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/client/android/result/supplement/BookResultInfoRetriever;-><init>(Landroid/widget/TextView;Ljava/lang/String;Landroid/os/Handler;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V

    invoke-interface {v13, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .end local v5    # "isbn":Ljava/lang/String;
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method


# virtual methods
.method final append(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "itemID"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "newTexts"    # [Ljava/lang/String;
    .param p4, "linkURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v11, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->textViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 110
    .local v10, "textView":Landroid/widget/TextView;
    if-nez v10, :cond_0

    .line 111
    new-instance v11, Ljava/lang/InterruptedException;

    invoke-direct {v11}, Ljava/lang/InterruptedException;-><init>()V

    throw v11

    .line 114
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v9, "newTextCombined":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    .line 117
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 122
    .local v7, "linkStart":I
    const/4 v3, 0x1

    .line 123
    .local v3, "first":Z
    move-object/from16 v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v8, v1, v4

    .line 124
    .local v8, "newText":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 125
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const/4 v3, 0x0

    .line 123
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    :cond_2
    const-string v11, " ["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const/16 v11, 0x5d

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 134
    .end local v8    # "newText":Ljava/lang/String;
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 136
    .local v6, "linkEnd":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 137
    .restart local v8    # "newText":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    .local v2, "content":Landroid/text/Spannable;
    if-eqz p4, :cond_4

    .line 139
    new-instance v11, Landroid/text/style/URLSpan;

    move-object/from16 v0, p4

    invoke-direct {v11, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x21

    invoke-interface {v2, v11, v7, v6, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 142
    :cond_4
    iget-object v11, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->handler:Landroid/os/Handler;

    new-instance v12, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever$2;

    invoke-direct {v12, p0, v10, v2}, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever$2;-><init>(Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;Landroid/widget/TextView;Landroid/text/Spannable;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    iget-object v11, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v11, p1, v8}, Lcom/google/zxing/client/android/history/HistoryManager;->addHistoryItemDetails(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->retrieveSupplementalInfo()V

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract retrieveSupplementalInfo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
