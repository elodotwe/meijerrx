.class public final Lcom/google/zxing/client/android/share/ShareActivity;
.super Landroid/app/Activity;
.source "ShareActivity.java"


# static fields
.field private static final PICK_APP:I = 0x2

.field private static final PICK_BOOKMARK:I = 0x0

.field private static final PICK_CONTACT:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final appListener:Landroid/view/View$OnClickListener;

.field private final bookmarkListener:Landroid/view/View$OnClickListener;

.field private clipboardButton:Landroid/widget/Button;

.field private final clipboardListener:Landroid/view/View$OnClickListener;

.field private final contactListener:Landroid/view/View$OnClickListener;

.field private final textListener:Landroid/view/View$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/google/zxing/client/android/share/ShareActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/share/ShareActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    new-instance v0, Lcom/google/zxing/client/android/share/ShareActivity$1;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/share/ShareActivity$1;-><init>(Lcom/google/zxing/client/android/share/ShareActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/share/ShareActivity;->contactListener:Landroid/view/View$OnClickListener;

    .line 65
    new-instance v0, Lcom/google/zxing/client/android/share/ShareActivity$2;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/share/ShareActivity$2;-><init>(Lcom/google/zxing/client/android/share/ShareActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/share/ShareActivity;->bookmarkListener:Landroid/view/View$OnClickListener;

    .line 75
    new-instance v0, Lcom/google/zxing/client/android/share/ShareActivity$3;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/share/ShareActivity$3;-><init>(Lcom/google/zxing/client/android/share/ShareActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/share/ShareActivity;->appListener:Landroid/view/View$OnClickListener;

    .line 85
    new-instance v0, Lcom/google/zxing/client/android/share/ShareActivity$4;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/share/ShareActivity$4;-><init>(Lcom/google/zxing/client/android/share/ShareActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/share/ShareActivity;->clipboardListener:Landroid/view/View$OnClickListener;

    .line 96
    new-instance v0, Lcom/google/zxing/client/android/share/ShareActivity$5;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/share/ShareActivity$5;-><init>(Lcom/google/zxing/client/android/share/ShareActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/share/ShareActivity;->textListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/zxing/client/android/share/ShareActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/zxing/client/android/share/ShareActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/share/ShareActivity;->launchSearch(Ljava/lang/String;)V

    return-void
.end method

.method private launchSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.ENCODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    const-string v1, "ENCODE_TYPE"

    const-string v2, "TEXT_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v1, "ENCODE_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method private static massageContactData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 292
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 293
    const-string v0, "\n"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 295
    :cond_0
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 296
    const-string v0, "\r"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 298
    :cond_1
    return-object p0
.end method

.method private showContactAsBarcode(Landroid/net/Uri;)V
    .locals 25
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 182
    sget-object v3, Lcom/google/zxing/client/android/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Showing contact URI as barcode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-nez p1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/share/ShareActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 187
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v8, "bundle":Landroid/os/Bundle;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 196
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 204
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 214
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 193
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 194
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 208
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_2
    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 209
    .local v18, "id":Ljava/lang/String;
    const-string v3, "display_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 210
    .local v21, "name":Ljava/lang/String;
    const-string v3, "has_phone_number"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-lez v3, :cond_4

    const/16 v17, 0x1

    .line 214
    .local v17, "hasPhone":Z
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 218
    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 219
    const-string v3, "name"

    invoke-static/range {v21 .. v21}, Lcom/google/zxing/client/android/share/ShareActivity;->massageContactData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_3
    if-eqz v17, :cond_6

    .line 223
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 228
    .local v23, "phonesCursor":Landroid/database/Cursor;
    if-eqz v23, :cond_6

    .line 230
    const/16 v16, 0x0

    .line 231
    .local v16, "foundPhone":I
    :try_start_3
    const-string v3, "data1"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 232
    .local v24, "phonesNumberColumn":I
    :goto_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/google/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_5

    .line 233
    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 234
    .local v22, "number":Ljava/lang/String;
    sget-object v3, Lcom/google/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    aget-object v3, v3, v16

    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/android/share/ShareActivity;->massageContactData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 235
    add-int/lit8 v16, v16, 0x1

    .line 236
    goto :goto_2

    .line 210
    .end local v16    # "foundPhone":I
    .end local v17    # "hasPhone":Z
    .end local v22    # "number":Ljava/lang/String;
    .end local v23    # "phonesCursor":Landroid/database/Cursor;
    .end local v24    # "phonesNumberColumn":I
    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    .line 214
    .end local v18    # "id":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .line 238
    .restart local v16    # "foundPhone":I
    .restart local v17    # "hasPhone":Z
    .restart local v18    # "id":Ljava/lang/String;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v23    # "phonesCursor":Landroid/database/Cursor;
    .restart local v24    # "phonesNumberColumn":I
    :cond_5
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 243
    .end local v16    # "foundPhone":I
    .end local v23    # "phonesCursor":Landroid/database/Cursor;
    .end local v24    # "phonesNumberColumn":I
    :cond_6
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 248
    .local v20, "methodsCursor":Landroid/database/Cursor;
    if-eqz v20, :cond_8

    .line 250
    :try_start_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 251
    const-string v3, "data1"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 253
    .local v10, "data":Ljava/lang/String;
    const-string v3, "postal"

    invoke-static {v10}, Lcom/google/zxing/client/android/share/ShareActivity;->massageContactData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 256
    .end local v10    # "data":Ljava/lang/String;
    :cond_7
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 260
    :cond_8
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 265
    .local v14, "emailCursor":Landroid/database/Cursor;
    if-eqz v14, :cond_a

    .line 267
    const/4 v15, 0x0

    .line 268
    .local v15, "foundEmail":I
    :try_start_5
    const-string v3, "data1"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 269
    .local v13, "emailColumn":I
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/google/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v15, v3, :cond_9

    .line 270
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 271
    .local v12, "email":Ljava/lang/String;
    sget-object v3, Lcom/google/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    aget-object v3, v3, v15

    invoke-static {v12}, Lcom/google/zxing/client/android/share/ShareActivity;->massageContactData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 272
    add-int/lit8 v15, v15, 0x1

    .line 273
    goto :goto_3

    .line 238
    .end local v12    # "email":Ljava/lang/String;
    .end local v13    # "emailColumn":I
    .end local v14    # "emailCursor":Landroid/database/Cursor;
    .end local v15    # "foundEmail":I
    .end local v20    # "methodsCursor":Landroid/database/Cursor;
    .restart local v16    # "foundPhone":I
    .restart local v23    # "phonesCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v3

    .line 256
    .end local v16    # "foundPhone":I
    .end local v23    # "phonesCursor":Landroid/database/Cursor;
    .restart local v20    # "methodsCursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    throw v3

    .line 275
    .restart local v13    # "emailColumn":I
    .restart local v14    # "emailCursor":Landroid/database/Cursor;
    .restart local v15    # "foundEmail":I
    :cond_9
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 279
    .end local v13    # "emailColumn":I
    .end local v15    # "foundEmail":I
    :cond_a
    new-instance v19, Landroid/content/Intent;

    const-string v3, "com.google.zxing.client.android.ENCODE"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v19, "intent":Landroid/content/Intent;
    const/high16 v3, 0x80000

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    const-string v3, "ENCODE_TYPE"

    const-string v4, "CONTACT_TYPE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v3, "ENCODE_DATA"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 283
    const-string v3, "ENCODE_FORMAT"

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v4}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    sget-object v3, Lcom/google/zxing/client/android/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending bundle for encoding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/share/ShareActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 275
    .end local v19    # "intent":Landroid/content/Intent;
    .restart local v15    # "foundEmail":I
    :catchall_3
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private showTextAsBarcode(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 163
    sget-object v1, Lcom/google/zxing/client/android/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing text as barcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-nez p1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.ENCODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    const-string v1, "ENCODE_TYPE"

    const-string v2, "TEXT_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "ENCODE_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 148
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 149
    packed-switch p1, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 152
    :pswitch_0
    const-string v0, "url"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->showTextAsBarcode(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->showContactAsBarcode(Landroid/net/Uri;)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const-string v0, "share"

    invoke-static {v0}, Lti/barcode/RHelper;->getLayout(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->setContentView(I)V

    .line 124
    const-string v0, "share_contact_button"

    invoke-static {v0}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity;->contactListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const-string v0, "share_bookmark_button"

    invoke-static {v0}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity;->bookmarkListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const-string v0, "share_app_button"

    invoke-static {v0}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity;->appListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const-string v0, "share_clipboard_button"

    invoke-static {v0}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/zxing/client/android/share/ShareActivity;->clipboardButton:Landroid/widget/Button;

    .line 128
    iget-object v0, p0, Lcom/google/zxing/client/android/share/ShareActivity;->clipboardButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity;->clipboardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const-string v0, "share_text_view"

    invoke-static {v0}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity;->textListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 136
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/share/ShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 137
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity;->clipboardButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity;->clipboardButton:Landroid/widget/Button;

    const-string v2, "button_share_clipboard"

    invoke-static {v2}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity;->clipboardButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 142
    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity;->clipboardButton:Landroid/widget/Button;

    const-string v2, "button_clipboard_empty"

    invoke-static {v2}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
