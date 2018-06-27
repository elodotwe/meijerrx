.class public final Lcom/google/zxing/client/android/wifi/WifiConfigManager;
.super Ljava/lang/Object;
.source "WifiConfigManager.java"


# static fields
.field private static final HEX_DIGITS:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/zxing/client/android/wifi/WifiConfigManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->TAG:Ljava/lang/String;

    .line 34
    const-string v0, "[0-9A-Fa-f]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->HEX_DIGITS:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->changeNetworkUnEncrypted(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->changeNetworkWEP(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->changeNetworkWPA(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static changeNetworkCommon(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 117
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 118
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 119
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 120
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 121
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 123
    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-static {p0, v1}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->quoteNonHex(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 124
    return-object v0
.end method

.method private static changeNetworkUnEncrypted(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 3
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {p1}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->changeNetworkCommon(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 161
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 162
    invoke-static {p0, v0}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->updateNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    .line 163
    return-void
.end method

.method private static changeNetworkWEP(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    invoke-static {p1}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->changeNetworkCommon(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 130
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-static {p2, v2}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->quoteNonHex(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 131
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 132
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 133
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 134
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 135
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 136
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 137
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 138
    invoke-static {p0, v0}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->updateNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    .line 139
    return-void

    .line 130
    nop

    :array_0
    .array-data 4
        0xa
        0x1a
        0x3a
    .end array-data
.end method

.method private static changeNetworkWPA(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 143
    invoke-static {p1}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->changeNetworkCommon(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 145
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-array v1, v3, [I

    const/16 v2, 0x40

    aput v2, v1, v4

    invoke-static {p2, v1}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->quoteNonHex(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 146
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 147
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 148
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 149
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 150
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 151
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 152
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 153
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 154
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 155
    invoke-static {p0, v0}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->updateNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    .line 156
    return-void
.end method

.method public static configure(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "networkTypeString"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v0, "configureRunnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 87
    return-void
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x22

    .line 186
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 187
    :cond_0
    const/4 p0, 0x0

    .line 193
    .end local p0    # "string":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 190
    .restart local p0    # "string":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_1

    .line 193
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static findNetworkInExistingConfig(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 167
    .local v1, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 168
    .local v0, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 172
    .end local v0    # "existingConfig":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static varargs isHexOfLength(Ljava/lang/CharSequence;[I)Z
    .locals 7
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "allowedLengths"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 203
    if-eqz p0, :cond_0

    sget-object v6, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->HEX_DIGITS:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v4, v5

    .line 214
    :cond_1
    :goto_0
    return v4

    .line 206
    :cond_2
    array-length v6, p1

    if-eqz v6, :cond_1

    .line 209
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget v3, v0, v1

    .line 210
    .local v3, "length":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v6, v3, :cond_1

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "length":I
    :cond_3
    move v4, v5

    .line 214
    goto :goto_0
.end method

.method private static varargs quoteNonHex(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "allowedLengths"    # [I

    .prologue
    .line 176
    invoke-static {p0, p1}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->isHexOfLength(Ljava/lang/CharSequence;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "value":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static updateNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 95
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->findNetworkInExistingConfig(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 96
    .local v0, "foundNetworkID":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 97
    sget-object v2, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing old configuration for network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 99
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 102
    .local v1, "networkId":I
    if-ltz v1, :cond_2

    .line 104
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    sget-object v2, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Associating to network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_1
    sget-object v2, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to enable network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_2
    sget-object v2, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to add network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
