.class public final Lcom/google/zxing/client/android/result/AddressBookResultHandler;
.super Lcom/google/zxing/client/android/result/ResultHandler;
.source "AddressBookResultHandler.java"


# static fields
.field private static final BUTTON_TEXTS:[I

.field private static final DATE_FORMATS:[Ljava/text/DateFormat;


# instance fields
.field private buttonCount:I

.field private final fields:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    new-array v0, v8, [Ljava/text/DateFormat;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmss"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->DATE_FORMATS:[Ljava/text/DateFormat;

    .line 48
    new-array v0, v8, [I

    const-string v1, "button_add_contact"

    invoke-static {v1}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    const-string v1, "button_show_map"

    invoke-static {v1}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v5

    const-string v1, "button_dial"

    invoke-static {v1}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v6

    const-string v1, "button_email"

    invoke-static {v1}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v7

    sput-object v0, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->BUTTON_TEXTS:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;

    .prologue
    const/4 v11, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    move-object v0, p2

    .line 77
    check-cast v0, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .line 78
    .local v0, "addressResult":Lcom/google/zxing/client/result/AddressBookParsedResult;
    invoke-virtual {v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "addresses":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v10, v1

    if-lez v10, :cond_1

    aget-object v10, v1, v9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    move v3, v8

    .line 80
    .local v3, "hasAddress":Z
    :goto_0
    invoke-virtual {v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "phoneNumbers":[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v10, v6

    if-lez v10, :cond_2

    move v5, v8

    .line 82
    .local v5, "hasPhoneNumber":Z
    :goto_1
    invoke-virtual {v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "emails":[Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v10, v2

    if-lez v10, :cond_3

    move v4, v8

    .line 85
    .local v4, "hasEmailAddress":Z
    :goto_2
    new-array v10, v11, [Z

    iput-object v10, p0, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->fields:[Z

    .line 86
    iget-object v10, p0, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->fields:[Z

    aput-boolean v8, v10, v9

    .line 87
    iget-object v10, p0, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->fields:[Z

    aput-boolean v3, v10, v8

    .line 88
    iget-object v8, p0, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->fields:[Z

    const/4 v10, 0x2

    aput-boolean v5, v8, v10

    .line 89
    iget-object v8, p0, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->fields:[Z

    const/4 v10, 0x3

    aput-boolean v4, v8, v10

    .line 91
    iput v9, p0, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->buttonCount:I

    .line 92
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_3
    if-ge v7, v11, :cond_4

    .line 93
    iget-object v8, p0, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->fields:[Z

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_0

    .line 94
    iget v8, p0, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->buttonCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->buttonCount:I

    .line 92
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .end local v2    # "emails":[Ljava/lang/String;
    .end local v3    # "hasAddress":Z
    .end local v4    # "hasEmailAddress":Z
    .end local v5    # "hasPhoneNumber":Z
    .end local v6    # "phoneNumbers":[Ljava/lang/String;
    .end local v7    # "x":I
    :cond_1
    move v3, v9

    .line 79
    goto :goto_0

    .restart local v3    # "hasAddress":Z
    .restart local v6    # "phoneNumbers":[Ljava/lang/String;
    :cond_2
    move v5, v9

    .line 81
    goto :goto_1

    .restart local v2    # "emails":[Ljava/lang/String;
    .restart local v5    # "hasPhoneNumber":Z
    :cond_3
    move v4, v9

    .line 83
    goto :goto_2

    .line 97
    .restart local v4    # "hasEmailAddress":Z
    .restart local v7    # "x":I
    :cond_4
    return-void
.end method

.method private mapIndexToAction(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 61
    iget v2, p0, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->buttonCount:I

    if-ge p1, v2, :cond_2

    .line 62
    const/4 v0, -0x1

    .line 63
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->fields:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 67
    :cond_0
    if-ne v0, p1, :cond_1

    .line 72
    .end local v0    # "count":I
    .end local v1    # "x":I
    :goto_1
    return v1

    .line 63
    .restart local v0    # "count":I
    .restart local v1    # "x":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "count":I
    .end local v1    # "x":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 151
    sget-object v0, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->DATE_FORMATS:[Ljava/text/DateFormat;

    .local v0, "arr$":[Ljava/text/DateFormat;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 152
    .local v1, "currentFomat":Ljava/text/DateFormat;
    monitor-enter v1

    .line 153
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 154
    new-instance v5, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v1, p0, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v4

    .line 155
    .local v4, "result":Ljava/util/Date;
    if-eqz v4, :cond_0

    .line 156
    monitor-exit v1

    .line 160
    .end local v1    # "currentFomat":Ljava/text/DateFormat;
    .end local v4    # "result":Ljava/util/Date;
    :goto_1
    return-object v4

    .line 158
    .restart local v1    # "currentFomat":Ljava/text/DateFormat;
    .restart local v4    # "result":Ljava/util/Date;
    :cond_0
    monitor-exit v1

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v4    # "result":Ljava/util/Date;
    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 160
    .end local v1    # "currentFomat":Ljava/text/DateFormat;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->buttonCount:I

    return v0
.end method

.method public getButtonText(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 106
    sget-object v0, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->BUTTON_TEXTS:[I

    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->mapIndexToAction(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getDisplayContents()Ljava/lang/CharSequence;
    .locals 16

    .prologue
    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .line 167
    .local v10, "result":Lcom/google/zxing/client/result/AddressBookParsedResult;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v12, 0x64

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 168
    .local v2, "contents":Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 171
    .local v6, "namesLength":I
    invoke-virtual {v10}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPronunciation()Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, "pronunciation":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 173
    const-string v12, "\n("

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const/16 v12, 0x29

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    :cond_0
    invoke-virtual {v10}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 179
    invoke-virtual {v10}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 180
    invoke-virtual {v10}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 181
    invoke-virtual {v10}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, "numbers":[Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 183
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v0, v4

    .line 184
    .local v7, "number":Ljava/lang/String;
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 188
    invoke-virtual {v10}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getURL()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 190
    invoke-virtual {v10}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getBirthday()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "birthday":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 192
    invoke-static {v1}, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 193
    .local v3, "date":Ljava/util/Date;
    if-eqz v3, :cond_2

    .line 194
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v12

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 197
    .end local v3    # "date":Ljava/util/Date;
    :cond_2
    invoke-virtual {v10}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNote()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 199
    if-lez v6, :cond_3

    .line 201
    new-instance v11, Landroid/text/SpannableString;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 202
    .local v11, "styled":Landroid/text/Spannable;
    new-instance v12, Landroid/text/style/StyleSpan;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v6, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 205
    .end local v11    # "styled":Landroid/text/Spannable;
    :goto_1
    return-object v11

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1
.end method

.method public getDisplayTitle()I
    .locals 1

    .prologue
    .line 211
    const-string v0, "result_address_book"

    invoke-static {v0}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 23
    .param p1, "index"    # I

    .prologue
    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v18

    check-cast v18, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .line 112
    .local v18, "addressResult":Lcom/google/zxing/client/result/AddressBookParsedResult;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v20

    .line 113
    .local v20, "addresses":[Ljava/lang/String;
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    :cond_0
    const/4 v11, 0x0

    .line 114
    .local v11, "address1":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddressTypes()[Ljava/lang/String;

    move-result-object v19

    .line 115
    .local v19, "addressTypes":[Ljava/lang/String;
    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3

    :cond_1
    const/4 v12, 0x0

    .line 116
    .local v12, "address1Type":Ljava/lang/String;
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->mapIndexToAction(I)I

    move-result v17

    .line 117
    .local v17, "action":I
    packed-switch v17, :pswitch_data_0

    .line 148
    :goto_2
    return-void

    .line 113
    .end local v11    # "address1":Ljava/lang/String;
    .end local v12    # "address1Type":Ljava/lang/String;
    .end local v17    # "action":I
    .end local v19    # "addressTypes":[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    aget-object v11, v20, v2

    goto :goto_0

    .line 115
    .restart local v11    # "address1":Ljava/lang/String;
    .restart local v19    # "addressTypes":[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    aget-object v12, v19, v2

    goto :goto_1

    .line 119
    .restart local v12    # "address1Type":Ljava/lang/String;
    .restart local v17    # "action":I
    :pswitch_0
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPronunciation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneTypes()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmailTypes()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNote()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getInstantMessenger()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getURL()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getBirthday()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v16}, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->addContact([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 135
    :pswitch_1
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v21

    .line 136
    .local v21, "names":[Ljava/lang/String;
    if-eqz v21, :cond_4

    const/4 v2, 0x0

    aget-object v22, v21, v2

    .line 137
    .local v22, "title":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->searchMap(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 136
    .end local v22    # "title":Ljava/lang/String;
    :cond_4
    const/16 v22, 0x0

    goto :goto_3

    .line 140
    .end local v21    # "names":[Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->dialPhone(Ljava/lang/String;)V

    goto :goto_2

    .line 143
    :pswitch_3
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/zxing/client/android/result/AddressBookResultHandler;->sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
