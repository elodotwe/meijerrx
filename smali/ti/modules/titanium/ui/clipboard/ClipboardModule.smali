.class public Lti/modules/titanium/ui/clipboard/ClipboardModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "ClipboardModule.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 23
    const-string v0, "Clipboard"

    iput-object v0, p0, Lti/modules/titanium/ui/clipboard/ClipboardModule;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 32
    invoke-direct {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;-><init>()V

    .line 33
    return-void
.end method

.method private board()Landroid/text/ClipboardManager;
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    return-object v0
.end method

.method private isTextType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearData(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-virtual {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->clearText()V

    .line 57
    return-void
.end method

.method public clearText()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->board()Landroid/text/ClipboardManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "Ti.UI.Clipboard"

    return-object v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->isTextType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->getText()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->board()Landroid/text/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->isTextType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->hasText()Z

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->board()Landroid/text/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    return v0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->isTextType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 108
    invoke-direct {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->board()Landroid/text/ClipboardManager;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/clipboard/ClipboardModule;->TAG:Ljava/lang/String;

    const-string v1, "Android clipboard only supports text data"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->board()Landroid/text/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method
