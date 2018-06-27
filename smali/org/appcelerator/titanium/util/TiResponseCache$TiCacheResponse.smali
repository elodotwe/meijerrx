.class Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheResponse;
.super Ljava/net/CacheResponse;
.source "TiResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TiCacheResponse"
.end annotation


# instance fields
.field private headers:Ljava/util/Map;
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

.field private istream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "istr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "hdrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 119
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheResponse;->headers:Ljava/util/Map;

    .line 120
    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheResponse;->istream:Ljava/io/InputStream;

    .line 121
    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheResponse;->istream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheResponse;->headers:Ljava/util/Map;

    return-object v0
.end method
