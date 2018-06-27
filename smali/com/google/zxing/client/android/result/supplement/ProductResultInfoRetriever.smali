.class final Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;
.super Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;
.source "ProductResultInfoRetriever.java"


# static fields
.field private static final PRODUCT_NAME_PRICE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final context:Landroid/content/Context;

.field private final productID:Ljava/lang/String;

.field private final source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "owb63p\">([^<]+).+zdi3pb\">([^<]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->PRODUCT_NAME_PRICE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;Ljava/lang/String;Landroid/os/Handler;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "productID"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "historyManager"    # Lcom/google/zxing/client/android/history/HistoryManager;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1, p3, p4}, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;-><init>(Landroid/widget/TextView;Landroid/os/Handler;Lcom/google/zxing/client/android/history/HistoryManager;)V

    .line 49
    iput-object p2, p0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->productID:Ljava/lang/String;

    .line 50
    const-string v0, "msg_google_product"

    invoke-static {v0}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->source:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->context:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private static unescapeHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method retrieveSupplementalInfo()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 57
    iget-object v4, p0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->productID:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "encodedProductID":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://www.google."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/zxing/client/android/LocaleManager;->getProductSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/m/products?ie=utf8&oe=utf8&scoring=p&source=zxing&q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "uri":Ljava/lang/String;
    sget-object v4, Lcom/google/zxing/client/android/HttpHelper$ContentType;->HTML:Lcom/google/zxing/client/android/HttpHelper$ContentType;

    invoke-static {v3, v4}, Lcom/google/zxing/client/android/HttpHelper;->downloadViaHttp(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "content":Ljava/lang/String;
    sget-object v4, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->PRODUCT_NAME_PRICE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 63
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    iget-object v4, p0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->productID:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->source:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->unescapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->unescapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->append(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method
