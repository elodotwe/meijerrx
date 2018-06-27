.class final Lcom/google/zxing/client/android/encode/QRCodeEncoder;
.super Ljava/lang/Object;
.source "QRCodeEncoder.java"


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final TAG:Ljava/lang/String;

.field private static final WHITE:I = -0x1


# instance fields
.field private final activity:Landroid/app/Activity;

.field private contents:Ljava/lang/String;

.field private final dimension:I

.field private displayContents:Ljava/lang/String;

.field private format:Lcom/google/zxing/BarcodeFormat;

.field private title:Ljava/lang/String;

.field private final useVCard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "dimension"    # I
    .param p4, "useVCard"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    .line 73
    iput p3, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->dimension:I

    .line 74
    iput-boolean p4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->useVCard:Z

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-direct {p0, p2}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->encodeContentsFromZXingIntent(Landroid/content/Intent;)Z

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-direct {p0, p2}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->encodeContentsFromShareIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private encodeContentsFromShareIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 133
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->encodeContentsFromShareIntentPlainText(Landroid/content/Intent;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->encodeContentsFromShareIntentDefault(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private encodeContentsFromShareIntentDefault(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 164
    sget-object v10, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v10, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 165
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 166
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 167
    new-instance v10, Lcom/google/zxing/WriterException;

    const-string v11, "No extras"

    invoke-direct {v10, v11}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 169
    :cond_0
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 170
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_1

    .line 171
    new-instance v10, Lcom/google/zxing/WriterException;

    const-string v11, "No EXTRA_STREAM"

    invoke-direct {v10, v11}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 176
    :cond_1
    :try_start_0
    iget-object v10, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 177
    .local v6, "stream":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 178
    .local v3, "length":I
    if-gtz v3, :cond_2

    .line 179
    new-instance v10, Lcom/google/zxing/WriterException;

    const-string v11, "Content stream is empty"

    invoke-direct {v10, v11}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v3    # "length":I
    .end local v6    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 188
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v10, Lcom/google/zxing/WriterException;

    invoke-direct {v10, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 181
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v3    # "length":I
    .restart local v6    # "stream":Ljava/io/InputStream;
    :cond_2
    :try_start_1
    new-array v8, v3, [B

    .line 182
    .local v8, "vcard":[B
    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 183
    .local v1, "bytesRead":I
    if-ge v1, v3, :cond_3

    .line 184
    new-instance v10, Lcom/google/zxing/WriterException;

    const-string v11, "Unable to fully read available bytes from content stream"

    invoke-direct {v10, v11}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 186
    :cond_3
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "UTF-8"

    invoke-direct {v9, v8, v10, v1, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    .local v9, "vcardString":Ljava/lang/String;
    sget-object v10, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->TAG:Ljava/lang/String;

    const-string v11, "Encoding share intent content:"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v10, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->TAG:Ljava/lang/String;

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v5, Lcom/google/zxing/Result;

    const/4 v10, 0x0

    sget-object v11, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v5, v9, v8, v10, v11}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 193
    .local v5, "result":Lcom/google/zxing/Result;
    invoke-static {v5}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v4

    .line 194
    .local v4, "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    instance-of v10, v4, Lcom/google/zxing/client/result/AddressBookParsedResult;

    if-nez v10, :cond_4

    .line 195
    new-instance v10, Lcom/google/zxing/WriterException;

    const-string v11, "Result was not an address"

    invoke-direct {v10, v11}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 197
    :cond_4
    check-cast v4, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .end local v4    # "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    invoke-direct {p0, v4}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->encodeQRCodeContents(Lcom/google/zxing/client/result/AddressBookParsedResult;)V

    .line 198
    iget-object v10, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_6

    .line 199
    :cond_5
    new-instance v10, Lcom/google/zxing/WriterException;

    const-string v11, "No content to encode"

    invoke-direct {v10, v11}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 201
    :cond_6
    return-void
.end method

.method private encodeContentsFromShareIntentPlainText(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 143
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/client/android/encode/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "theContents":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 147
    :cond_0
    new-instance v1, Lcom/google/zxing/WriterException;

    const-string v2, "Empty EXTRA_TEXT"

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_1
    iput-object v0, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 151
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 152
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    const-string v2, "contents_text"

    invoke-static {v2}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    .line 160
    return-void

    .line 154
    :cond_2
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    goto :goto_0
.end method

.method private encodeContentsFromZXingIntent(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 103
    const-string v4, "ENCODE_FORMAT"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "formatString":Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 105
    if-eqz v1, :cond_0

    .line 107
    :try_start_0
    invoke-static {v1}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne v4, v5, :cond_5

    .line 113
    :cond_1
    const-string v4, "ENCODE_TYPE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "type":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 127
    .end local v2    # "type":Ljava/lang/String;
    :cond_2
    :goto_1
    return v3

    .line 117
    .restart local v2    # "type":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 118
    invoke-direct {p0, p1, v2}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->encodeQRCodeContents(Landroid/content/Intent;Ljava/lang/String;)V

    .line 127
    .end local v2    # "type":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    .line 120
    :cond_5
    const-string v4, "ENCODE_DATA"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 122
    iput-object v0, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 124
    iget-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    const-string v5, "contents_text"

    invoke-static {v5}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto :goto_2

    .line 108
    .end local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private encodeQRCodeContents(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 204
    const-string v2, "TEXT_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    const-string v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 206
    .local v11, "data":Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 207
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 208
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    const-string v4, "contents_text"

    invoke-static {v4}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    .line 281
    .end local v11    # "data":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string v2, "EMAIL_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    const-string v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/android/encode/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 213
    .restart local v11    # "data":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailto:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 215
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    const-string v4, "contents_email"

    invoke-static {v4}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto :goto_0

    .line 218
    .end local v11    # "data":Ljava/lang/String;
    :cond_2
    const-string v2, "PHONE_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 219
    const-string v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/android/encode/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 220
    .restart local v11    # "data":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 222
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    const-string v4, "contents_phone"

    invoke-static {v4}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 225
    .end local v11    # "data":Ljava/lang/String;
    :cond_3
    const-string v2, "SMS_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 226
    const-string v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/android/encode/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 227
    .restart local v11    # "data":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 229
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    const-string v4, "contents_sms"

    invoke-static {v4}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 232
    .end local v11    # "data":Ljava/lang/String;
    :cond_4
    const-string v2, "CONTACT_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 234
    const-string v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 235
    .local v10, "bundle":Landroid/os/Bundle;
    if-eqz v10, :cond_0

    .line 237
    const-string v2, "name"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 238
    .local v15, "name":Ljava/lang/String;
    const-string v2, "company"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "organization":Ljava/lang/String;
    const-string v2, "postal"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, "address":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    sget-object v2, Lcom/google/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    .local v5, "phones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .local v16, "x":I
    :goto_1
    sget-object v2, Lcom/google/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_5

    .line 242
    sget-object v2, Lcom/google/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    aget-object v2, v2, v16

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 244
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    sget-object v2, Lcom/google/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v6, "emails":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v16, 0x0

    :goto_2
    sget-object v2, Lcom/google/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_6

    .line 246
    sget-object v2, Lcom/google/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    aget-object v2, v2, v16

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 248
    :cond_6
    const-string v2, "URL_KEY"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 249
    .local v7, "url":Ljava/lang/String;
    const-string v2, "NOTE_KEY"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 251
    .local v8, "note":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->useVCard:Z

    if-eqz v2, :cond_7

    new-instance v1, Lcom/google/zxing/client/android/encode/VCardContactEncoder;

    invoke-direct {v1}, Lcom/google/zxing/client/android/encode/VCardContactEncoder;-><init>()V

    .line 252
    .local v1, "mecardEncoder":Lcom/google/zxing/client/android/encode/ContactEncoder;
    :goto_3
    invoke-static {v15}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v9}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual/range {v1 .. v8}, Lcom/google/zxing/client/android/encode/ContactEncoder;->encode(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 260
    .local v12, "encoded":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v12, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 261
    const/4 v2, 0x0

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 262
    const/4 v2, 0x1

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    const-string v4, "contents_contact"

    invoke-static {v4}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 251
    .end local v1    # "mecardEncoder":Lcom/google/zxing/client/android/encode/ContactEncoder;
    .end local v12    # "encoded":[Ljava/lang/String;
    :cond_7
    new-instance v1, Lcom/google/zxing/client/android/encode/MECARDContactEncoder;

    invoke-direct {v1}, Lcom/google/zxing/client/android/encode/MECARDContactEncoder;-><init>()V

    goto :goto_3

    .line 268
    .end local v3    # "organization":Ljava/lang/String;
    .end local v5    # "phones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v6    # "emails":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "note":Ljava/lang/String;
    .end local v9    # "address":Ljava/lang/String;
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "x":I
    :cond_8
    const-string v2, "LOCATION_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    const-string v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 270
    .restart local v10    # "bundle":Landroid/os/Bundle;
    if-eqz v10, :cond_0

    .line 272
    const-string v2, "LAT"

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v10, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v13

    .line 273
    .local v13, "latitude":F
    const-string v2, "LONG"

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v10, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v14

    .line 274
    .local v14, "longitude":F
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v13, v2

    if-eqz v2, :cond_0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_0

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geo:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    const-string v4, "contents_location"

    invoke-static {v4}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private encodeQRCodeContents(Lcom/google/zxing/client/result/AddressBookParsedResult;)V
    .locals 10
    .param p1, "contact"    # Lcom/google/zxing/client/result/AddressBookParsedResult;

    .prologue
    const/4 v9, 0x1

    .line 284
    iget-boolean v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->useVCard:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/google/zxing/client/android/encode/VCardContactEncoder;

    invoke-direct {v0}, Lcom/google/zxing/client/android/encode/VCardContactEncoder;-><init>()V

    .line 285
    .local v0, "encoder":Lcom/google/zxing/client/android/encode/ContactEncoder;
    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getURL()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/zxing/client/android/encode/ContactEncoder;->encode(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 293
    .local v8, "encoded":[Ljava/lang/String;
    aget-object v1, v8, v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 294
    const/4 v1, 0x0

    aget-object v1, v8, v1

    iput-object v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 295
    aget-object v1, v8, v9

    iput-object v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 296
    iget-object v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    const-string v2, "contents_contact"

    invoke-static {v2}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    .line 298
    :cond_0
    return-void

    .line 284
    .end local v0    # "encoder":Lcom/google/zxing/client/android/encode/ContactEncoder;
    .end local v8    # "encoded":[Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/google/zxing/client/android/encode/MECARDContactEncoder;

    invoke-direct {v0}, Lcom/google/zxing/client/android/encode/MECARDContactEncoder;-><init>()V

    goto :goto_0
.end method

.method private static guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "contents"    # Ljava/lang/CharSequence;

    .prologue
    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 335
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 336
    const-string v1, "UTF-8"

    .line 339
    :goto_1
    return-object v1

    .line 334
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static toIterable([Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method encodeAsBitmap()Landroid/graphics/Bitmap;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 306
    .local v2, "contentsToEncode":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 307
    const/4 v7, 0x0

    .line 329
    :goto_0
    return-object v7

    .line 309
    :cond_0
    const/4 v6, 0x0

    .line 310
    .local v6, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    invoke-static {v2}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 311
    .local v15, "encoding":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 312
    new-instance v6, Ljava/util/EnumMap;

    .end local v6    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    const-class v3, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v6, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 313
    .restart local v6    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v6, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_1
    new-instance v1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 316
    .local v1, "writer":Lcom/google/zxing/MultiFormatWriter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->dimension:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->dimension:I

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v17

    .line 317
    .local v17, "result":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 318
    .local v10, "width":I
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v14

    .line 319
    .local v14, "height":I
    mul-int v3, v10, v14

    new-array v8, v3, [I

    .line 320
    .local v8, "pixels":[I
    const/16 v19, 0x0

    .local v19, "y":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v14, :cond_4

    .line 321
    mul-int v16, v19, v10

    .line 322
    .local v16, "offset":I
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v10, :cond_3

    .line 323
    add-int v4, v16, v18

    invoke-virtual/range {v17 .. v19}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, -0x1000000

    :goto_3
    aput v3, v8, v4

    .line 322
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 323
    :cond_2
    const/4 v3, -0x1

    goto :goto_3

    .line 320
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 327
    .end local v16    # "offset":I
    .end local v18    # "x":I
    :cond_4
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 328
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
.end method

.method getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    return-object v0
.end method

.method getDisplayContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    return-object v0
.end method

.method isUseVCard()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->useVCard:Z

    return v0
.end method
