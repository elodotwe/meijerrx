.class public Lti/modules/titanium/network/TiHTTPClient;
.super Ljava/lang/Object;
.source "TiHTTPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;,
        Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;,
        Lti/modules/titanium/network/TiHTTPClient$ProgressListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_BUFFER_SIZE:I = 0x80000

.field private static final FALLBACK_CHARSETS:[Ljava/lang/String;

.field private static final HTML_META_TAG_REGEX:Ljava/lang/String; = "charset=([^\"\']*)"

.field private static final PROPERTY_MAX_BUFFER_SIZE:Ljava/lang/String; = "ti.android.httpclient.maxbuffersize"

.field private static final PROTOCOL_DEFAULT_PORT:I = -0x1

.field public static final READY_STATE_DONE:I = 0x4

.field public static final READY_STATE_HEADERS_RECEIVED:I = 0x2

.field public static final READY_STATE_LOADING:I = 0x3

.field public static final READY_STATE_OPENED:I = 0x1

.field public static final READY_STATE_UNSENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TiHTTPClient"

.field private static final TITANIUM_ID_HEADER:Ljava/lang/String; = "X-Titanium-Id"

.field private static final TITANIUM_USER_AGENT:Ljava/lang/String;

.field private static final XML_DECLARATION_TAG_REGEX:Ljava/lang/String; = "encoding=[\"\']([^\"\']*)[\"\']"

.field private static cookieManager:Ljava/net/CookieManager;

.field private static httpClientThreadCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private aborted:Z

.field private autoEncodeUrl:Z

.field private autoRedirect:Z

.field private charset:Ljava/lang/String;

.field private client:Ljava/net/HttpURLConnection;

.field private clientThread:Ljava/lang/Thread;

.field private connected:Z

.field private contentEncoding:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private data:Ljava/lang/Object;

.field private keyManagers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/net/ssl/X509KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private mURL:Ljava/net/URL;

.field private maxBufferSize:J

.field private method:Ljava/lang/String;

.field private needMultipart:Z

.field private nvPairs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/network/httpurlconnection/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private parts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lti/modules/titanium/network/httpurlconnection/ContentBody;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Lorg/appcelerator/kroll/KrollProxy;

.field private readyState:I

.field private redirectedLocation:Ljava/lang/String;

.field protected requestHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseData:Lorg/appcelerator/titanium/TiBlob;

.field private responseFile:Lorg/appcelerator/titanium/io/TiFile;

.field protected responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private responseOut:Ljava/io/OutputStream;

.field private responseText:Ljava/lang/String;

.field private responseXml:Lti/modules/titanium/xml/DocumentProxy;

.field protected securityManager:Lti/modules/titanium/network/SecurityManagerProtocol;

.field private status:I

.field private statusText:Ljava/lang/String;

.field private timeout:I

.field private tlsVersion:I

.field private tmpFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private trustManagers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/net/ssl/X509TrustManager;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Landroid/net/Uri;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Appcelerator Titanium/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; Android API Level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lti/modules/titanium/network/TiHTTPClient;->TITANIUM_USER_AGENT:Ljava/lang/String;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF_8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ISO_8859_1"

    aput-object v2, v0, v1

    sput-object v0, Lti/modules/titanium/network/TiHTTPClient;->FALLBACK_CHARSETS:[Ljava/lang/String;

    .line 134
    invoke-static {}, Lti/modules/titanium/network/NetworkModule;->getCookieManagerInstance()Ljava/net/CookieManager;

    move-result-object v0

    sput-object v0, Lti/modules/titanium/network/TiHTTPClient;->cookieManager:Ljava/net/CookieManager;

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lti/modules/titanium/network/TiHTTPClient;->timeout:I

    .line 122
    iput-boolean v2, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    .line 123
    iput-boolean v2, p0, Lti/modules/titanium/network/TiHTTPClient;->autoRedirect:Z

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->tmpFiles:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->trustManagers:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->keyManagers:Ljava/util/ArrayList;

    .line 132
    iput v1, p0, Lti/modules/titanium/network/TiHTTPClient;->tlsVersion:I

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->requestHeaders:Ljava/util/HashMap;

    .line 381
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 382
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->httpClientThreadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lti/modules/titanium/network/TiHTTPClient;->httpClientThreadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 385
    :cond_0
    iput v1, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    .line 386
    const-string v0, ""

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    .line 387
    iput-boolean v1, p0, Lti/modules/titanium/network/TiHTTPClient;->connected:Z

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;

    .line 389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    .line 390
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    const-string v1, "ti.android.httpclient.maxbuffersize"

    const/high16 v2, 0x80000

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lti/modules/titanium/network/TiHTTPClient;->maxBufferSize:J

    .line 392
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/network/TiHTTPClient;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 84
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->aborted:Z

    return v0
.end method

.method static synthetic access$100(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 84
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->mURL:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$1000(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/network/TiHTTPClient;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    return-void
.end method

.method static synthetic access$102(Lti/modules/titanium/network/TiHTTPClient;Ljava/net/URL;)Ljava/net/URL;
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Ljava/net/URL;

    .prologue
    .line 84
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->mURL:Ljava/net/URL;

    return-object p1
.end method

.method static synthetic access$1100(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 84
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lti/modules/titanium/network/TiHTTPClient;Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lti/modules/titanium/network/TiHTTPClient;->handleResponse(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method static synthetic access$1302(Lti/modules/titanium/network/TiHTTPClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lti/modules/titanium/network/TiHTTPClient;->connected:Z

    return p1
.end method

.method static synthetic access$1400(Lti/modules/titanium/network/TiHTTPClient;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 84
    invoke-direct {p0}, Lti/modules/titanium/network/TiHTTPClient;->deleteTmpFiles()V

    return-void
.end method

.method static synthetic access$1502(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 84
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->clientThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1600(Lti/modules/titanium/network/TiHTTPClient;)Lorg/appcelerator/kroll/KrollProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 84
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    return-object v0
.end method

.method static synthetic access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 84
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->data:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 84
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 84
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic access$302(Lti/modules/titanium/network/TiHTTPClient;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 84
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method static synthetic access$400(Lti/modules/titanium/network/TiHTTPClient;ZLjavax/net/ssl/HttpsURLConnection;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljavax/net/ssl/HttpsURLConnection;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/network/TiHTTPClient;->setUpSSL(ZLjavax/net/ssl/HttpsURLConnection;)V

    return-void
.end method

.method static synthetic access$500(Lti/modules/titanium/network/TiHTTPClient;)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 84
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->timeout:I

    return v0
.end method

.method static synthetic access$600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 84
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 84
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lti/modules/titanium/network/TiHTTPClient;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 84
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z

    return v0
.end method

.method private addTitaniumFileAsPostData(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    .line 842
    :try_start_0
    move-object/from16 v0, p2

    instance-of v12, v0, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-eqz v12, :cond_0

    move-object/from16 v0, p2

    instance-of v12, v0, Lorg/appcelerator/titanium/io/TiResourceFile;

    if-nez v12, :cond_0

    .line 843
    move-object/from16 v0, p2

    check-cast v0, Lorg/appcelerator/titanium/io/TiBaseFile;

    move-object v2, v0

    .line 844
    .local v2, "baseFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    new-instance v4, Lti/modules/titanium/network/httpurlconnection/FileBody;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v12, v13}, Lti/modules/titanium/network/httpurlconnection/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 845
    .local v4, "body":Lti/modules/titanium/network/httpurlconnection/FileBody;
    iget-object v12, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v11, v12

    .line 888
    .end local v2    # "baseFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v4    # "body":Lti/modules/titanium/network/httpurlconnection/FileBody;
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return v11

    .line 848
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p2

    instance-of v12, v0, Lorg/appcelerator/titanium/TiBlob;

    if-nez v12, :cond_1

    move-object/from16 v0, p2

    instance-of v12, v0, Lorg/appcelerator/titanium/io/TiResourceFile;

    if-eqz v12, :cond_4

    .line 850
    :cond_1
    move-object/from16 v0, p2

    instance-of v12, v0, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v12, :cond_2

    .line 851
    move-object/from16 v0, p2

    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    move-object v3, v0

    .line 855
    .end local p2    # "value":Ljava/lang/Object;
    .local v3, "blob":Lorg/appcelerator/titanium/TiBlob;
    :goto_1
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v9

    .line 856
    .local v9, "mimeType":Ljava/lang/String;
    const-string v12, "tixhr"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "txt"

    invoke-static {v9, v14}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getFileExtensionFromMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 857
    .local v10, "tmpFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 858
    .local v6, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiBlob;->getType()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_3

    .line 859
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    new-instance v13, Landroid/util/Base64OutputStream;

    const/4 v14, 0x0

    invoke-direct {v13, v6, v14}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-static {v12, v13}, Lorg/appcelerator/titanium/io/TiBaseFile;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 863
    :goto_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 865
    iget-object v12, p0, Lti/modules/titanium/network/TiHTTPClient;->tmpFiles:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    new-instance v4, Lti/modules/titanium/network/httpurlconnection/FileBody;

    invoke-direct {v4, v10, v9}, Lti/modules/titanium/network/httpurlconnection/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 868
    .restart local v4    # "body":Lti/modules/titanium/network/httpurlconnection/FileBody;
    iget-object v12, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v11, v12

    goto :goto_0

    .line 853
    .end local v3    # "blob":Lorg/appcelerator/titanium/TiBlob;
    .end local v4    # "body":Lti/modules/titanium/network/httpurlconnection/FileBody;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v10    # "tmpFile":Ljava/io/File;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    check-cast p2, Lorg/appcelerator/titanium/io/TiResourceFile;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Lorg/appcelerator/titanium/io/TiResourceFile;->read()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    .restart local v3    # "blob":Lorg/appcelerator/titanium/TiBlob;
    goto :goto_1

    .line 861
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "mimeType":Ljava/lang/String;
    .restart local v10    # "tmpFile":Ljava/io/File;
    :cond_3
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 885
    .end local v3    # "blob":Lorg/appcelerator/titanium/TiBlob;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v10    # "tmpFile":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 886
    .local v5, "e":Ljava/io/IOException;
    const-string v12, "TiHTTPClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error adding post data ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 870
    .end local v5    # "e":Ljava/io/IOException;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    :try_start_1
    move-object/from16 v0, p2

    instance-of v12, v0, Ljava/util/HashMap;

    if-eqz v12, :cond_5

    .line 872
    check-cast p2, Ljava/util/HashMap;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Lorg/appcelerator/titanium/util/TiConvert;->toJSON(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v8

    .line 873
    .local v8, "jsonObject":Lorg/json/JSONObject;
    new-instance v7, Lti/modules/titanium/network/httpurlconnection/JsonBody;

    const/4 v12, 0x0

    invoke-direct {v7, v8, v12}, Lti/modules/titanium/network/httpurlconnection/JsonBody;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 874
    .local v7, "jsonBody":Lti/modules/titanium/network/httpurlconnection/JsonBody;
    iget-object v12, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    invoke-virtual {v7}, Lti/modules/titanium/network/httpurlconnection/JsonBody;->getContentLength()J

    move-result-wide v12

    long-to-int v11, v12

    goto/16 :goto_0

    .line 877
    .end local v7    # "jsonBody":Lti/modules/titanium/network/httpurlconnection/JsonBody;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    if-eqz p2, :cond_6

    .line 878
    const-string v12, "TiHTTPClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is a "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 881
    :cond_6
    const-string v12, "TiHTTPClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is null"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private createFileResponseData(Z)Lorg/appcelerator/titanium/io/TiFile;
    .locals 8
    .param p1, "dumpResponseOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 255
    const/4 v4, 0x0

    .line 256
    .local v4, "tiFile":Lorg/appcelerator/titanium/io/TiFile;
    const/4 v3, 0x0

    .line 257
    .local v3, "outFile":Ljava/io/File;
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseFile:Lorg/appcelerator/titanium/io/TiFile;

    if-eqz v5, :cond_0

    .line 258
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->responseFile:Lorg/appcelerator/titanium/io/TiFile;

    .line 259
    invoke-virtual {v4}, Lorg/appcelerator/titanium/io/TiFile;->getFile()Ljava/io/File;

    move-result-object v3

    .line 261
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    .line 263
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 264
    .local v0, "app":Lorg/appcelerator/titanium/TiApplication;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getTempFileHelper()Lorg/appcelerator/kroll/util/TiTempFileHelper;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->excludeFileOnCleanup(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v0    # "app":Lorg/appcelerator/titanium/TiApplication;
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 277
    const-string v5, "tihttp"

    const-string v6, "tmp"

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/io/TiFileFactory;->createDataFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 278
    new-instance v4, Lorg/appcelerator/titanium/io/TiFile;

    .end local v4    # "tiFile":Lorg/appcelerator/titanium/io/TiFile;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, v7}, Lorg/appcelerator/titanium/io/TiFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 281
    .restart local v4    # "tiFile":Lorg/appcelerator/titanium/io/TiFile;
    :cond_1
    if-eqz p1, :cond_2

    .line 282
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    .line 283
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([B)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lorg/appcelerator/titanium/io/TiFile;->write(Lorg/appcelerator/titanium/TiBlob;Z)V

    .line 285
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    .line 286
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    .line 287
    return-object v4

    .line 267
    :catch_0
    move-exception v2

    .line 268
    .local v2, "e":Ljava/io/FileNotFoundException;
    const/4 v5, 0x0

    iput-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseFile:Lorg/appcelerator/titanium/io/TiFile;

    .line 269
    const/4 v4, 0x0

    .line 270
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 271
    const-string v5, "TiHTTPClient"

    const-string v6, "Unable to create / write to the response file. Will write the response data to the internal data directory."

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private decodeResponseData(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 441
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 448
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 449
    .local v2, "decoder":Ljava/nio/charset/CharsetDecoder;
    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 452
    .local v4, "in":Ljava/nio/ByteBuffer;
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 453
    .local v1, "decodedText":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 460
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .end local v1    # "decodedText":Ljava/nio/CharBuffer;
    .end local v2    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v4    # "in":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v5

    .line 443
    :catch_0
    move-exception v3

    .line 444
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "TiHTTPClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find charset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "charset":Ljava/nio/charset/Charset;
    .restart local v2    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .restart local v4    # "in":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v3

    .line 456
    .local v3, "e":Ljava/nio/charset/CharacterCodingException;
    goto :goto_0

    .line 458
    .end local v3    # "e":Ljava/nio/charset/CharacterCodingException;
    :catch_2
    move-exception v3

    .line 459
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    const-string v6, "TiHTTPClient"

    const-string v7, "Not enough memory to decode response data."

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteTmpFiles()V
    .locals 3

    .prologue
    .line 1329
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->tmpFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1337
    :goto_0
    return-void

    .line 1333
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->tmpFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1334
    .local v1, "tmpFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1336
    .end local v1    # "tmpFile":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->tmpFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private detectResponseDataEncoding()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 472
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 473
    const-string v5, "TiHTTPClient"

    const-string v6, "Could not detect charset, no content type specified."

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    :goto_0
    return-object v4

    .line 476
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    const-string v6, "xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 477
    const-string v2, "encoding=[\"\']([^\"\']*)[\"\']"

    .line 487
    .local v2, "regex":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiBlob;->toString()Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "responseSequence":Ljava/lang/CharSequence;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 489
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 490
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 491
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 479
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    .end local v2    # "regex":Ljava/lang/String;
    .end local v3    # "responseSequence":Ljava/lang/CharSequence;
    :cond_2
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    const-string v6, "html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 480
    const-string v2, "charset=([^\"\']*)"

    .restart local v2    # "regex":Ljava/lang/String;
    goto :goto_1

    .line 483
    .end local v2    # "regex":Ljava/lang/String;
    :cond_3
    const-string v5, "TiHTTPClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot detect charset, unknown content type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 826
    if-nez p2, :cond_0

    .line 827
    new-instance p2, Lorg/appcelerator/kroll/KrollDict;

    .end local p2    # "data":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {p2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 830
    .restart local p2    # "data":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    const-string v0, "source"

    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {p2, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/kroll/KrollProxy;->callPropertyAsync(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    return-void
.end method

.method private finishedReceivingEntityData(J)V
    .locals 3
    .param p1, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    instance-of v1, v1, Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_0

    .line 335
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 336
    .local v0, "byteStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    .line 338
    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 339
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    .line 340
    return-void
.end method

.method private handleEntityData([BIJJ)V
    .locals 15
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .param p3, "totalSize"    # J
    .param p5, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    if-nez v5, :cond_0

    .line 294
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseFile:Lorg/appcelerator/titanium/io/TiFile;

    if-eqz v5, :cond_4

    .line 295
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lti/modules/titanium/network/TiHTTPClient;->createFileResponseData(Z)Lorg/appcelerator/titanium/io/TiFile;

    .line 304
    :cond_0
    :goto_0
    iget-wide v10, p0, Lti/modules/titanium/network/TiHTTPClient;->maxBufferSize:J

    cmp-long v5, p3, v10

    if-lez v5, :cond_1

    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    instance-of v5, v5, Ljava/io/ByteArrayOutputStream;

    if-eqz v5, :cond_1

    .line 307
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lti/modules/titanium/network/TiHTTPClient;->createFileResponseData(Z)Lorg/appcelerator/titanium/io/TiFile;

    .line 310
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v5, v0, v10, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 312
    new-instance v4, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v4}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 313
    .local v4, "callbackData":Lorg/appcelerator/kroll/KrollDict;
    const-string v5, "totalCount"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v5, "totalSize"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v5, "size"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    move/from16 v0, p2

    new-array v3, v0, [B

    .line 318
    .local v3, "blobData":[B
    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v5, v3, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    invoke-static {v3, v5}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v2

    .line 321
    .local v2, "blob":Lorg/appcelerator/titanium/TiBlob;
    const-string v5, "blob"

    invoke-virtual {v4, v5, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    move-wide/from16 v0, p3

    long-to-double v10, v0

    move-wide/from16 v0, p5

    long-to-double v12, v0

    div-double v6, v10, v12

    .line 324
    .local v6, "progress":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v6, v10

    if-gtz v5, :cond_2

    const-wide/16 v10, 0x0

    cmpg-double v5, v6, v10

    if-gez v5, :cond_3

    .line 325
    :cond_2
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 327
    :cond_3
    const-string v5, "progress"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v5, "ondatastream"

    invoke-direct {p0, v5, v4}, Lti/modules/titanium/network/TiHTTPClient;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 330
    return-void

    .line 297
    .end local v2    # "blob":Lorg/appcelerator/titanium/TiBlob;
    .end local v3    # "blobData":[B
    .end local v4    # "callbackData":Lorg/appcelerator/kroll/KrollDict;
    .end local v6    # "progress":D
    :cond_4
    iget-wide v10, p0, Lti/modules/titanium/network/TiHTTPClient;->maxBufferSize:J

    cmp-long v5, p5, v10

    if-lez v5, :cond_5

    .line 298
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lti/modules/titanium/network/TiHTTPClient;->createFileResponseData(Z)Lorg/appcelerator/titanium/io/TiFile;

    goto/16 :goto_0

    .line 300
    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v5, p5, v10

    if-lez v5, :cond_6

    move-wide/from16 v8, p5

    .line 301
    .local v8, "streamSize":J
    :goto_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    long-to-int v10, v8

    invoke-direct {v5, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    goto/16 :goto_0

    .line 300
    .end local v8    # "streamSize":J
    :cond_6
    const-wide/16 v8, 0x200

    goto :goto_1
.end method

.method private handleResponse(Ljava/net/HttpURLConnection;)V
    .locals 28
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lti/modules/titanium/network/TiHTTPClient;->connected:Z

    .line 155
    if-eqz p1, :cond_8

    .line 156
    move-object/from16 v11, p0

    .line 158
    .local v11, "c":Lti/modules/titanium/network/TiHTTPClient;
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v8, v3

    .line 159
    .local v8, "contentLength":J
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lti/modules/titanium/network/TiHTTPClient;->setReadyState(I)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lti/modules/titanium/network/TiHTTPClient;->setStatus(I)V

    .line 162
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lti/modules/titanium/network/TiHTTPClient;->setStatusText(Ljava/lang/String;)V

    .line 163
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lti/modules/titanium/network/TiHTTPClient;->setReadyState(I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v25, "file"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, v11, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v25, "file"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 167
    .local v15, "f":Ljava/lang/Object;
    instance-of v3, v15, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object/from16 v16, v15

    .line 168
    check-cast v16, Ljava/lang/String;

    .line 169
    .local v16, "fileName":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v10

    .line 170
    .local v10, "baseFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    instance-of v3, v10, Lorg/appcelerator/titanium/io/TiFile;

    if-eqz v3, :cond_0

    .line 171
    check-cast v10, Lorg/appcelerator/titanium/io/TiFile;

    .end local v10    # "baseFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    move-object/from16 v0, p0

    iput-object v10, v0, Lti/modules/titanium/network/TiHTTPClient;->responseFile:Lorg/appcelerator/titanium/io/TiFile;

    .line 174
    .end local v16    # "fileName":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/network/TiHTTPClient;->responseFile:Lorg/appcelerator/titanium/io/TiFile;

    if-nez v3, :cond_1

    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    const-string v3, "TiHTTPClient"

    const-string v25, "Ignore the provided response file because it is not valid / writable."

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v15    # "f":Ljava/lang/Object;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v13

    .line 181
    .local v13, "currentLocation":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lti/modules/titanium/network/TiHTTPClient;->autoRedirect:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/network/TiHTTPClient;->mURL:Ljava/net/URL;

    invoke-virtual {v3, v13}, Ljava/net/URL;->sameFile(Ljava/net/URL;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 182
    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lti/modules/titanium/network/TiHTTPClient;->redirectedLocation:Ljava/lang/String;

    .line 189
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lti/modules/titanium/network/TiHTTPClient;->responseHeaders:Ljava/util/Map;

    .line 191
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lti/modules/titanium/network/TiHTTPClient;->contentEncoding:Ljava/lang/String;

    .line 193
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    .line 195
    const-string v12, ""

    .line 196
    .local v12, "charset":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    const-string v25, ";"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 198
    .local v24, "values":[Ljava/lang/String;
    move-object/from16 v2, v24

    .local v2, "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    aget-object v23, v2, v17

    .line 199
    .local v23, "value":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 200
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v25, "charset="

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 201
    const-string v3, "charset="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 198
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 207
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v21    # "len$":I
    .end local v23    # "value":Ljava/lang/String;
    .end local v24    # "values":[Ljava/lang/String;
    :cond_4
    const-string v3, ""

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 208
    const-string v12, "UTF-8"

    .line 210
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    .line 212
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    .line 215
    .local v22, "status":I
    const/16 v3, 0x190

    move/from16 v0, v22

    if-lt v0, v3, :cond_9

    .line 216
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v18

    .line 221
    .local v18, "in":Ljava/io/InputStream;
    :goto_1
    const-string v3, "gzip"

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient;->contentEncoding:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 222
    new-instance v19, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v18    # "in":Ljava/io/InputStream;
    .local v19, "in":Ljava/io/InputStream;
    move-object/from16 v18, v19

    .line 225
    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v18    # "in":Ljava/io/InputStream;
    :cond_6
    new-instance v20, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 227
    .local v20, "is":Ljava/io/InputStream;
    if-eqz v20, :cond_8

    .line 228
    const-string v3, "TiHTTPClient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Content length: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v26, "DEBUG_MODE"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v3, v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v5, 0x0

    .line 230
    .local v5, "count":I
    const-wide/16 v6, 0x0

    .line 231
    .local v6, "totalSize":J
    const/16 v3, 0x1000

    new-array v4, v3, [B

    .line 232
    .local v4, "buf":[B
    const-string v3, "TiHTTPClient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Available: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->available()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v26, "DEBUG_MODE"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v3, v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v3, -0x1

    if-eq v5, v3, :cond_7

    .line 235
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lti/modules/titanium/network/TiHTTPClient;->aborted:Z

    if-eqz v3, :cond_a

    .line 246
    :cond_7
    const-wide/16 v26, 0x0

    cmp-long v3, v6, v26

    if-lez v3, :cond_8

    .line 247
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lti/modules/titanium/network/TiHTTPClient;->finishedReceivingEntityData(J)V

    .line 251
    .end local v4    # "buf":[B
    .end local v5    # "count":I
    .end local v6    # "totalSize":J
    .end local v8    # "contentLength":J
    .end local v11    # "c":Lti/modules/titanium/network/TiHTTPClient;
    .end local v12    # "charset":Ljava/lang/String;
    .end local v13    # "currentLocation":Ljava/net/URL;
    .end local v18    # "in":Ljava/io/InputStream;
    .end local v20    # "is":Ljava/io/InputStream;
    .end local v22    # "status":I
    :cond_8
    return-void

    .line 218
    .restart local v8    # "contentLength":J
    .restart local v11    # "c":Lti/modules/titanium/network/TiHTTPClient;
    .restart local v12    # "charset":Ljava/lang/String;
    .restart local v13    # "currentLocation":Ljava/net/URL;
    .restart local v22    # "status":I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    .restart local v18    # "in":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 238
    .restart local v4    # "buf":[B
    .restart local v5    # "count":I
    .restart local v6    # "totalSize":J
    .restart local v20    # "is":Ljava/io/InputStream;
    :cond_a
    int-to-long v0, v5

    move-wide/from16 v26, v0

    add-long v6, v6, v26

    move-object/from16 v3, p0

    .line 240
    :try_start_0
    invoke-direct/range {v3 .. v9}, Lti/modules/titanium/network/TiHTTPClient;->handleEntityData([BIJJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 241
    :catch_0
    move-exception v14

    .line 242
    .local v14, "e":Ljava/io/IOException;
    const-string v3, "TiHTTPClient"

    const-string v25, "Error handling entity data"

    move-object/from16 v0, v25

    invoke-static {v3, v0, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private setUpSSL(ZLjavax/net/ssl/HttpsURLConnection;)V
    .locals 7
    .param p1, "validating"    # Z
    .param p2, "securedConnection"    # Ljavax/net/ssl/HttpsURLConnection;

    .prologue
    .line 893
    const/4 v2, 0x0

    .line 895
    .local v2, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->securityManager:Lti/modules/titanium/network/SecurityManagerProtocol;

    if-eqz v4, :cond_0

    .line 896
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->securityManager:Lti/modules/titanium/network/SecurityManagerProtocol;

    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-interface {v4, v5}, Lti/modules/titanium/network/SecurityManagerProtocol;->willHandleURL(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 897
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->securityManager:Lti/modules/titanium/network/SecurityManagerProtocol;

    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    check-cast v4, Lti/modules/titanium/network/HTTPClientProxy;

    invoke-interface {v5, v4}, Lti/modules/titanium/network/SecurityManagerProtocol;->getTrustManagers(Lti/modules/titanium/network/HTTPClientProxy;)[Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    .line 898
    .local v3, "trustManagerArray":[Ljavax/net/ssl/TrustManager;
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->securityManager:Lti/modules/titanium/network/SecurityManagerProtocol;

    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    check-cast v4, Lti/modules/titanium/network/HTTPClientProxy;

    invoke-interface {v5, v4}, Lti/modules/titanium/network/SecurityManagerProtocol;->getKeyManagers(Lti/modules/titanium/network/HTTPClientProxy;)[Ljavax/net/ssl/X509KeyManager;

    move-result-object v1

    .line 901
    .local v1, "keyManagerArray":[Ljavax/net/ssl/KeyManager;
    :try_start_0
    new-instance v2, Lti/modules/titanium/network/TiSocketFactory;

    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    iget v4, p0, Lti/modules/titanium/network/TiHTTPClient;->tlsVersion:I

    invoke-direct {v2, v1, v3, v4}, Lti/modules/titanium/network/TiSocketFactory;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    .end local v1    # "keyManagerArray":[Ljavax/net/ssl/KeyManager;
    .end local v3    # "trustManagerArray":[Ljavax/net/ssl/TrustManager;
    .restart local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :cond_0
    :goto_0
    if-nez v2, :cond_4

    .line 909
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->trustManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->keyManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 910
    :cond_1
    const/4 v3, 0x0

    .line 911
    .restart local v3    # "trustManagerArray":[Ljavax/net/ssl/TrustManager;
    const/4 v1, 0x0

    .line 913
    .restart local v1    # "keyManagerArray":[Ljavax/net/ssl/KeyManager;
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->trustManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 914
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->trustManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljavax/net/ssl/X509TrustManager;

    .line 915
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->trustManagers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "trustManagerArray":[Ljavax/net/ssl/TrustManager;
    check-cast v3, [Ljavax/net/ssl/TrustManager;

    .line 918
    .restart local v3    # "trustManagerArray":[Ljavax/net/ssl/TrustManager;
    :cond_2
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->keyManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 919
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->keyManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljavax/net/ssl/X509KeyManager;

    .line 920
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->keyManagers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "keyManagerArray":[Ljavax/net/ssl/KeyManager;
    check-cast v1, [Ljavax/net/ssl/KeyManager;

    .line 924
    .restart local v1    # "keyManagerArray":[Ljavax/net/ssl/KeyManager;
    :cond_3
    :try_start_1
    new-instance v2, Lti/modules/titanium/network/TiSocketFactory;

    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    iget v4, p0, Lti/modules/titanium/network/TiHTTPClient;->tlsVersion:I

    invoke-direct {v2, v1, v3, v4}, Lti/modules/titanium/network/TiSocketFactory;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 947
    .end local v1    # "keyManagerArray":[Ljavax/net/ssl/KeyManager;
    .end local v3    # "trustManagerArray":[Ljavax/net/ssl/TrustManager;
    .restart local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :cond_4
    :goto_1
    if-eqz v2, :cond_9

    .line 948
    invoke-virtual {p2, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 953
    :cond_5
    :goto_2
    if-nez p1, :cond_6

    .line 954
    new-instance v4, Lti/modules/titanium/network/httpurlconnection/NullHostNameVerifier;

    invoke-direct {v4}, Lti/modules/titanium/network/httpurlconnection/NullHostNameVerifier;-><init>()V

    invoke-virtual {p2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 959
    :cond_6
    return-void

    .line 902
    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v1    # "keyManagerArray":[Ljavax/net/ssl/KeyManager;
    .restart local v3    # "trustManagerArray":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "TiHTTPClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating SSLSocketFactory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/4 v2, 0x0

    .restart local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_0

    .line 925
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :catch_1
    move-exception v0

    .line 926
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "TiHTTPClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating SSLSocketFactory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const/4 v2, 0x0

    .restart local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_1

    .line 929
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "keyManagerArray":[Ljavax/net/ssl/KeyManager;
    .end local v3    # "trustManagerArray":[Ljavax/net/ssl/TrustManager;
    :cond_7
    if-nez p1, :cond_8

    .line 930
    const/4 v4, 0x1

    new-array v3, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lti/modules/titanium/network/NonValidatingTrustManager;

    invoke-direct {v5}, Lti/modules/titanium/network/NonValidatingTrustManager;-><init>()V

    aput-object v5, v3, v4

    .line 932
    .restart local v3    # "trustManagerArray":[Ljavax/net/ssl/TrustManager;
    :try_start_2
    new-instance v2, Lti/modules/titanium/network/TiSocketFactory;

    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v4, 0x0

    iget v5, p0, Lti/modules/titanium/network/TiHTTPClient;->tlsVersion:I

    invoke-direct {v2, v4, v3, v5}, Lti/modules/titanium/network/TiSocketFactory;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .restart local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_1

    .line 933
    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :catch_2
    move-exception v0

    .line 934
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "TiHTTPClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating SSLSocketFactory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/4 v2, 0x0

    .restart local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    goto/16 :goto_1

    .line 939
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "trustManagerArray":[Ljavax/net/ssl/TrustManager;
    :cond_8
    :try_start_3
    new-instance v2, Lti/modules/titanium/network/TiSocketFactory;

    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lti/modules/titanium/network/TiHTTPClient;->tlsVersion:I

    invoke-direct {v2, v4, v5, v6}, Lti/modules/titanium/network/TiSocketFactory;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .restart local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    goto/16 :goto_1

    .line 940
    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :catch_3
    move-exception v0

    .line 941
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "TiHTTPClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating SSLSocketFactory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v2, 0x0

    .restart local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    goto/16 :goto_1

    .line 949
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    if-nez p1, :cond_5

    .line 950
    new-instance v4, Lti/modules/titanium/network/NonValidatingSSLSocketFactory;

    invoke-direct {v4}, Lti/modules/titanium/network/NonValidatingSSLSocketFactory;-><init>()V

    invoke-virtual {p2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_2
.end method

.method private titaniumFileAsPutData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 968
    instance-of v7, p1, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-eqz v7, :cond_1

    instance-of v7, p1, Lorg/appcelerator/titanium/io/TiResourceFile;

    if-nez v7, :cond_1

    move-object v1, p1

    .line 969
    check-cast v1, Lorg/appcelerator/titanium/io/TiBaseFile;

    .line 970
    .local v1, "baseFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    new-instance p1, Lti/modules/titanium/network/httpurlconnection/FileEntity;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p1, v7, v8}, Lti/modules/titanium/network/httpurlconnection/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 991
    .end local v1    # "baseFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_0
    :goto_0
    return-object p1

    .line 971
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v7, p1, Lorg/appcelerator/titanium/TiBlob;

    if-nez v7, :cond_2

    instance-of v7, p1, Lorg/appcelerator/titanium/io/TiResourceFile;

    if-eqz v7, :cond_0

    .line 974
    :cond_2
    :try_start_0
    instance-of v7, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v7, :cond_3

    .line 975
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    move-object v2, v0

    .line 979
    .local v2, "blob":Lorg/appcelerator/titanium/TiBlob;
    :goto_1
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 980
    .local v5, "mimeType":Ljava/lang/String;
    const-string v7, "tixhr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "txt"

    invoke-static {v5, v9}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getFileExtensionFromMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 981
    .local v6, "tmpFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 982
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 983
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 985
    iget-object v7, p0, Lti/modules/titanium/network/TiHTTPClient;->tmpFiles:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    new-instance v7, Lti/modules/titanium/network/httpurlconnection/FileEntity;

    invoke-direct {v7, v6, v5}, Lti/modules/titanium/network/httpurlconnection/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v7

    goto :goto_0

    .line 977
    .end local v2    # "blob":Lorg/appcelerator/titanium/TiBlob;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "tmpFile":Ljava/io/File;
    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/titanium/io/TiResourceFile;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/appcelerator/titanium/io/TiResourceFile;->read()Lorg/appcelerator/titanium/TiBlob;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2    # "blob":Lorg/appcelerator/titanium/TiBlob;
    goto :goto_1

    .line 987
    .end local v2    # "blob":Lorg/appcelerator/titanium/TiBlob;
    :catch_0
    move-exception v3

    .line 988
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "TiHTTPClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error adding put data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 598
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    if-lez v0, :cond_1

    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->aborted:Z

    .line 600
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 602
    iput-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Ljava/net/HttpURLConnection;

    .line 606
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "disposehandle"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 608
    :cond_1
    return-void
.end method

.method protected addKeyManager(Ljavax/net/ssl/X509KeyManager;)V
    .locals 3
    .param p1, "manager"    # Ljavax/net/ssl/X509KeyManager;

    .prologue
    .line 1384
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1385
    const-string v0, "TiHTTPClient"

    const-string v1, "addKeyManager method is deprecated. Use the securityManager property on the HttpClient to define custom SSL Contexts"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->keyManagers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1388
    return-void
.end method

.method public addPostData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 810
    if-nez p2, :cond_0

    .line 811
    const-string p2, ""

    .line 813
    :cond_0
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    new-instance v1, Lti/modules/titanium/network/httpurlconnection/StringBody;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v1, p2, v2, v3}, Lti/modules/titanium/network/httpurlconnection/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    :goto_0
    return-void

    .line 821
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;

    new-instance v1, Lti/modules/titanium/network/httpurlconnection/NameValuePair;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lti/modules/titanium/network/httpurlconnection/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addTrustManager(Ljavax/net/ssl/X509TrustManager;)V
    .locals 3
    .param p1, "manager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 1392
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    const-string v0, "TiHTTPClient"

    const-string v1, "addTrustManager method is deprecated. Use the securityManager property on the HttpClient to define custom SSL Contexts"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->trustManagers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1396
    return-void
.end method

.method public clearCookies(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 632
    new-instance v2, Ljava/util/ArrayList;

    sget-object v7, Lti/modules/titanium/network/TiHTTPClient;->cookieManager:Ljava/net/CookieManager;

    invoke-virtual {v7}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v7

    invoke-interface {v7}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 633
    .local v2, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    sget-object v7, Lti/modules/titanium/network/TiHTTPClient;->cookieManager:Ljava/net/CookieManager;

    invoke-virtual {v7}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v7

    invoke-interface {v7}, Ljava/net/CookieStore;->removeAll()Z

    .line 634
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 636
    .local v5, "lower_url":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 637
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "cookieDomain":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 641
    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .local v6, "uriDomain":Ljava/net/URI;
    :goto_1
    sget-object v7, Lti/modules/titanium/network/TiHTTPClient;->cookieManager:Ljava/net/CookieManager;

    invoke-virtual {v7}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v7

    invoke-interface {v7, v6, v0}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto :goto_0

    .line 642
    .end local v6    # "uriDomain":Ljava/net/URI;
    :catch_0
    move-exception v3

    .line 643
    .local v3, "e":Ljava/net/URISyntaxException;
    const/4 v6, 0x0

    .restart local v6    # "uriDomain":Ljava/net/URI;
    goto :goto_1

    .line 648
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v1    # "cookieDomain":Ljava/lang/String;
    .end local v3    # "e":Ljava/net/URISyntaxException;
    .end local v6    # "uriDomain":Ljava/net/URI;
    :cond_1
    return-void
.end method

.method public getAllResponseHeaders()Ljava/lang/String;
    .locals 11

    .prologue
    .line 612
    const-string v6, ""

    .line 613
    .local v6, "result":Ljava/lang/String;
    iget-object v9, p0, Lti/modules/titanium/network/TiHTTPClient;->responseHeaders:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 614
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v9, 0x100

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 615
    .local v7, "sb":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lti/modules/titanium/network/TiHTTPClient;->responseHeaders:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 617
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 618
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 619
    .local v2, "headerName":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 621
    .local v3, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 622
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 625
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "headerName":Ljava/lang/String;
    .end local v3    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 627
    .end local v1    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-object v6
.end method

.method protected getAutoEncodeUrl()Z
    .locals 1

    .prologue
    .line 1369
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    return v0
.end method

.method protected getAutoRedirect()Z
    .locals 1

    .prologue
    .line 1379
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->autoRedirect:Z

    return v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->redirectedLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->redirectedLocation:Ljava/lang/String;

    .line 1344
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getReadyState()I
    .locals 1

    .prologue
    .line 396
    monitor-enter p0

    .line 397
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 398
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    return v0

    .line 398
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getResponseData()Lorg/appcelerator/titanium/TiBlob;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "getHeaderName"    # Ljava/lang/String;

    .prologue
    .line 678
    const-string v7, ""

    .line 679
    .local v7, "result":Ljava/lang/String;
    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->responseHeaders:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 680
    const/4 v2, 0x1

    .line 681
    .local v2, "firstPass":Z
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v10, 0x100

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 682
    .local v8, "sb":Ljava/lang/StringBuilder;
    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->responseHeaders:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 683
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 684
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 685
    .local v3, "headerName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 686
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 687
    .local v4, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 688
    .local v9, "value":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 689
    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    :cond_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const/4 v2, 0x0

    .line 693
    goto :goto_0

    .line 696
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "headerName":Ljava/lang/String;
    .end local v4    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 699
    .end local v1    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v2    # "firstPass":Z
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 700
    const-string v10, "TiHTTPClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No value for response header: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "DEBUG_MODE"

    invoke-static {v10, v11, v12}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_4
    return-object v7
.end method

.method public getResponseText()Ljava/lang/String;
    .locals 8

    .prologue
    .line 499
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    if-nez v5, :cond_0

    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    if-nez v5, :cond_1

    .line 500
    :cond_0
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    .line 533
    :goto_0
    return-object v5

    .line 505
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 506
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    invoke-direct {p0, v5}, Lti/modules/titanium/network/TiHTTPClient;->decodeResponseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    .line 507
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 508
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    goto :goto_0

    .line 514
    :cond_2
    invoke-direct {p0}, Lti/modules/titanium/network/TiHTTPClient;->detectResponseDataEncoding()Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "detectedCharset":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 516
    const-string v5, "TiHTTPClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "detected charset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-direct {p0, v2}, Lti/modules/titanium/network/TiHTTPClient;->decodeResponseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    .line 518
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 519
    iput-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    .line 520
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    goto :goto_0

    .line 525
    :cond_3
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->FALLBACK_CHARSETS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v1, v0, v3

    .line 526
    .local v1, "charset":Ljava/lang/String;
    invoke-direct {p0, v1}, Lti/modules/titanium/network/TiHTTPClient;->decodeResponseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    .line 527
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 528
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    goto :goto_0

    .line 525
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 532
    .end local v1    # "charset":Ljava/lang/String;
    :cond_5
    const-string v5, "TiHTTPClient"

    const-string v6, "Could not decode response text."

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResponseXML()Lti/modules/titanium/xml/DocumentProxy;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 544
    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->isBinaryMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-object v2

    .line 549
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient;->responseXml:Lti/modules/titanium/xml/DocumentProxy;

    if-nez v3, :cond_3

    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    if-nez v3, :cond_2

    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 551
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/network/TiHTTPClient;->getResponseText()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 556
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 557
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    invoke-static {v1, v2}, Lti/modules/titanium/xml/XMLModule;->parse(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->responseXml:Lti/modules/titanium/xml/DocumentProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .end local v1    # "text":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->responseXml:Lti/modules/titanium/xml/DocumentProxy;

    goto :goto_0

    .line 560
    .restart local v1    # "text":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {v1}, Lti/modules/titanium/xml/XMLModule;->parse(Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->responseXml:Lti/modules/titanium/xml/DocumentProxy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 563
    .end local v1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TiHTTPClient"

    const-string v3, "Error parsing XML"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->status:I

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->statusText:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 1354
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->connected:Z

    return v0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 709
    const-string v8, "TiHTTPClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "open request method="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DEBUG_MODE"

    invoke-static {v8, v9, v10}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    if-nez p2, :cond_0

    .line 713
    const-string v8, "TiHTTPClient"

    const-string v9, "Unable to open a null URL"

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "URL cannot be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 720
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 721
    .local v4, "lowerCaseUrl":Ljava/lang/String;
    const-string v8, "http://"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "https://"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 722
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 725
    :cond_1
    iget-boolean v8, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    if-eqz v8, :cond_3

    .line 726
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiUrl;->getCleanUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    .line 738
    :goto_0
    iget-boolean v8, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    if-eqz v8, :cond_4

    const-string v8, ".*\\?.*\\%\\d\\d.*$"

    invoke-virtual {p2, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 739
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    .line 745
    :goto_1
    const/4 v8, 0x0

    iput-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->redirectedLocation:Ljava/lang/String;

    .line 746
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    .line 747
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 748
    .local v2, "hostString":Ljava/lang/String;
    const/4 v6, -0x1

    .line 762
    .local v6, "port":I
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 765
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 766
    .local v3, "javaUrl":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 767
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 777
    .end local v3    # "javaUrl":Ljava/net/URL;
    :goto_2
    const-string v8, "TiHTTPClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Instantiating host with hostString=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', port=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', scheme=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DEBUG_MODE"

    invoke-static {v8, v9, v10}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    check-cast v8, Lti/modules/titanium/network/HTTPClientProxy;

    invoke-virtual {v8}, Lti/modules/titanium/network/HTTPClientProxy;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 783
    .local v7, "username":Ljava/lang/String;
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    check-cast v8, Lti/modules/titanium/network/HTTPClientProxy;

    invoke-virtual {v8}, Lti/modules/titanium/network/HTTPClientProxy;->getPassword()Ljava/lang/String;

    move-result-object v5

    .line 784
    .local v5, "password":Ljava/lang/String;
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    check-cast v8, Lti/modules/titanium/network/HTTPClientProxy;

    invoke-virtual {v8}, Lti/modules/titanium/network/HTTPClientProxy;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "domain":Ljava/lang/String;
    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    .line 787
    new-instance v8, Lti/modules/titanium/network/TiAuthenticator;

    invoke-direct {v8, v0, v7, v5}, Lti/modules/titanium/network/TiAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    .line 790
    :cond_2
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lti/modules/titanium/network/TiHTTPClient;->setReadyState(I)V

    .line 791
    const-string v8, "User-Agent"

    sget-object v9, Lti/modules/titanium/network/TiHTTPClient;->TITANIUM_USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lti/modules/titanium/network/TiHTTPClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v8, "twitter.com"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 795
    const-string v8, "X-Requested-With"

    const-string v9, "XMLHttpRequest"

    invoke-virtual {p0, v8, v9}, Lti/modules/titanium/network/TiHTTPClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :goto_3
    return-void

    .line 729
    .end local v0    # "domain":Ljava/lang/String;
    .end local v2    # "hostString":Ljava/lang/String;
    .end local v5    # "password":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v7    # "username":Ljava/lang/String;
    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 742
    :cond_4
    iput-object p2, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    goto/16 :goto_1

    .line 769
    .restart local v2    # "hostString":Ljava/lang/String;
    .restart local v6    # "port":I
    :catch_0
    move-exception v1

    .line 770
    .local v1, "e":Ljava/net/MalformedURLException;
    const-string v8, "TiHTTPClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error attempting to derive Java url from uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 774
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_5
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPort()I

    move-result v6

    goto/16 :goto_2

    .line 798
    .restart local v0    # "domain":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    .restart local v7    # "username":Ljava/lang/String;
    :cond_6
    const-string v8, "TiHTTPClient"

    const-string v9, "Twitter: not sending X-Requested-With header"

    const-string v10, "DEBUG_MODE"

    invoke-static {v8, v9, v10}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public send(Ljava/lang/Object;)V
    .locals 14
    .param p1, "userData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 996
    iput-boolean v2, p0, Lti/modules/titanium/network/TiHTTPClient;->aborted:Z

    .line 999
    const/4 v7, 0x0

    .line 1000
    .local v7, "totalLength":I
    iput-boolean v2, p0, Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z

    .line 1002
    if-eqz p1, :cond_d

    .line 1004
    instance-of v10, p1, Ljava/util/HashMap;

    if-eqz v10, :cond_e

    move-object v0, p1

    .line 1005
    check-cast v0, Ljava/util/HashMap;

    .line 1006
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    const-string v11, "POST"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    const-string v11, "PUT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    const-string v11, "PATCH"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_0
    move v3, v9

    .line 1007
    .local v3, "isPostOrPutOrPatch":Z
    :goto_0
    if-nez v3, :cond_1

    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    const-string v11, "GET"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v2, v9

    .line 1010
    .local v2, "isGet":Z
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1011
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1013
    .local v8, "value":Ljava/lang/Object;
    if-eqz v8, :cond_2

    .line 1015
    instance-of v10, v8, Lorg/appcelerator/titanium/TiFileProxy;

    if-eqz v10, :cond_3

    .line 1016
    check-cast v8, Lorg/appcelerator/titanium/TiFileProxy;

    .end local v8    # "value":Ljava/lang/Object;
    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v8

    .line 1019
    :cond_3
    instance-of v10, v8, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v10, :cond_4

    instance-of v10, v8, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v10, :cond_2

    .line 1020
    :cond_4
    iput-boolean v9, p0, Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z

    .line 1026
    .end local v4    # "key":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    .line 1027
    .local v5, "queryStringAltered":Z
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1028
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1029
    .restart local v8    # "value":Ljava/lang/Object;
    if-eqz v3, :cond_b

    if-eqz v8, :cond_b

    .line 1031
    instance-of v10, v8, Lorg/appcelerator/titanium/TiFileProxy;

    if-eqz v10, :cond_7

    .line 1032
    check-cast v8, Lorg/appcelerator/titanium/TiFileProxy;

    .end local v8    # "value":Ljava/lang/Object;
    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v8

    .line 1035
    :cond_7
    instance-of v10, v8, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v10, :cond_8

    instance-of v10, v8, Lorg/appcelerator/titanium/TiBlob;

    if-nez v10, :cond_8

    instance-of v10, v8, Ljava/util/HashMap;

    if-eqz v10, :cond_a

    .line 1036
    :cond_8
    invoke-direct {p0, v4, v8}, Lti/modules/titanium/network/TiHTTPClient;->addTitaniumFileAsPostData(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v10

    add-int/2addr v7, v10

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isGet":Z
    .end local v3    # "isPostOrPutOrPatch":Z
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "queryStringAltered":Z
    :cond_9
    move v3, v2

    .line 1006
    goto :goto_0

    .line 1039
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "isGet":Z
    .restart local v3    # "isPostOrPutOrPatch":Z
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "queryStringAltered":Z
    :cond_a
    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1040
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {p0, v4, v6}, Lti/modules/titanium/network/TiHTTPClient;->addPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v7, v10

    .line 1042
    goto :goto_1

    .line 1044
    .end local v6    # "str":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_b
    if-eqz v2, :cond_6

    .line 1045
    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    .line 1047
    const/4 v5, 0x1

    goto :goto_1

    .line 1051
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_c
    if-eqz v5, :cond_d

    .line 1052
    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    .line 1069
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isGet":Z
    .end local v3    # "isPostOrPutOrPatch":Z
    .end local v5    # "queryStringAltered":Z
    :cond_d
    :goto_2
    const-string v10, "TiHTTPClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Instantiating http request with method=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' and this url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "DEBUG_MODE"

    invoke-static {v10, v11, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const-string v10, "TiHTTPClient"

    iget-object v11, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    const-string v12, "DEBUG_MODE"

    invoke-static {v10, v11, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    invoke-direct {v11, p0, v7}, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;-><init>(Lti/modules/titanium/network/TiHTTPClient;I)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TiHttpClient-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lti/modules/titanium/network/TiHTTPClient;->httpClientThreadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->clientThread:Ljava/lang/Thread;

    .line 1073
    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->clientThread:Ljava/lang/Thread;

    invoke-virtual {v10, v9}, Ljava/lang/Thread;->setPriority(I)V

    .line 1074
    iget-object v9, p0, Lti/modules/titanium/network/TiHTTPClient;->clientThread:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 1076
    const-string v9, "TiHTTPClient"

    const-string v10, "Leaving send()"

    const-string v11, "DEBUG_MODE"

    invoke-static {v9, v10, v11}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    return-void

    .line 1054
    :cond_e
    instance-of v10, p1, Lorg/appcelerator/titanium/TiFileProxy;

    if-nez v10, :cond_f

    instance-of v10, p1, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v10, :cond_f

    instance-of v10, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v10, :cond_13

    .line 1055
    :cond_f
    move-object v8, p1

    .line 1056
    .restart local v8    # "value":Ljava/lang/Object;
    instance-of v10, v8, Lorg/appcelerator/titanium/TiFileProxy;

    if-eqz v10, :cond_10

    .line 1057
    check-cast v8, Lorg/appcelerator/titanium/TiFileProxy;

    .end local v8    # "value":Ljava/lang/Object;
    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v8

    .line 1059
    :cond_10
    instance-of v10, v8, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v10, :cond_11

    instance-of v10, v8, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v10, :cond_12

    .line 1060
    :cond_11
    invoke-direct {p0, v8}, Lti/modules/titanium/network/TiHTTPClient;->titaniumFileAsPutData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v10}, Lti/modules/titanium/network/TiHTTPClient;->setRawData(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1062
    :cond_12
    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lti/modules/titanium/network/TiHTTPClient;->setRawData(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1065
    :cond_13
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lti/modules/titanium/network/TiHTTPClient;->setRawData(Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method protected setAutoEncodeUrl(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1364
    iput-boolean p1, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    .line 1365
    return-void
.end method

.method protected setAutoRedirect(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1374
    iput-boolean p1, p0, Lti/modules/titanium/network/TiHTTPClient;->autoRedirect:Z

    .line 1375
    return-void
.end method

.method public setRawData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 804
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->data:Ljava/lang/Object;

    .line 805
    return-void
.end method

.method public setReadyState(I)V
    .locals 5
    .param p1, "readyState"    # I

    .prologue
    .line 425
    const-string v2, "TiHTTPClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting ready state to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iput p1, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    .line 427
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 428
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "readyState"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v2, "onreadystatechange"

    invoke-direct {p0, v2, v0}, Lti/modules/titanium/network/TiHTTPClient;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 431
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 432
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 433
    .local v1, "data1":Lorg/appcelerator/kroll/KrollDict;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 434
    const-string v2, "onload"

    invoke-direct {p0, v2, v1}, Lti/modules/titanium/network/TiHTTPClient;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 436
    .end local v1    # "data1":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 652
    iget v2, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_3

    .line 653
    if-nez p2, :cond_0

    .line 655
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->requestHeaders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :goto_0
    return-void

    .line 657
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->requestHeaders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 660
    const-string v2, "Cookie"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "; "

    .line 661
    .local v0, "seperator":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->requestHeaders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 662
    .local v1, "val":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->requestHeaders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 660
    .end local v0    # "seperator":Ljava/lang/String;
    .end local v1    # "val":Ljava/lang/StringBuffer;
    :cond_1
    const-string v0, ", "

    goto :goto_1

    .line 666
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->requestHeaders:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 671
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "setRequestHeader can only be called before invoking send."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setResponseText(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseText"    # Ljava/lang/String;

    .prologue
    .line 573
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 583
    iput p1, p0, Lti/modules/titanium/network/TiHTTPClient;->status:I

    .line 584
    return-void
.end method

.method public setStatusText(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusText"    # Ljava/lang/String;

    .prologue
    .line 593
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->statusText:Ljava/lang/String;

    .line 594
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .param p1, "millis"    # I

    .prologue
    .line 1359
    iput p1, p0, Lti/modules/titanium/network/TiHTTPClient;->timeout:I

    .line 1360
    return-void
.end method

.method protected setTlsVersion(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1400
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "tlsVersion"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1401
    iput p1, p0, Lti/modules/titanium/network/TiHTTPClient;->tlsVersion:I

    .line 1402
    return-void
.end method

.method protected setUpClient(Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 963
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->autoRedirect:Z

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 964
    return-void
.end method

.method public validatesSecureCertificate()Z
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "validatesSecureCertificate"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "validatesSecureCertificate"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 413
    :goto_0
    return v0

    .line 408
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "production"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    const/4 v0, 0x1

    goto :goto_0

    .line 413
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
