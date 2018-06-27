.class public Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;
.super Ljava/lang/Object;
.source "CommonContactsApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/contacts/CommonContactsApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LightPerson"
.end annotation


# instance fields
.field addresses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field birthday:Ljava/lang/String;

.field dates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field department:Ljava/lang/String;

.field emails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field fname:Ljava/lang/String;

.field fphonetic:Ljava/lang/String;

.field hasImage:Z

.field id:J

.field instantMessage:Ljava/lang/String;

.field instantMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field jobTitle:Ljava/lang/String;

.field lname:Ljava/lang/String;

.field lphonetic:Ljava/lang/String;

.field mname:Ljava/lang/String;

.field mphonetic:Ljava/lang/String;

.field name:Ljava/lang/String;

.field nickname:Ljava/lang/String;

.field notes:Ljava/lang/String;

.field organization:Ljava/lang/String;

.field phones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field pname:Ljava/lang/String;

.field relatedName:Ljava/lang/String;

.field relatedNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field sname:Ljava/lang/String;

.field websites:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->hasImage:Z

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->emails:Ljava/util/Map;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->phones:Ljava/util/Map;

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->addresses:Ljava/util/Map;

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->instantMessages:Ljava/util/Map;

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->relatedNames:Ljava/util/Map;

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->websites:Ljava/util/Map;

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->dates:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method addDataFromL5Cursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 296
    sget v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_MIMETYPE:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "kind":Ljava/lang/String;
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_ADDRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {p0, p1}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->loadAddressFromL5DataRow(Landroid/database/Cursor;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_EMAIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    invoke-virtual {p0, p1}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->loadEmailFromL5DataRow(Landroid/database/Cursor;)V

    goto :goto_0

    .line 301
    :cond_2
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_EVENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 302
    invoke-virtual {p0, p1}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->loadBirthdayFromL5DataRow(Landroid/database/Cursor;)V

    goto :goto_0

    .line 303
    :cond_3
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 304
    invoke-virtual {p0, p1}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->loadNameFromL5DataRow(Landroid/database/Cursor;)V

    goto :goto_0

    .line 305
    :cond_4
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_NOTE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 306
    invoke-virtual {p0, p1}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->loadNoteFromL5DataRow(Landroid/database/Cursor;)V

    goto :goto_0

    .line 307
    :cond_5
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_PHONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 308
    invoke-virtual {p0, p1}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->loadPhoneFromL5DataRow(Landroid/database/Cursor;)V

    goto :goto_0

    .line 309
    :cond_6
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_PHONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 310
    invoke-virtual {p0, p1}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->loadPhoneFromL5DataRow(Landroid/database/Cursor;)V

    goto :goto_0

    .line 311
    :cond_7
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_NICKNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 312
    invoke-virtual {p0, p1}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->loadPhonNickL5DataRow(Landroid/database/Cursor;)V

    goto :goto_0

    .line 313
    :cond_8
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_ORGANIZE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 314
    invoke-virtual {p0, p1}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->loadOrganizationL5DataRow(Landroid/database/Cursor;)V

    goto :goto_0

    .line 315
    :cond_9
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_IM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 316
    invoke-virtual {p0, p1}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->loadImL5DataRow(Landroid/database/Cursor;)V

    goto :goto_0

    .line 317
    :cond_a
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_RELATED_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 318
    invoke-virtual {p0, p1}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->loadRelatedNamesL5DataRow(Landroid/database/Cursor;)V

    goto :goto_0

    .line 319
    :cond_b
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_WEBSITE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {p0, p1}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->loadWebSiteL5DataRow(Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method addPersonInfoFromL5DataRow(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 283
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_CONTACT_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->id:J

    .line 284
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DISPLAY_NAME:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->name:Ljava/lang/String;

    .line 285
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_PHOTO_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->hasImage:Z

    .line 286
    return-void

    .line 285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method addPersonInfoFromL5PersonRow(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 290
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->PEOPLE_COL_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->id:J

    .line 291
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->PEOPLE_COL_NAME:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->name:Ljava/lang/String;

    .line 292
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->PEOPLE_COL_PHOTO_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->hasImage:Z

    .line 293
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadAddressFromL5DataRow(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 463
    sget v4, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_ADDRESS_FULL:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "fullAddress":Ljava/lang/String;
    sget v4, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_ADDRESS_TYPE:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 465
    .local v3, "type":I
    invoke-static {v3}, Lti/modules/titanium/contacts/CommonContactsApi;->getPostalAddressTextType(I)Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->addresses:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 468
    iget-object v4, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->addresses:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 473
    .local v0, "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    return-void

    .line 470
    .end local v0    # "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .restart local v0    # "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->addresses:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method loadBirthdayFromL5DataRow(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 390
    sget v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_EVENT_TYPE:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 391
    .local v0, "type":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 392
    sget v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_EVENT_DATE:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->birthday:Ljava/lang/String;

    .line 394
    :cond_0
    invoke-virtual {p0, p1}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->loadDatesL5DataRow(Landroid/database/Cursor;)V

    .line 395
    return-void
.end method

.method loadDatesL5DataRow(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "datesCursor"    # Landroid/database/Cursor;

    .prologue
    .line 435
    sget v4, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATE_ADDR:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "date":Ljava/lang/String;
    sget v4, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATE_TYPE:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 437
    .local v3, "type":I
    invoke-static {v3}, Lti/modules/titanium/contacts/CommonContactsApi;->getDateTextType(I)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->dates:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 439
    iget-object v4, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->dates:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 444
    .local v0, "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    return-void

    .line 441
    .end local v0    # "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .restart local v0    # "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->dates:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method loadEmailFromL5DataRow(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "emailsCursor"    # Landroid/database/Cursor;

    .prologue
    .line 399
    sget v4, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_EMAIL_ADDR:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "emailAddress":Ljava/lang/String;
    sget v4, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_EMAIL_TYPE:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 401
    .local v3, "type":I
    invoke-static {v3}, Lti/modules/titanium/contacts/CommonContactsApi;->getEmailTextType(I)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->emails:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    iget-object v4, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->emails:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 410
    .local v0, "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    return-void

    .line 407
    .end local v0    # "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .restart local v0    # "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->emails:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method loadImL5DataRow(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "imCursor"    # Landroid/database/Cursor;

    .prologue
    .line 326
    sget v3, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_IM:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->instantMessage:Ljava/lang/String;

    .line 327
    sget v3, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_IM_TYPE:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 328
    .local v2, "type":I
    invoke-static {v2}, Lti/modules/titanium/contacts/CommonContactsApi;->getImTextType(I)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->instantMessages:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    iget-object v3, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->instantMessages:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 336
    .local v0, "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->instantMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    return-void

    .line 333
    .end local v0    # "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .restart local v0    # "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->instantMessages:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method loadNameFromL5DataRow(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "nameCursor"    # Landroid/database/Cursor;

    .prologue
    .line 450
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_NAME_FIRST:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->fname:Ljava/lang/String;

    .line 451
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_NAME_LAST:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->lname:Ljava/lang/String;

    .line 452
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_NAME_PREFIX:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->pname:Ljava/lang/String;

    .line 453
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_NAME_MIDDLE:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->mname:Ljava/lang/String;

    .line 454
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_NAME_SUFFIX:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->sname:Ljava/lang/String;

    .line 455
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA9:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->fphonetic:Ljava/lang/String;

    .line 456
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA8:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->mphonetic:Ljava/lang/String;

    .line 457
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA7:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->lphonetic:Ljava/lang/String;

    .line 458
    return-void
.end method

.method loadNoteFromL5DataRow(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 385
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_NOTE:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->notes:Ljava/lang/String;

    .line 386
    return-void
.end method

.method loadOrganizationL5DataRow(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 358
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_ORGANIZATION:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->organization:Ljava/lang/String;

    .line 359
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_JOB_TITLE:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->jobTitle:Ljava/lang/String;

    .line 360
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DEPARTMENT:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->department:Ljava/lang/String;

    .line 361
    return-void
.end method

.method loadPhonNickL5DataRow(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 365
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_NICK_NAME:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->nickname:Ljava/lang/String;

    .line 366
    return-void
.end method

.method loadPhoneFromL5DataRow(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "phonesCursor"    # Landroid/database/Cursor;

    .prologue
    .line 370
    sget v4, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_PHONE_NUMBER:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "phoneNumber":Ljava/lang/String;
    sget v4, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_PHONE_TYPE:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 372
    .local v3, "type":I
    invoke-static {v3}, Lti/modules/titanium/contacts/CommonContactsApi;->getPhoneTextType(I)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->phones:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 375
    iget-object v4, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->phones:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 380
    .local v0, "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    return-void

    .line 377
    .end local v0    # "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .restart local v0    # "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->phones:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method loadRelatedNamesL5DataRow(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "rnCursor"    # Landroid/database/Cursor;

    .prologue
    .line 342
    sget v3, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_RELATED_NAME:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->relatedName:Ljava/lang/String;

    .line 343
    sget v3, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_RELATED_NAME_TYPE:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 344
    .local v2, "type":I
    invoke-static {v2}, Lti/modules/titanium/contacts/CommonContactsApi;->getRelatedNamesType(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->relatedNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    iget-object v3, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->relatedNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 353
    .local v0, "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->relatedName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    return-void

    .line 350
    .end local v0    # "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .restart local v0    # "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->relatedNames:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method loadWebSiteL5DataRow(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "websitesCursor"    # Landroid/database/Cursor;

    .prologue
    .line 416
    sget v3, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_WEBSITE_ADDR:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "website":Ljava/lang/String;
    const-string v1, "website"

    .line 420
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->websites:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    iget-object v3, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->websites:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 428
    .local v0, "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    return-void

    .line 423
    .end local v0    # "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .restart local v0    # "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->websites:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method proxify()Lti/modules/titanium/contacts/PersonProxy;
    .locals 4

    .prologue
    .line 478
    new-instance v0, Lti/modules/titanium/contacts/PersonProxy;

    invoke-direct {v0}, Lti/modules/titanium/contacts/PersonProxy;-><init>()V

    .line 479
    .local v0, "proxy":Lti/modules/titanium/contacts/PersonProxy;
    iget-object v1, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lti/modules/titanium/contacts/PersonProxy;->setFullName(Ljava/lang/String;)V

    .line 480
    const-string v1, "firstName"

    iget-object v2, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->fname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    const-string v1, "lastName"

    iget-object v2, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->lname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    const-string v1, "middleName"

    iget-object v2, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->mname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 483
    const-string v1, "prefix"

    iget-object v2, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->pname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    const-string v1, "suffix"

    iget-object v2, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->sname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    const-string v1, "firstPhonetic"

    iget-object v2, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->fphonetic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    const-string v1, "middlePhonetic"

    iget-object v2, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->mphonetic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    const-string v1, "lastPhonetic"

    iget-object v2, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->lphonetic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    const-string v1, "birthday"

    iget-object v2, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    const-string v1, "organization"

    iget-object v2, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->organization:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    const-string v1, "jobTitle"

    iget-object v2, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->jobTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    const-string v1, "department"

    iget-object v2, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->department:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 492
    const-string v1, "nickname"

    iget-object v2, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 493
    iget-object v1, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->instantMessages:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lti/modules/titanium/contacts/PersonProxy;->setIMFromMap(Ljava/util/Map;)V

    .line 494
    iget-object v1, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->relatedNames:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lti/modules/titanium/contacts/PersonProxy;->setRelatedNameFromMap(Ljava/util/Map;)V

    .line 495
    iget-object v1, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->websites:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lti/modules/titanium/contacts/PersonProxy;->setWebSiteFromMap(Ljava/util/Map;)V

    .line 496
    const-string v1, "note"

    iget-object v2, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->notes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 497
    const-string v1, "birthday"

    iget-object v2, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    iget-object v1, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->emails:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lti/modules/titanium/contacts/PersonProxy;->setEmailFromMap(Ljava/util/Map;)V

    .line 499
    iget-object v1, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->dates:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lti/modules/titanium/contacts/PersonProxy;->setDateFromMap(Ljava/util/Map;)V

    .line 500
    iget-object v1, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->phones:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lti/modules/titanium/contacts/PersonProxy;->setPhoneFromMap(Ljava/util/Map;)V

    .line 501
    iget-object v1, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->addresses:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lti/modules/titanium/contacts/PersonProxy;->setAddressFromMap(Ljava/util/Map;)V

    .line 502
    const-string v1, "kind"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    const-string v1, "id"

    iget-wide v2, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    iget-boolean v1, p0, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->hasImage:Z

    iput-boolean v1, v0, Lti/modules/titanium/contacts/PersonProxy;->hasImage:Z

    .line 505
    return-object v0
.end method

.method proxify(Lorg/appcelerator/titanium/TiContext;)Lti/modules/titanium/contacts/PersonProxy;
    .locals 1
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 511
    invoke-virtual {p0}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->proxify()Lti/modules/titanium/contacts/PersonProxy;

    move-result-object v0

    return-object v0
.end method
