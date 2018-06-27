.class public Lti/modules/titanium/contacts/ContactsApiLevel5;
.super Lti/modules/titanium/contacts/CommonContactsApi;
.source "ContactsApiLevel5.java"


# static fields
.field protected static BASE_SELECTION:Ljava/lang/String; = null

.field private static Contacts:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static ContactsUri:Landroid/net/Uri; = null

.field protected static DATA_COLUMN_ADDRESS_CITY:I = 0x0

.field protected static DATA_COLUMN_ADDRESS_COUNTRY:I = 0x0

.field protected static DATA_COLUMN_ADDRESS_FULL:I = 0x0

.field protected static DATA_COLUMN_ADDRESS_NEIGHBORHOOD:I = 0x0

.field protected static DATA_COLUMN_ADDRESS_POBOX:I = 0x0

.field protected static DATA_COLUMN_ADDRESS_POSTCODE:I = 0x0

.field protected static DATA_COLUMN_ADDRESS_STATE:I = 0x0

.field protected static DATA_COLUMN_ADDRESS_STREET:I = 0x0

.field protected static DATA_COLUMN_ADDRESS_TYPE:I = 0x0

.field protected static DATA_COLUMN_CONTACT_ID:I = 0x0

.field protected static DATA_COLUMN_DATA1:I = 0x0

.field protected static DATA_COLUMN_DATA10:I = 0x0

.field protected static DATA_COLUMN_DATA2:I = 0x0

.field protected static DATA_COLUMN_DATA3:I = 0x0

.field protected static DATA_COLUMN_DATA4:I = 0x0

.field protected static DATA_COLUMN_DATA5:I = 0x0

.field protected static DATA_COLUMN_DATA6:I = 0x0

.field protected static DATA_COLUMN_DATA7:I = 0x0

.field protected static DATA_COLUMN_DATA8:I = 0x0

.field protected static DATA_COLUMN_DATA9:I = 0x0

.field protected static DATA_COLUMN_DATE_ADDR:I = 0x0

.field protected static DATA_COLUMN_DATE_TYPE:I = 0x0

.field protected static DATA_COLUMN_DEPARTMENT:I = 0x0

.field protected static DATA_COLUMN_DISPLAY_NAME:I = 0x0

.field protected static DATA_COLUMN_EMAIL_ADDR:I = 0x0

.field protected static DATA_COLUMN_EMAIL_TYPE:I = 0x0

.field protected static DATA_COLUMN_EVENT_DATE:I = 0x0

.field protected static DATA_COLUMN_EVENT_TYPE:I = 0x0

.field protected static DATA_COLUMN_IM:I = 0x0

.field protected static DATA_COLUMN_IM_TYPE:I = 0x0

.field protected static DATA_COLUMN_JOB_TITLE:I = 0x0

.field protected static DATA_COLUMN_MIMETYPE:I = 0x0

.field protected static DATA_COLUMN_NAME_FIRST:I = 0x0

.field protected static DATA_COLUMN_NAME_LAST:I = 0x0

.field protected static DATA_COLUMN_NAME_MIDDLE:I = 0x0

.field protected static DATA_COLUMN_NAME_PREFIX:I = 0x0

.field protected static DATA_COLUMN_NAME_SUFFIX:I = 0x0

.field protected static DATA_COLUMN_NICK_NAME:I = 0x0

.field protected static DATA_COLUMN_NOTE:I = 0x0

.field protected static DATA_COLUMN_ORGANIZATION:I = 0x0

.field protected static DATA_COLUMN_PHONE_NUMBER:I = 0x0

.field protected static DATA_COLUMN_PHONE_TYPE:I = 0x0

.field protected static DATA_COLUMN_PHOTO_ID:I = 0x0

.field protected static DATA_COLUMN_RELATED_NAME:I = 0x0

.field protected static DATA_COLUMN_RELATED_NAME_TYPE:I = 0x0

.field protected static DATA_COLUMN_WEBSITE_ADDR:I = 0x0

.field protected static DATA_COLUMN_WEBSITE_TYPE:I = 0x0

.field private static DATA_PROJECTION:[Ljava/lang/String; = null

.field private static DataUri:Landroid/net/Uri; = null

.field private static INConditionForKinds:Ljava/lang/String; = null

.field protected static KIND_ADDRESS:Ljava/lang/String; = null

.field protected static KIND_EMAIL:Ljava/lang/String; = null

.field protected static KIND_EVENT:Ljava/lang/String; = null

.field protected static KIND_IM:Ljava/lang/String; = null

.field protected static KIND_NAME:Ljava/lang/String; = null

.field protected static KIND_NICKNAME:Ljava/lang/String; = null

.field protected static KIND_NOTE:Ljava/lang/String; = null

.field protected static KIND_ORGANIZE:Ljava/lang/String; = null

.field protected static KIND_PHONE:Ljava/lang/String; = null

.field protected static KIND_RELATED_NAME:Ljava/lang/String; = null

.field protected static KIND_WEBSITE:Ljava/lang/String; = null

.field protected static PEOPLE_COL_ID:I = 0x0

.field protected static PEOPLE_COL_NAME:I = 0x0

.field protected static PEOPLE_COL_PHOTO_ID:I = 0x0

.field private static PEOPLE_PROJECTION:[Ljava/lang/String; = null

.field protected static RELATED_NAMES_TYPE:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "TiContacts5"


# instance fields
.field protected loadedOk:Z

.field private openContactPhotoInputStream:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "mimetype"

    aput-object v1, v0, v4

    const-string v1, "photo_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const-string v1, "data1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data10"

    aput-object v2, v0, v1

    sput-object v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_PROJECTION:[Ljava/lang/String;

    .line 79
    sput v3, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_CONTACT_ID:I

    .line 80
    sput v4, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_MIMETYPE:I

    .line 81
    sput v5, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_PHOTO_ID:I

    .line 82
    sput v6, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DISPLAY_NAME:I

    .line 83
    sput v7, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA1:I

    .line 84
    const/4 v0, 0x5

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA2:I

    .line 85
    const/4 v0, 0x6

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA3:I

    .line 86
    const/4 v0, 0x7

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA4:I

    .line 87
    const/16 v0, 0x8

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA5:I

    .line 88
    const/16 v0, 0x9

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA6:I

    .line 89
    const/16 v0, 0xa

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA7:I

    .line 90
    const/16 v0, 0xb

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA8:I

    .line 91
    const/16 v0, 0xc

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA9:I

    .line 92
    const/16 v0, 0xd

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA10:I

    .line 94
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA1:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_NOTE:I

    .line 96
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA1:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_EVENT_DATE:I

    .line 97
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA2:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_EVENT_TYPE:I

    .line 99
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA1:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_EMAIL_ADDR:I

    .line 100
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA2:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_EMAIL_TYPE:I

    .line 102
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA1:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_PHONE_NUMBER:I

    .line 103
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA2:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_PHONE_TYPE:I

    .line 105
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA2:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_NAME_FIRST:I

    .line 106
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA3:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_NAME_LAST:I

    .line 107
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA4:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_NAME_PREFIX:I

    .line 108
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA5:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_NAME_MIDDLE:I

    .line 109
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA6:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_NAME_SUFFIX:I

    .line 111
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA1:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_ADDRESS_FULL:I

    .line 112
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA2:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_ADDRESS_TYPE:I

    .line 113
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA4:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_ADDRESS_STREET:I

    .line 114
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA5:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_ADDRESS_POBOX:I

    .line 115
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA6:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_ADDRESS_NEIGHBORHOOD:I

    .line 116
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA7:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_ADDRESS_CITY:I

    .line 117
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA8:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_ADDRESS_STATE:I

    .line 118
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA9:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_ADDRESS_POSTCODE:I

    .line 119
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA10:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_ADDRESS_COUNTRY:I

    .line 120
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA1:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_NICK_NAME:I

    .line 121
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA1:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_ORGANIZATION:I

    .line 122
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA4:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_JOB_TITLE:I

    .line 123
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA2:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DEPARTMENT:I

    .line 124
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA1:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_IM:I

    .line 125
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA5:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_IM_TYPE:I

    .line 126
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA1:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_RELATED_NAME:I

    .line 127
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA2:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_RELATED_NAME_TYPE:I

    .line 128
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA1:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATE_ADDR:I

    .line 129
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA2:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATE_TYPE:I

    .line 130
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA1:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_WEBSITE_ADDR:I

    .line 131
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_DATA2:I

    sput v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_WEBSITE_TYPE:I

    .line 133
    const-string v0, "vnd.android.cursor.item/organization"

    sput-object v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_ORGANIZE:Ljava/lang/String;

    .line 134
    const-string v0, "vnd.android.cursor.item/name"

    sput-object v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_NAME:Ljava/lang/String;

    .line 135
    const-string v0, "vnd.android.cursor.item/email_v2"

    sput-object v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_EMAIL:Ljava/lang/String;

    .line 136
    const-string v0, "vnd.android.cursor.item/contact_event"

    sput-object v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_EVENT:Ljava/lang/String;

    .line 137
    const-string v0, "vnd.android.cursor.item/note"

    sput-object v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_NOTE:Ljava/lang/String;

    .line 138
    const-string v0, "vnd.android.cursor.item/phone_v2"

    sput-object v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_PHONE:Ljava/lang/String;

    .line 139
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    sput-object v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_ADDRESS:Ljava/lang/String;

    .line 140
    const-string v0, "vnd.android.cursor.item/nickname"

    sput-object v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_NICKNAME:Ljava/lang/String;

    .line 141
    const-string v0, "vnd.android.cursor.item/im"

    sput-object v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_IM:Ljava/lang/String;

    .line 142
    const-string v0, "vnd.android.cursor.item/relation"

    sput-object v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_RELATED_NAME:Ljava/lang/String;

    .line 143
    const-string v0, "vnd.android.cursor.item/website"

    sput-object v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_WEBSITE:Ljava/lang/String;

    .line 145
    const-string v0, "raw_contact_id=? AND mimetype=?"

    sput-object v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->BASE_SELECTION:Ljava/lang/String;

    .line 146
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "assistant"

    aput-object v1, v0, v3

    const-string v1, "brother"

    aput-object v1, v0, v4

    const-string v1, "child"

    aput-object v1, v0, v5

    const-string v1, "domesticPartner"

    aput-object v1, v0, v6

    const-string v1, "father"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "friend"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "manager"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mother"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "parent"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "partner"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "referredBy"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "other"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sister"

    aput-object v2, v0, v1

    sput-object v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->RELATED_NAMES_TYPE:[Ljava/lang/String;

    .line 150
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "photo_id"

    aput-object v1, v0, v5

    sput-object v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->PEOPLE_PROJECTION:[Ljava/lang/String;

    .line 155
    sput v3, Lti/modules/titanium/contacts/ContactsApiLevel5;->PEOPLE_COL_ID:I

    .line 156
    sput v4, Lti/modules/titanium/contacts/ContactsApiLevel5;->PEOPLE_COL_NAME:I

    .line 157
    sput v5, Lti/modules/titanium/contacts/ContactsApiLevel5;->PEOPLE_COL_PHOTO_ID:I

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_ADDRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_EMAIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_EVENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_NOTE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_PHONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_NICKNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_ORGANIZE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_IM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_RELATED_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->KIND_WEBSITE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->INConditionForKinds:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 164
    invoke-direct {p0}, Lti/modules/titanium/contacts/CommonContactsApi;-><init>()V

    .line 166
    iput-boolean v1, p0, Lti/modules/titanium/contacts/ContactsApiLevel5;->loadedOk:Z

    .line 168
    :try_start_0
    const-string v1, "android.provider.ContactsContract$Data"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "CONTENT_URI"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    sput-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->DataUri:Landroid/net/Uri;

    .line 169
    const-string v1, "android.provider.ContactsContract$Contacts"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->Contacts:Ljava/lang/Class;

    .line 170
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->Contacts:Ljava/lang/Class;

    const-string v2, "CONTENT_URI"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    sput-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->ContactsUri:Landroid/net/Uri;

    .line 171
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->Contacts:Ljava/lang/Class;

    const-string v2, "openContactPhotoInputStream"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/net/Uri;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/contacts/ContactsApiLevel5;->openContactPhotoInputStream:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TiContacts5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load android.provider.ContactsContract$Contacts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v0, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 175
    iput-boolean v6, p0, Lti/modules/titanium/contacts/ContactsApiLevel5;->loadedOk:Z

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 182
    invoke-direct {p0}, Lti/modules/titanium/contacts/ContactsApiLevel5;-><init>()V

    .line 183
    return-void
.end method

.method private getPeople(ILjava/lang/String;[Ljava/lang/String;)[Lti/modules/titanium/contacts/PersonProxy;
    .locals 12
    .param p1, "limit"    # I
    .param p2, "additionalCondition"    # Ljava/lang/String;
    .param p3, "additionalSelectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0}, Lti/modules/titanium/contacts/ContactsApiLevel5;->hasContactsPermissions()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const-string v1, "TiContacts5"

    const-string v2, "Contacts permissions missing"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    return-object v0

    .line 198
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    if-nez v1, :cond_1

    .line 199
    const-string v1, "TiContacts5"

    const-string v2, "Failed to call getPeople(), application is null"

    const-string v4, "DEBUG_MODE"

    invoke-static {v1, v2, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    .line 204
    .local v6, "activity":Landroid/app/Activity;
    if-nez v6, :cond_2

    .line 205
    const-string v1, "TiContacts5"

    const-string v2, "Failed to call getPeople(), activity is null"

    const-string v4, "DEBUG_MODE"

    invoke-static {v1, v2, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_2
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 211
    .local v11, "persons":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimetype IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->INConditionForKinds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "condition":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    :cond_3
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->DataUri:Landroid/net/Uri;

    sget-object v2, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v5, "display_name COLLATE LOCALIZED asc, contact_id asc, mimetype asc, is_super_primary desc, is_primary desc"

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 224
    .local v7, "cursor":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-ge v0, p1, :cond_5

    .line 225
    sget v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_COLUMN_CONTACT_ID:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 227
    .local v8, "id":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;

    .line 234
    .local v10, "person":Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;
    :goto_2
    invoke-virtual {v10, v7}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->addDataFromL5Cursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 230
    .end local v10    # "person":Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;
    :cond_4
    new-instance v10, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;

    invoke-direct {v10}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;-><init>()V

    .line 231
    .restart local v10    # "person":Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;
    invoke-virtual {v10, v7}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->addPersonInfoFromL5DataRow(Landroid/database/Cursor;)V

    .line 232
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 237
    .end local v8    # "id":J
    .end local v10    # "person":Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 239
    invoke-virtual {p0, v11}, Lti/modules/titanium/contacts/ContactsApiLevel5;->proxifyPeople(Ljava/util/Map;)[Lti/modules/titanium/contacts/PersonProxy;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected addContact(Lorg/appcelerator/kroll/KrollDict;)Lti/modules/titanium/contacts/PersonProxy;
    .locals 70
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 546
    if-eqz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/contacts/ContactsApiLevel5;->hasContactsPermissions()Z

    move-result v3

    if-nez v3, :cond_1

    .line 547
    :cond_0
    const/16 v64, 0x0

    .line 704
    :goto_0
    return-object v64

    .line 550
    :cond_1
    const-string v53, ""

    .line 551
    .local v53, "firstName":Ljava/lang/String;
    const-string v61, ""

    .line 552
    .local v61, "lastName":Ljava/lang/String;
    const-string v62, ""

    .line 553
    .local v62, "middleName":Ljava/lang/String;
    const-string v7, ""

    .line 554
    .local v7, "displayName":Ljava/lang/String;
    const-string v17, ""

    .line 555
    .local v17, "birthday":Ljava/lang/String;
    const-wide/16 v10, -0x1

    .line 557
    .local v10, "rawContactId":J
    new-instance v64, Lti/modules/titanium/contacts/PersonProxy;

    invoke-direct/range {v64 .. v64}, Lti/modules/titanium/contacts/PersonProxy;-><init>()V

    .line 558
    .local v64, "newContact":Lti/modules/titanium/contacts/PersonProxy;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v4, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v5, "account_type"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v5, "account_name"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    const-string v3, "firstName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 565
    const-string v3, "firstName"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 566
    const-string v3, "firstName"

    move-object/from16 v0, v64

    move-object/from16 v1, v53

    invoke-virtual {v0, v3, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    :cond_2
    const-string v3, "lastName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 570
    const-string v3, "lastName"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 571
    const-string v3, "lastName"

    move-object/from16 v0, v64

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 574
    :cond_3
    const-string v3, "middleName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 575
    const-string v3, "middleName"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 576
    const-string v3, "middleName"

    move-object/from16 v0, v64

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v61

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 581
    const-string v5, "vnd.android.cursor.item/name"

    const-string v6, "data1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lti/modules/titanium/contacts/ContactsApiLevel5;->updateContactField(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;IJ)V

    .line 583
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 584
    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Lti/modules/titanium/contacts/PersonProxy;->setFullName(Ljava/lang/String;)V

    .line 587
    :cond_5
    const-string v3, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 588
    const-string v3, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v66

    .line 589
    .local v66, "phoneNumbers":Ljava/lang/Object;
    move-object/from16 v0, v66

    instance-of v3, v0, Ljava/util/HashMap;

    if-eqz v3, :cond_6

    move-object/from16 v65, v66

    .line 590
    check-cast v65, Ljava/util/HashMap;

    .line 591
    .local v65, "phoneHashMap":Ljava/util/HashMap;
    const-string v3, "phone"

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    invoke-virtual {v0, v3, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v4, v1, v10, v11}, Lti/modules/titanium/contacts/ContactsApiLevel5;->parsePhone(Ljava/util/ArrayList;Ljava/util/HashMap;J)V

    .line 596
    .end local v65    # "phoneHashMap":Ljava/util/HashMap;
    .end local v66    # "phoneNumbers":Ljava/lang/Object;
    :cond_6
    const-string v3, "birthday"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 597
    const-string v3, "birthday"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 598
    const-string v3, "birthday"

    move-object/from16 v0, v64

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    const-string v15, "vnd.android.cursor.item/contact_event"

    const-string v16, "data1"

    const-string v18, "data2"

    const/16 v19, 0x3

    move-object/from16 v13, p0

    move-object v14, v4

    move-wide/from16 v20, v10

    invoke-virtual/range {v13 .. v21}, Lti/modules/titanium/contacts/ContactsApiLevel5;->updateContactField(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;IJ)V

    .line 602
    :cond_7
    const-string v3, "address"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 603
    const-string v3, "address"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 604
    .local v2, "address":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/HashMap;

    if-eqz v3, :cond_8

    move-object v12, v2

    .line 605
    check-cast v12, Ljava/util/HashMap;

    .line 606
    .local v12, "addressHashMap":Ljava/util/HashMap;
    const-string v3, "address"

    move-object/from16 v0, v64

    invoke-virtual {v0, v3, v12}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 607
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v10, v11}, Lti/modules/titanium/contacts/ContactsApiLevel5;->parseAddress(Ljava/util/ArrayList;Ljava/util/HashMap;J)V

    .line 611
    .end local v2    # "address":Ljava/lang/Object;
    .end local v12    # "addressHashMap":Ljava/util/HashMap;
    :cond_8
    const-string v3, "instantMessage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 612
    const-string v3, "instantMessage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    .line 613
    .local v60, "instantMsg":Ljava/lang/Object;
    move-object/from16 v0, v60

    instance-of v3, v0, Ljava/util/HashMap;

    if-eqz v3, :cond_9

    move-object/from16 v59, v60

    .line 614
    check-cast v59, Ljava/util/HashMap;

    .line 615
    .local v59, "instantHashMap":Ljava/util/HashMap;
    const-string v3, "instantMessage"

    move-object/from16 v0, v64

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 616
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v4, v1, v10, v11}, Lti/modules/titanium/contacts/ContactsApiLevel5;->parseIm(Ljava/util/ArrayList;Ljava/util/HashMap;J)V

    .line 620
    .end local v59    # "instantHashMap":Ljava/util/HashMap;
    .end local v60    # "instantMsg":Ljava/lang/Object;
    :cond_9
    const-string v3, "organization"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 621
    const-string v3, "organization"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 622
    .local v23, "organization":Ljava/lang/String;
    const-string v3, "organization"

    move-object/from16 v0, v64

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 623
    const-string v21, "vnd.android.cursor.item/organization"

    const-string v22, "data1"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, v4

    move-wide/from16 v26, v10

    invoke-virtual/range {v19 .. v27}, Lti/modules/titanium/contacts/ContactsApiLevel5;->updateContactField(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;IJ)V

    .line 626
    .end local v23    # "organization":Ljava/lang/String;
    :cond_a
    const-string v3, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 627
    const-string v3, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v69

    .line 628
    .local v69, "urlObject":Ljava/lang/Object;
    move-object/from16 v0, v69

    instance-of v3, v0, Ljava/util/HashMap;

    if-eqz v3, :cond_b

    move-object/from16 v68, v69

    .line 629
    check-cast v68, Ljava/util/HashMap;

    .line 630
    .local v68, "urlHashMap":Ljava/util/HashMap;
    const-string v3, "url"

    move-object/from16 v0, v64

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v4, v1, v10, v11}, Lti/modules/titanium/contacts/ContactsApiLevel5;->parseURL(Ljava/util/ArrayList;Ljava/util/HashMap;J)V

    .line 635
    .end local v68    # "urlHashMap":Ljava/util/HashMap;
    .end local v69    # "urlObject":Ljava/lang/Object;
    :cond_b
    const-string v3, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 636
    const-string v3, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    .line 637
    .local v52, "emailObject":Ljava/lang/Object;
    move-object/from16 v0, v52

    instance-of v3, v0, Ljava/util/HashMap;

    if-eqz v3, :cond_c

    move-object/from16 v51, v52

    .line 638
    check-cast v51, Ljava/util/HashMap;

    .line 639
    .local v51, "emailHashMap":Ljava/util/HashMap;
    const-string v3, "email"

    move-object/from16 v0, v64

    move-object/from16 v1, v51

    invoke-virtual {v0, v3, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 640
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v4, v1, v10, v11}, Lti/modules/titanium/contacts/ContactsApiLevel5;->parseEmail(Ljava/util/ArrayList;Ljava/util/HashMap;J)V

    .line 644
    .end local v51    # "emailHashMap":Ljava/util/HashMap;
    .end local v52    # "emailObject":Ljava/lang/Object;
    :cond_c
    const-string v3, "relatedNames"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 645
    const-string v3, "relatedNames"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    .line 646
    .local v63, "namesObject":Ljava/lang/Object;
    move-object/from16 v0, v63

    instance-of v3, v0, Ljava/util/HashMap;

    if-eqz v3, :cond_e

    move-object/from16 v26, v63

    .line 647
    check-cast v26, Ljava/util/HashMap;

    .line 648
    .local v26, "namesHashMap":Ljava/util/HashMap;
    const-string v3, "relatedNames"

    move-object/from16 v0, v64

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 649
    const/16 v54, 0x0

    .local v54, "i":I
    :goto_1
    sget-object v3, Lti/modules/titanium/contacts/ContactsApiLevel5;->RELATED_NAMES_TYPE:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v54

    if-ge v0, v3, :cond_e

    .line 650
    sget-object v3, Lti/modules/titanium/contacts/ContactsApiLevel5;->RELATED_NAMES_TYPE:[Ljava/lang/String;

    aget-object v3, v3, v54

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 651
    sget-object v3, Lti/modules/titanium/contacts/ContactsApiLevel5;->RELATED_NAMES_TYPE:[Ljava/lang/String;

    aget-object v27, v3, v54

    add-int/lit8 v29, v54, 0x1

    move-object/from16 v25, p0

    move-object/from16 v28, v4

    move-wide/from16 v30, v10

    invoke-virtual/range {v25 .. v31}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processRelation(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 649
    :cond_d
    add-int/lit8 v54, v54, 0x1

    goto :goto_1

    .line 657
    .end local v26    # "namesHashMap":Ljava/util/HashMap;
    .end local v54    # "i":I
    .end local v63    # "namesObject":Ljava/lang/Object;
    :cond_e
    const-string v3, "note"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 658
    const-string v3, "note"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 659
    .local v31, "note":Ljava/lang/String;
    const-string v3, "note"

    move-object/from16 v0, v64

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 660
    const-string v29, "vnd.android.cursor.item/note"

    const-string v30, "data1"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v27, p0

    move-object/from16 v28, v4

    move-wide/from16 v34, v10

    invoke-virtual/range {v27 .. v35}, Lti/modules/titanium/contacts/ContactsApiLevel5;->updateContactField(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;IJ)V

    .line 663
    .end local v31    # "note":Ljava/lang/String;
    :cond_f
    const-string v3, "nickname"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 664
    const-string v3, "nickname"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 665
    .local v37, "nickname":Ljava/lang/String;
    const-string v3, "nickname"

    move-object/from16 v0, v64

    move-object/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 666
    const-string v35, "vnd.android.cursor.item/nickname"

    const-string v36, "data1"

    const-string v38, "data2"

    const/16 v39, 0x1

    move-object/from16 v33, p0

    move-object/from16 v34, v4

    move-wide/from16 v40, v10

    invoke-virtual/range {v33 .. v41}, Lti/modules/titanium/contacts/ContactsApiLevel5;->updateContactField(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;IJ)V

    .line 669
    .end local v37    # "nickname":Ljava/lang/String;
    :cond_10
    const-string v3, "image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 670
    const-string v3, "image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    .line 671
    .local v58, "imageObject":Ljava/lang/Object;
    move-object/from16 v0, v58

    instance-of v3, v0, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v3, :cond_11

    move-object/from16 v55, v58

    .line 672
    check-cast v55, Lorg/appcelerator/titanium/TiBlob;

    .line 673
    .local v55, "imageBlob":Lorg/appcelerator/titanium/TiBlob;
    move-object/from16 v0, v64

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lti/modules/titanium/contacts/PersonProxy;->setImage(Lorg/appcelerator/titanium/TiBlob;)V

    .line 674
    const-string v41, "vnd.android.cursor.item/photo"

    const-string v42, "data15"

    invoke-virtual/range {v55 .. v55}, Lorg/appcelerator/titanium/TiBlob;->getData()Ljava/lang/Object;

    move-result-object v43

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v39, p0

    move-object/from16 v40, v4

    move-wide/from16 v46, v10

    invoke-virtual/range {v39 .. v47}, Lti/modules/titanium/contacts/ContactsApiLevel5;->updateContactField(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;IJ)V

    .line 678
    .end local v55    # "imageBlob":Lorg/appcelerator/titanium/TiBlob;
    .end local v58    # "imageObject":Ljava/lang/Object;
    :cond_11
    const-string v3, "date"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 679
    const-string v3, "date"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    .line 680
    .local v49, "dateObject":Ljava/lang/Object;
    move-object/from16 v0, v49

    instance-of v3, v0, Ljava/util/HashMap;

    if-eqz v3, :cond_12

    move-object/from16 v48, v49

    .line 681
    check-cast v48, Ljava/util/HashMap;

    .line 682
    .local v48, "dateHashMap":Ljava/util/HashMap;
    const-string v3, "date"

    move-object/from16 v0, v64

    move-object/from16 v1, v48

    invoke-virtual {v0, v3, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 683
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v4, v1, v10, v11}, Lti/modules/titanium/contacts/ContactsApiLevel5;->parseDate(Ljava/util/ArrayList;Ljava/util/HashMap;J)V

    .line 689
    .end local v48    # "dateHashMap":Ljava/util/HashMap;
    .end local v49    # "dateObject":Ljava/lang/Object;
    :cond_12
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "com.android.contacts"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v67

    .line 690
    .local v67, "providerResult":[Landroid/content/ContentProviderResult;
    const/4 v3, 0x0

    aget-object v3, v67, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v56

    .line 691
    .local v56, "id":J
    const-string v3, "id"

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v64

    invoke-virtual {v0, v3, v5}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 693
    .end local v56    # "id":J
    .end local v67    # "providerResult":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v50

    .line 695
    .local v50, "e":Landroid/os/RemoteException;
    const-string v3, "TiContacts5"

    const-string v5, "RemoteException - Failed to add new contact into database"

    invoke-static {v3, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 698
    .end local v50    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v50

    .line 700
    .local v50, "e":Landroid/content/OperationApplicationException;
    const-string v3, "TiContacts5"

    const-string v5, "OperationApplicationException - Failed to add new contact into database"

    invoke-static {v3, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/16 v64, 0x0

    goto/16 :goto_0
.end method

.method protected deleteField(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 831
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    return-void
.end method

.method protected getAllPeople(I)[Lti/modules/titanium/contacts/PersonProxy;
    .locals 1
    .param p1, "limit"    # I

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, p1, v0, v0}, Lti/modules/titanium/contacts/ContactsApiLevel5;->getPeople(ILjava/lang/String;[Ljava/lang/String;)[Lti/modules/titanium/contacts/PersonProxy;

    move-result-object v0

    return-object v0
.end method

.method protected getIntentForContactsPicker()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Lti/modules/titanium/contacts/ContactsApiLevel5;->ContactsUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected getInternalContactImage(J)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v0, 0x0

    .line 799
    invoke-virtual {p0}, Lti/modules/titanium/contacts/ContactsApiLevel5;->hasContactsPermissions()Z

    move-result v6

    if-nez v6, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-object v0

    .line 803
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v6

    if-nez v6, :cond_2

    .line 804
    const-string v6, "TiContacts5"

    const-string v7, "Failed to call getInternalContactImage(), application is null"

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 808
    :cond_2
    sget-object v6, Lti/modules/titanium/contacts/ContactsApiLevel5;->ContactsUri:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 809
    .local v5, "uri":Landroid/net/Uri;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 810
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 812
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_0
    iget-object v6, p0, Lti/modules/titanium/contacts/ContactsApiLevel5;->openContactPhotoInputStream:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "stream":Ljava/io/InputStream;
    check-cast v3, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 817
    .restart local v3    # "stream":Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 820
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 822
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 823
    :catch_0
    move-exception v2

    .line 824
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "TiContacts5"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to close stream from openContactPhotoInputStream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v2, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_0

    .line 813
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    .line 814
    .local v4, "t":Ljava/lang/Throwable;
    const-string v6, "TiContacts5"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not invoke openContactPhotoInputStream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v4, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getPeopleWithName(Ljava/lang/String;)[Lti/modules/titanium/contacts/PersonProxy;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x25

    .line 251
    const v0, 0x7fffffff

    const-string v1, "display_name like ? or display_name like ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "% "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lti/modules/titanium/contacts/ContactsApiLevel5;->getPeople(ILjava/lang/String;[Ljava/lang/String;)[Lti/modules/titanium/contacts/PersonProxy;

    move-result-object v0

    return-object v0
.end method

.method protected getPersonById(J)Lti/modules/titanium/contacts/PersonProxy;
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 737
    invoke-virtual {p0}, Lti/modules/titanium/contacts/ContactsApiLevel5;->hasContactsPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-object v3

    .line 741
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    if-nez v0, :cond_2

    .line 742
    const-string v0, "TiContacts5"

    const-string v1, "Failed to call getPersonById(), application is null"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 746
    :cond_2
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    .line 747
    .local v6, "activity":Landroid/app/Activity;
    if-nez v6, :cond_3

    .line 748
    const-string v0, "TiContacts5"

    const-string v1, "Failed to call getPersonById(), activity is null"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 752
    :cond_3
    const/4 v8, 0x0

    .line 755
    .local v8, "person":Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->ContactsUri:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lti/modules/titanium/contacts/ContactsApiLevel5;->PEOPLE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 759
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 760
    new-instance v8, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;

    .end local v8    # "person":Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;
    invoke-direct {v8}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;-><init>()V

    .line 761
    .restart local v8    # "person":Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;
    invoke-virtual {v8, v7}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->addPersonInfoFromL5PersonRow(Landroid/database/Cursor;)V

    .line 764
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 766
    if-eqz v8, :cond_0

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimetype IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->INConditionForKinds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND contact_id = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 774
    .local v3, "condition":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->DataUri:Landroid/net/Uri;

    sget-object v2, Lti/modules/titanium/contacts/ContactsApiLevel5;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const-string v5, "mimetype asc, is_super_primary desc, is_primary desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 781
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 782
    invoke-virtual {v8, v7}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->addDataFromL5Cursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 784
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 785
    invoke-virtual {v8}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->proxify()Lti/modules/titanium/contacts/PersonProxy;

    move-result-object v3

    goto/16 :goto_0
.end method

.method protected getPersonByUri(Landroid/net/Uri;)Lti/modules/titanium/contacts/PersonProxy;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 791
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 792
    .local v0, "id":J
    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/contacts/ContactsApiLevel5;->getPersonById(J)Lti/modules/titanium/contacts/PersonProxy;

    move-result-object v2

    return-object v2
.end method

.method protected modifyAddress(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V
    .locals 8
    .param p2, "person"    # Lti/modules/titanium/contacts/PersonProxy;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lti/modules/titanium/contacts/PersonProxy;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 946
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Lti/modules/titanium/contacts/PersonProxy;->getId()J

    move-result-wide v4

    const-string v6, "address"

    const-string v7, "vnd.android.cursor.item/postal-address_v2"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyField(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 947
    return-void
.end method

.method protected modifyBirthday(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V
    .locals 11
    .param p2, "person"    # Lti/modules/titanium/contacts/PersonProxy;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lti/modules/titanium/contacts/PersonProxy;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x3

    .line 865
    const-string v1, "birthday"

    invoke-virtual {p2, v1}, Lti/modules/titanium/contacts/PersonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 866
    .local v5, "birthday":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lti/modules/titanium/contacts/ContactsApiLevel5;->BASE_SELECTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "selection":Ljava/lang/String;
    new-array v10, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v10, v1

    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/contact_event"

    aput-object v2, v10, v1

    const/4 v1, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 868
    .local v10, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0, p1, v0, v10}, Lti/modules/titanium/contacts/ContactsApiLevel5;->deleteField(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)V

    .line 869
    const-string v3, "vnd.android.cursor.item/contact_event"

    const-string v4, "data1"

    const-string v6, "data2"

    invoke-virtual {p2}, Lti/modules/titanium/contacts/PersonProxy;->getId()J

    move-result-wide v8

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lti/modules/titanium/contacts/ContactsApiLevel5;->updateContactField(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;IJ)V

    .line 870
    return-void
.end method

.method protected modifyContact(Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V
    .locals 4
    .param p1, "person"    # Lti/modules/titanium/contacts/PersonProxy;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 976
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lti/modules/titanium/contacts/PersonProxy;->isFieldModified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 978
    invoke-virtual {p0, v1, p1, p2}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyName(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V

    .line 981
    :cond_0
    const-string v2, "birthday"

    invoke-virtual {p1, v2}, Lti/modules/titanium/contacts/PersonProxy;->isFieldModified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 982
    invoke-virtual {p0, v1, p1, p2}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyBirthday(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V

    .line 985
    :cond_1
    const-string v2, "organization"

    invoke-virtual {p1, v2}, Lti/modules/titanium/contacts/PersonProxy;->isFieldModified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 986
    invoke-virtual {p0, v1, p1, p2}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyOrganization(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V

    .line 989
    :cond_2
    const-string v2, "note"

    invoke-virtual {p1, v2}, Lti/modules/titanium/contacts/PersonProxy;->isFieldModified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 990
    invoke-virtual {p0, v1, p1, p2}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyNote(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V

    .line 993
    :cond_3
    const-string v2, "nickname"

    invoke-virtual {p1, v2}, Lti/modules/titanium/contacts/PersonProxy;->isFieldModified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 994
    invoke-virtual {p0, v1, p1, p2}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyNickName(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V

    .line 997
    :cond_4
    const-string v2, "image"

    invoke-virtual {p1, v2}, Lti/modules/titanium/contacts/PersonProxy;->isFieldModified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 998
    invoke-virtual {p0, v1, p1, p2}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyImage(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V

    .line 1001
    :cond_5
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Lti/modules/titanium/contacts/PersonProxy;->isFieldModified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1002
    invoke-virtual {p0, v1, p1, p2}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyPhone(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V

    .line 1005
    :cond_6
    const-string v2, "address"

    invoke-virtual {p1, v2}, Lti/modules/titanium/contacts/PersonProxy;->isFieldModified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1006
    invoke-virtual {p0, v1, p1, p2}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyAddress(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V

    .line 1009
    :cond_7
    const-string v2, "instantMessage"

    invoke-virtual {p1, v2}, Lti/modules/titanium/contacts/PersonProxy;->isFieldModified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1010
    invoke-virtual {p0, v1, p1, p2}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyIm(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V

    .line 1013
    :cond_8
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lti/modules/titanium/contacts/PersonProxy;->isFieldModified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1014
    invoke-virtual {p0, v1, p1, p2}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyUrl(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V

    .line 1017
    :cond_9
    const-string v2, "email"

    invoke-virtual {p1, v2}, Lti/modules/titanium/contacts/PersonProxy;->isFieldModified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1018
    invoke-virtual {p0, v1, p1, p2}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyEmail(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V

    .line 1021
    :cond_a
    const-string v2, "relatedNames"

    invoke-virtual {p1, v2}, Lti/modules/titanium/contacts/PersonProxy;->isFieldModified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1022
    invoke-virtual {p0, v1, p1, p2}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyRelatedNames(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V

    .line 1025
    :cond_b
    const-string v2, "date"

    invoke-virtual {p1, v2}, Lti/modules/titanium/contacts/PersonProxy;->isFieldModified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1026
    invoke-virtual {p0, v1, p1, p2}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyDate(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V

    .line 1029
    :cond_c
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1030
    invoke-virtual {p1}, Lti/modules/titanium/contacts/PersonProxy;->finishModification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1037
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TiContacts5"

    const-string v3, "RemoteException - unable to save changes to contact Database."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1033
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1034
    .local v0, "e":Landroid/content/OperationApplicationException;
    const-string v2, "TiContacts5"

    const-string v3, "OperationApplicationException - unable to save changes to contact Database."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected modifyDate(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V
    .locals 8
    .param p2, "person"    # Lti/modules/titanium/contacts/PersonProxy;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lti/modules/titanium/contacts/PersonProxy;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 971
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Lti/modules/titanium/contacts/PersonProxy;->getId()J

    move-result-wide v4

    const-string v6, "date"

    const-string v7, "vnd.android.cursor.item/contact_event"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyField(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 972
    return-void
.end method

.method protected modifyEmail(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V
    .locals 8
    .param p2, "person"    # Lti/modules/titanium/contacts/PersonProxy;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lti/modules/titanium/contacts/PersonProxy;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 961
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Lti/modules/titanium/contacts/PersonProxy;->getId()J

    move-result-wide v4

    const-string v6, "email"

    const-string v7, "vnd.android.cursor.item/email_v2"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyField(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 962
    return-void
.end method

.method protected modifyField(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p2, "person"    # Lti/modules/titanium/contacts/PersonProxy;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "rawContactId"    # J
    .param p6, "field"    # Ljava/lang/String;
    .param p7, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lti/modules/titanium/contacts/PersonProxy;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 907
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lti/modules/titanium/contacts/PersonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 908
    .local v4, "fieldObject":Ljava/lang/Object;
    instance-of v5, v4, Ljava/util/HashMap;

    if-eqz v5, :cond_0

    move-object v6, v4

    .line 909
    check-cast v6, Ljava/util/HashMap;

    .line 910
    .local v6, "fieldHashMap":Ljava/util/HashMap;
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v5, 0x0

    aput-object p3, v17, v5

    const/4 v5, 0x1

    aput-object p7, v17, v5

    .line 911
    .local v17, "selectionArgs":[Ljava/lang/String;
    sget-object v5, Lti/modules/titanium/contacts/ContactsApiLevel5;->BASE_SELECTION:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v5, v2}, Lti/modules/titanium/contacts/ContactsApiLevel5;->deleteField(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)V

    .line 912
    const-string v5, "phone"

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 913
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v6, v2, v3}, Lti/modules/titanium/contacts/ContactsApiLevel5;->parsePhone(Ljava/util/ArrayList;Ljava/util/HashMap;J)V

    .line 938
    .end local v6    # "fieldHashMap":Ljava/util/HashMap;
    .end local v17    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 914
    .restart local v6    # "fieldHashMap":Ljava/util/HashMap;
    .restart local v17    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    const-string v5, "address"

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 915
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v6, v2, v3}, Lti/modules/titanium/contacts/ContactsApiLevel5;->parseAddress(Ljava/util/ArrayList;Ljava/util/HashMap;J)V

    goto :goto_0

    .line 916
    :cond_2
    const-string v5, "instantMessage"

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 917
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v6, v2, v3}, Lti/modules/titanium/contacts/ContactsApiLevel5;->parseIm(Ljava/util/ArrayList;Ljava/util/HashMap;J)V

    goto :goto_0

    .line 918
    :cond_3
    const-string v5, "url"

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 919
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v6, v2, v3}, Lti/modules/titanium/contacts/ContactsApiLevel5;->parseURL(Ljava/util/ArrayList;Ljava/util/HashMap;J)V

    goto :goto_0

    .line 920
    :cond_4
    const-string v5, "email"

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 921
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v6, v2, v3}, Lti/modules/titanium/contacts/ContactsApiLevel5;->parseEmail(Ljava/util/ArrayList;Ljava/util/HashMap;J)V

    goto :goto_0

    .line 922
    :cond_5
    const-string v5, "relatedNames"

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 923
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    sget-object v5, Lti/modules/titanium/contacts/ContactsApiLevel5;->RELATED_NAMES_TYPE:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, v16

    if-ge v0, v5, :cond_0

    .line 924
    sget-object v5, Lti/modules/titanium/contacts/ContactsApiLevel5;->RELATED_NAMES_TYPE:[Ljava/lang/String;

    aget-object v5, v5, v16

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 925
    sget-object v5, Lti/modules/titanium/contacts/ContactsApiLevel5;->RELATED_NAMES_TYPE:[Ljava/lang/String;

    aget-object v7, v5, v16

    add-int/lit8 v9, v16, 0x1

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-wide/from16 v10, p4

    invoke-virtual/range {v5 .. v11}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processRelation(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 923
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 928
    .end local v16    # "i":I
    :cond_7
    const-string v5, "date"

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 929
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v6, v2, v3}, Lti/modules/titanium/contacts/ContactsApiLevel5;->parseDate(Ljava/util/ArrayList;Ljava/util/HashMap;J)V

    .line 931
    const-string v5, "birthday"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lti/modules/titanium/contacts/PersonProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 932
    const-string v5, "birthday"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lti/modules/titanium/contacts/PersonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 933
    .local v11, "birthday":Ljava/lang/String;
    const-string v9, "vnd.android.cursor.item/contact_event"

    const-string v10, "data1"

    const-string v12, "data2"

    const/4 v13, 0x3

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v14, p4

    invoke-virtual/range {v7 .. v15}, Lti/modules/titanium/contacts/ContactsApiLevel5;->updateContactField(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;IJ)V

    goto/16 :goto_0
.end method

.method protected modifyIm(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V
    .locals 8
    .param p2, "person"    # Lti/modules/titanium/contacts/PersonProxy;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lti/modules/titanium/contacts/PersonProxy;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 951
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Lti/modules/titanium/contacts/PersonProxy;->getId()J

    move-result-wide v4

    const-string v6, "instantMessage"

    const-string v7, "vnd.android.cursor.item/im"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyField(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 952
    return-void
.end method

.method protected modifyImage(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V
    .locals 11
    .param p2, "person"    # Lti/modules/titanium/contacts/PersonProxy;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lti/modules/titanium/contacts/PersonProxy;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    .line 899
    invoke-virtual {p2}, Lti/modules/titanium/contacts/PersonProxy;->getImage()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    .line 900
    .local v0, "imageBlob":Lorg/appcelerator/titanium/TiBlob;
    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/String;

    aput-object p3, v10, v7

    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/photo"

    aput-object v2, v10, v1

    .line 901
    .local v10, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->BASE_SELECTION:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v10}, Lti/modules/titanium/contacts/ContactsApiLevel5;->deleteField(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)V

    .line 902
    const-string v3, "vnd.android.cursor.item/photo"

    const-string v4, "data15"

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBlob;->getData()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p2}, Lti/modules/titanium/contacts/PersonProxy;->getId()J

    move-result-wide v8

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lti/modules/titanium/contacts/ContactsApiLevel5;->updateContactField(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;IJ)V

    .line 903
    return-void
.end method

.method protected modifyName(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V
    .locals 13
    .param p2, "person"    # Lti/modules/titanium/contacts/PersonProxy;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lti/modules/titanium/contacts/PersonProxy;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 838
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v0, ""

    .line 839
    .local v0, "firstName":Ljava/lang/String;
    const-string v10, ""

    .line 840
    .local v10, "lastName":Ljava/lang/String;
    const-string v11, ""

    .line 841
    .local v11, "middleName":Ljava/lang/String;
    const-string v5, ""

    .line 843
    .local v5, "displayName":Ljava/lang/String;
    const-string v1, "firstName"

    invoke-virtual {p2, v1}, Lti/modules/titanium/contacts/PersonProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    const-string v1, "firstName"

    invoke-virtual {p2, v1}, Lti/modules/titanium/contacts/PersonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 847
    :cond_0
    const-string v1, "lastName"

    invoke-virtual {p2, v1}, Lti/modules/titanium/contacts/PersonProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 848
    const-string v1, "lastName"

    invoke-virtual {p2, v1}, Lti/modules/titanium/contacts/PersonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 851
    :cond_1
    const-string v1, "middleName"

    invoke-virtual {p2, v1}, Lti/modules/titanium/contacts/PersonProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 852
    const-string v1, "middleName"

    invoke-virtual {p2, v1}, Lti/modules/titanium/contacts/PersonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 855
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 856
    invoke-virtual {p2, v5}, Lti/modules/titanium/contacts/PersonProxy;->setFullName(Ljava/lang/String;)V

    .line 858
    const/4 v1, 0x2

    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v12, v1

    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/name"

    aput-object v2, v12, v1

    .line 859
    .local v12, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->BASE_SELECTION:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v12}, Lti/modules/titanium/contacts/ContactsApiLevel5;->deleteField(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)V

    .line 860
    const-string v3, "vnd.android.cursor.item/name"

    const-string v4, "data1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2}, Lti/modules/titanium/contacts/PersonProxy;->getId()J

    move-result-wide v8

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lti/modules/titanium/contacts/ContactsApiLevel5;->updateContactField(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;IJ)V

    .line 861
    return-void
.end method

.method protected modifyNickName(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V
    .locals 11
    .param p2, "person"    # Lti/modules/titanium/contacts/PersonProxy;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lti/modules/titanium/contacts/PersonProxy;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x1

    .line 890
    const-string v1, "nickname"

    invoke-virtual {p2, v1}, Lti/modules/titanium/contacts/PersonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 891
    .local v5, "nickname":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lti/modules/titanium/contacts/ContactsApiLevel5;->BASE_SELECTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v10, v1

    const-string v1, "vnd.android.cursor.item/nickname"

    aput-object v1, v10, v7

    const/4 v1, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 893
    .local v10, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0, p1, v0, v10}, Lti/modules/titanium/contacts/ContactsApiLevel5;->deleteField(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)V

    .line 894
    const-string v3, "vnd.android.cursor.item/nickname"

    const-string v4, "data1"

    const-string v6, "data2"

    invoke-virtual {p2}, Lti/modules/titanium/contacts/PersonProxy;->getId()J

    move-result-wide v8

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lti/modules/titanium/contacts/ContactsApiLevel5;->updateContactField(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;IJ)V

    .line 895
    return-void
.end method

.method protected modifyNote(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V
    .locals 10
    .param p2, "person"    # Lti/modules/titanium/contacts/PersonProxy;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lti/modules/titanium/contacts/PersonProxy;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    .line 882
    const-string v1, "note"

    invoke-virtual {p2, v1}, Lti/modules/titanium/contacts/PersonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 883
    .local v5, "note":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    aput-object p3, v0, v7

    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/note"

    aput-object v2, v0, v1

    .line 884
    .local v0, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->BASE_SELECTION:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lti/modules/titanium/contacts/ContactsApiLevel5;->deleteField(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)V

    .line 885
    const-string v3, "vnd.android.cursor.item/note"

    const-string v4, "data1"

    const/4 v6, 0x0

    invoke-virtual {p2}, Lti/modules/titanium/contacts/PersonProxy;->getId()J

    move-result-wide v8

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lti/modules/titanium/contacts/ContactsApiLevel5;->updateContactField(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;IJ)V

    .line 886
    return-void
.end method

.method protected modifyOrganization(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V
    .locals 10
    .param p2, "person"    # Lti/modules/titanium/contacts/PersonProxy;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lti/modules/titanium/contacts/PersonProxy;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    .line 874
    const-string v1, "organization"

    invoke-virtual {p2, v1}, Lti/modules/titanium/contacts/PersonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 875
    .local v5, "company":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    aput-object p3, v0, v7

    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/organization"

    aput-object v2, v0, v1

    .line 876
    .local v0, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lti/modules/titanium/contacts/ContactsApiLevel5;->BASE_SELECTION:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lti/modules/titanium/contacts/ContactsApiLevel5;->deleteField(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)V

    .line 877
    const-string v3, "vnd.android.cursor.item/organization"

    const-string v4, "data1"

    const/4 v6, 0x0

    invoke-virtual {p2}, Lti/modules/titanium/contacts/PersonProxy;->getId()J

    move-result-wide v8

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lti/modules/titanium/contacts/ContactsApiLevel5;->updateContactField(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;IJ)V

    .line 878
    return-void
.end method

.method protected modifyPhone(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V
    .locals 8
    .param p2, "person"    # Lti/modules/titanium/contacts/PersonProxy;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lti/modules/titanium/contacts/PersonProxy;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 941
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Lti/modules/titanium/contacts/PersonProxy;->getId()J

    move-result-wide v4

    const-string v6, "phone"

    const-string v7, "vnd.android.cursor.item/phone_v2"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyField(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 942
    return-void
.end method

.method protected modifyRelatedNames(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V
    .locals 8
    .param p2, "person"    # Lti/modules/titanium/contacts/PersonProxy;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lti/modules/titanium/contacts/PersonProxy;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 966
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Lti/modules/titanium/contacts/PersonProxy;->getId()J

    move-result-wide v4

    const-string v6, "relatedNames"

    const-string v7, "vnd.android.cursor.item/relation"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyField(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 967
    return-void
.end method

.method protected modifyUrl(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V
    .locals 8
    .param p2, "person"    # Lti/modules/titanium/contacts/PersonProxy;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lti/modules/titanium/contacts/PersonProxy;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 956
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Lti/modules/titanium/contacts/PersonProxy;->getId()J

    move-result-wide v4

    const-string v6, "url"

    const-string v7, "vnd.android.cursor.item/website"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyField(Ljava/util/ArrayList;Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 957
    return-void
.end method

.method protected parseAddress(Ljava/util/ArrayList;Ljava/util/HashMap;J)V
    .locals 9
    .param p2, "addressHashMap"    # Ljava/util/HashMap;
    .param p3, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v0, "work"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    const-string v3, "work"

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processAddress(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 479
    :cond_0
    const-string v0, "home"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    const-string v3, "home"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processAddress(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 483
    :cond_1
    const-string v0, "other"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    const-string v3, "other"

    const/4 v5, 0x3

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processAddress(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 486
    :cond_2
    return-void
.end method

.method protected parseDate(Ljava/util/ArrayList;Ljava/util/HashMap;J)V
    .locals 9
    .param p2, "dateHashMap"    # Ljava/util/HashMap;
    .param p3, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v0, "anniversary"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const-string v3, "anniversary"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processDate(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 419
    :cond_0
    const-string v0, "other"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    const-string v3, "other"

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processDate(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 422
    :cond_1
    return-void
.end method

.method protected parseEmail(Ljava/util/ArrayList;Ljava/util/HashMap;J)V
    .locals 9
    .param p2, "emailHashMap"    # Ljava/util/HashMap;
    .param p3, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 431
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v0, "work"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-string v3, "work"

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processEmail(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 435
    :cond_0
    const-string v0, "home"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    const-string v3, "home"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processEmail(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 439
    :cond_1
    const-string v0, "other"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    const-string v3, "other"

    const/4 v5, 0x3

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processEmail(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 442
    :cond_2
    return-void
.end method

.method protected parseIm(Ljava/util/ArrayList;Ljava/util/HashMap;J)V
    .locals 9
    .param p2, "instantHashMap"    # Ljava/util/HashMap;
    .param p3, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v0, "work"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const-string v3, "work"

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processInstantMsg(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 310
    :cond_0
    const-string v0, "home"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    const-string v3, "home"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processInstantMsg(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 314
    :cond_1
    const-string v0, "other"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    const-string v3, "other"

    const/4 v5, 0x3

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processInstantMsg(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 317
    :cond_2
    return-void
.end method

.method protected parsePhone(Ljava/util/ArrayList;Ljava/util/HashMap;J)V
    .locals 9
    .param p2, "phoneHashMap"    # Ljava/util/HashMap;
    .param p3, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v0, "home"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    const-string v3, "home"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processPhone(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 455
    :cond_0
    const-string v0, "mobile"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    const-string v3, "mobile"

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processPhone(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 459
    :cond_1
    const-string v0, "work"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    const-string v3, "work"

    const/4 v5, 0x3

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processPhone(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 463
    :cond_2
    const-string v0, "other"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 464
    const-string v3, "other"

    const/4 v5, 0x7

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processPhone(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 466
    :cond_3
    return-void
.end method

.method protected parseURL(Ljava/util/ArrayList;Ljava/util/HashMap;J)V
    .locals 9
    .param p2, "urlHashMap"    # Ljava/util/HashMap;
    .param p3, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v0, "homepage"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const-string v3, "homepage"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processURL(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 390
    :cond_0
    const-string v0, "work"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    const-string v3, "work"

    const/4 v5, 0x5

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processURL(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 394
    :cond_1
    const-string v0, "home"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    const-string v3, "home"

    const/4 v5, 0x4

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processURL(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 398
    :cond_2
    const-string v0, "other"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 399
    const-string v3, "other"

    const/4 v5, 0x7

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processURL(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V

    .line 401
    :cond_3
    return-void
.end method

.method protected processAddress(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V
    .locals 17
    .param p1, "addressHashMap"    # Ljava/util/HashMap;
    .param p2, "addressType"    # Ljava/lang/String;
    .param p4, "aType"    # I
    .param p5, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p3, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v4, ""

    .line 491
    .local v4, "country":Ljava/lang/String;
    const-string v7, ""

    .line 492
    .local v7, "street":Ljava/lang/String;
    const-string v3, ""

    .line 493
    .local v3, "city":Ljava/lang/String;
    const-string v6, ""

    .line 494
    .local v6, "state":Ljava/lang/String;
    const-string v12, ""

    .line 496
    .local v12, "zip":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 497
    .local v8, "type":Ljava/lang/Object;
    instance-of v13, v8, [Ljava/lang/Object;

    if-eqz v13, :cond_7

    .line 498
    check-cast v8, [Ljava/lang/Object;

    .end local v8    # "type":Ljava/lang/Object;
    move-object v10, v8

    check-cast v10, [Ljava/lang/Object;

    .line 499
    .local v10, "typeArray":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v13, v10

    if-ge v5, v13, :cond_7

    .line 500
    aget-object v9, v10, v5

    .line 501
    .local v9, "typeAddress":Ljava/lang/Object;
    instance-of v13, v9, Ljava/util/HashMap;

    if-eqz v13, :cond_5

    move-object v11, v9

    .line 502
    check-cast v11, Ljava/util/HashMap;

    .line 503
    .local v11, "typeHashMap":Ljava/util/HashMap;
    const-string v13, "Country"

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 504
    const-string v13, "Country"

    invoke-static {v11, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 507
    :cond_0
    const-string v13, "Street"

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 508
    const-string v13, "Street"

    invoke-static {v11, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 511
    :cond_1
    const-string v13, "City"

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 512
    const-string v13, "City"

    invoke-static {v11, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 515
    :cond_2
    const-string v13, "ZIP"

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 516
    const-string v13, "ZIP"

    invoke-static {v11, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 519
    :cond_3
    const-string v13, "State"

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 520
    const-string v13, "State"

    invoke-static {v11, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 523
    :cond_4
    sget-object v13, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "mimetype"

    const-string v15, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data7"

    invoke-virtual {v13, v14, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data8"

    invoke-virtual {v13, v14, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data10"

    invoke-virtual {v13, v14, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data4"

    invoke-virtual {v13, v14, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data9"

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 531
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-wide/16 v14, -0x1

    cmp-long v13, p5, v14

    if-nez v13, :cond_6

    .line 532
    const-string v13, "raw_contact_id"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 536
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v11    # "typeHashMap":Ljava/util/HashMap;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 534
    .restart local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v11    # "typeHashMap":Ljava/util/HashMap;
    :cond_6
    const-string v13, "raw_contact_id"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 540
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v5    # "i":I
    .end local v9    # "typeAddress":Ljava/lang/Object;
    .end local v10    # "typeArray":[Ljava/lang/Object;
    .end local v11    # "typeHashMap":Ljava/util/HashMap;
    :cond_7
    return-void
.end method

.method protected processData(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 12
    .param p1, "dataHashMap"    # Ljava/util/HashMap;
    .param p2, "dataType"    # Ljava/lang/String;
    .param p4, "dType"    # I
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "idKey"    # Ljava/lang/String;
    .param p7, "typeKey"    # Ljava/lang/String;
    .param p8, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p3, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 376
    .local v10, "dataObject":Ljava/lang/Object;
    instance-of v1, v10, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 377
    check-cast v10, [Ljava/lang/Object;

    .end local v10    # "dataObject":Ljava/lang/Object;
    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    .line 378
    .local v0, "dataArray":[Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v1, v0

    if-ge v11, v1, :cond_0

    .line 379
    aget-object v1, v0, v11

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "data":Ljava/lang/String;
    move-object v1, p0

    move-object v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    move/from16 v7, p4

    move-wide/from16 v8, p8

    .line 380
    invoke-virtual/range {v1 .. v9}, Lti/modules/titanium/contacts/ContactsApiLevel5;->updateContactField(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;IJ)V

    .line 378
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "dataArray":[Ljava/lang/Object;
    .end local v5    # "data":Ljava/lang/String;
    .end local v11    # "i":I
    :cond_0
    return-void
.end method

.method protected processDate(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V
    .locals 11
    .param p1, "dateHashMap"    # Ljava/util/HashMap;
    .param p2, "dateType"    # Ljava/lang/String;
    .param p4, "dType"    # I
    .param p5, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p3, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v5, "vnd.android.cursor.item/contact_event"

    const-string v6, "data1"

    const-string v7, "data2"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide/from16 v8, p5

    invoke-virtual/range {v0 .. v9}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processData(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 427
    return-void
.end method

.method protected processEmail(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V
    .locals 11
    .param p1, "emailHashMap"    # Ljava/util/HashMap;
    .param p2, "emailType"    # Ljava/lang/String;
    .param p4, "eType"    # I
    .param p5, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p3, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v5, "vnd.android.cursor.item/email_v2"

    const-string v6, "data1"

    const-string v7, "data2"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide/from16 v8, p5

    invoke-virtual/range {v0 .. v9}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processData(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 447
    return-void
.end method

.method protected processIMProtocol(Ljava/lang/String;)I
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x2

    .line 275
    if-nez p1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    const-string v2, "AIM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    const/4 v0, 0x0

    goto :goto_0

    .line 281
    :cond_2
    const-string v2, "MSN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 282
    const/4 v0, 0x1

    goto :goto_0

    .line 283
    :cond_3
    const-string v2, "ICQ"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 284
    const/4 v0, 0x6

    goto :goto_0

    .line 285
    :cond_4
    const-string v2, "Facebook"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 286
    goto :goto_0

    .line 287
    :cond_5
    const-string v2, "GaduGadu"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 288
    goto :goto_0

    .line 289
    :cond_6
    const-string v1, "GoogleTalk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 290
    const/4 v0, 0x5

    goto :goto_0

    .line 291
    :cond_7
    const-string v1, "QQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 292
    const/4 v0, 0x4

    goto :goto_0

    .line 293
    :cond_8
    const-string v1, "Skype"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 294
    const/4 v0, 0x3

    goto :goto_0

    .line 295
    :cond_9
    const-string v1, "Yahoo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 296
    const/4 v0, 0x2

    goto :goto_0

    .line 297
    :cond_a
    const-string v1, "Jabber"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    const/4 v0, 0x7

    goto :goto_0
.end method

.method protected processInstantMsg(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V
    .locals 15
    .param p1, "instantHashMap"    # Ljava/util/HashMap;
    .param p2, "msgType"    # Ljava/lang/String;
    .param p4, "iType"    # I
    .param p5, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p3, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 322
    .local v5, "instantObject":Ljava/lang/Object;
    instance-of v11, v5, [Ljava/lang/Object;

    if-eqz v11, :cond_7

    .line 323
    check-cast v5, [Ljava/lang/Object;

    .end local v5    # "instantObject":Ljava/lang/Object;
    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    .line 324
    .local v4, "instantArray":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v11, v4

    if-ge v3, v11, :cond_7

    .line 325
    aget-object v9, v4, v3

    .line 326
    .local v9, "typeIM":Ljava/lang/Object;
    instance-of v11, v9, Ljava/util/HashMap;

    if-eqz v11, :cond_2

    move-object v8, v9

    .line 327
    check-cast v8, Ljava/util/HashMap;

    .line 328
    .local v8, "typeHashMap":Ljava/util/HashMap;
    const-string v10, ""

    .line 329
    .local v10, "userName":Ljava/lang/String;
    const-string v6, ""

    .line 330
    .local v6, "serviceName":Ljava/lang/String;
    const/4 v7, -0x2

    .line 331
    .local v7, "serviceType":I
    const-string v11, "service"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 332
    const-string v11, "service"

    invoke-static {v8, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 333
    invoke-virtual {p0, v6}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processIMProtocol(Ljava/lang/String;)I

    move-result v7

    .line 336
    :cond_0
    const-string v11, "username"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 337
    const-string v11, "username"

    invoke-static {v8, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 341
    :cond_1
    const/4 v11, -0x2

    if-ne v7, v11, :cond_3

    .line 342
    const-string v11, "TiContacts5"

    const-string v12, "Unsupported IM Protocol detected when adding new contact"

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v6    # "serviceName":Ljava/lang/String;
    .end local v7    # "serviceType":I
    .end local v8    # "typeHashMap":Ljava/util/HashMap;
    .end local v10    # "userName":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    .restart local v6    # "serviceName":Ljava/lang/String;
    .restart local v7    # "serviceType":I
    .restart local v8    # "typeHashMap":Ljava/util/HashMap;
    .restart local v10    # "userName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_4

    .line 347
    const-string v11, "TiContacts5"

    const-string v12, "User name not provided when adding new contact"

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 350
    :cond_4
    sget-object v11, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/im"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string v12, "data1"

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string v12, "data2"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 354
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-wide/16 v12, -0x1

    cmp-long v11, p5, v12

    if-nez v11, :cond_5

    .line 355
    const-string v11, "raw_contact_id"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 360
    :goto_2
    const/4 v11, -0x1

    if-ne v7, v11, :cond_6

    .line 361
    const-string v11, "data6"

    invoke-virtual {v2, v11, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 366
    :goto_3
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 357
    :cond_5
    const-string v11, "raw_contact_id"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 363
    :cond_6
    const-string v11, "data5"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 370
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v3    # "i":I
    .end local v4    # "instantArray":[Ljava/lang/Object;
    .end local v6    # "serviceName":Ljava/lang/String;
    .end local v7    # "serviceType":I
    .end local v8    # "typeHashMap":Ljava/util/HashMap;
    .end local v9    # "typeIM":Ljava/lang/Object;
    .end local v10    # "userName":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method protected processPhone(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V
    .locals 11
    .param p1, "phoneHashMap"    # Ljava/util/HashMap;
    .param p2, "phoneType"    # Ljava/lang/String;
    .param p4, "pType"    # I
    .param p5, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 470
    .local p3, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v5, "vnd.android.cursor.item/phone_v2"

    const-string v6, "data1"

    const-string v7, "data2"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide/from16 v8, p5

    invoke-virtual/range {v0 .. v9}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processData(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 471
    return-void
.end method

.method protected processRelation(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V
    .locals 11
    .param p1, "relHashMap"    # Ljava/util/HashMap;
    .param p2, "relType"    # Ljava/lang/String;
    .param p4, "rType"    # I
    .param p5, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p3, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v5, "vnd.android.cursor.item/relation"

    const-string v6, "data1"

    const-string v7, "data2"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide/from16 v8, p5

    invoke-virtual/range {v0 .. v9}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processData(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 411
    return-void
.end method

.method protected processURL(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;IJ)V
    .locals 11
    .param p1, "urlHashMap"    # Ljava/util/HashMap;
    .param p2, "urlType"    # Ljava/lang/String;
    .param p4, "uType"    # I
    .param p5, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p3, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v5, "vnd.android.cursor.item/website"

    const-string v6, "data1"

    const-string v7, "data2"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide/from16 v8, p5

    invoke-virtual/range {v0 .. v9}, Lti/modules/titanium/contacts/ContactsApiLevel5;->processData(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 406
    return-void
.end method

.method protected removePerson(Lti/modules/titanium/contacts/PersonProxy;)V
    .locals 12
    .param p1, "person"    # Lti/modules/titanium/contacts/PersonProxy;

    .prologue
    const/4 v2, 0x0

    .line 709
    invoke-virtual {p0}, Lti/modules/titanium/contacts/ContactsApiLevel5;->hasContactsPermissions()Z

    move-result v1

    if-nez v1, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    instance-of v1, p1, Lti/modules/titanium/contacts/PersonProxy;

    if-nez v1, :cond_2

    .line 714
    const-string v1, "TiContacts5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid argument type. Expected [PersonProxy], but was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 718
    :cond_2
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lti/modules/titanium/contacts/PersonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 719
    .local v8, "idObj":Ljava/lang/Object;
    instance-of v1, v8, Ljava/lang/Long;

    if-eqz v1, :cond_0

    move-object v7, v8

    .line 720
    check-cast v7, Ljava/lang/Long;

    .line 721
    .local v7, "id":Ljava/lang/Long;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 722
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 724
    .local v6, "cur":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 725
    const-string v1, "lookup"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 726
    .local v9, "lookupKey":Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v1, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 727
    .local v10, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v10, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 729
    .end local v9    # "lookupKey":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected save(Ljava/lang/Object;)V
    .locals 8
    .param p1, "people"    # Ljava/lang/Object;

    .prologue
    .line 1042
    instance-of v6, p1, [Ljava/lang/Object;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/contacts/ContactsApiLevel5;->hasContactsPermissions()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1062
    .end local p1    # "people":Ljava/lang/Object;
    :cond_0
    return-void

    .line 1046
    .restart local p1    # "people":Ljava/lang/Object;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "people":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 1047
    .local v1, "contacts":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_0

    .line 1048
    aget-object v0, v1, v2

    .line 1049
    .local v0, "contact":Ljava/lang/Object;
    instance-of v6, v0, Lti/modules/titanium/contacts/PersonProxy;

    if-eqz v6, :cond_3

    move-object v5, v0

    .line 1050
    check-cast v5, Lti/modules/titanium/contacts/PersonProxy;

    .line 1051
    .local v5, "person":Lti/modules/titanium/contacts/PersonProxy;
    const-string v6, "id"

    invoke-virtual {v5, v6}, Lti/modules/titanium/contacts/PersonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1052
    .local v4, "idObj":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/Long;

    if-eqz v6, :cond_2

    move-object v3, v4

    .line 1053
    check-cast v3, Ljava/lang/Long;

    .line 1054
    .local v3, "id":Ljava/lang/Long;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lti/modules/titanium/contacts/ContactsApiLevel5;->modifyContact(Lti/modules/titanium/contacts/PersonProxy;Ljava/lang/String;)V

    .line 1047
    .end local v3    # "id":Ljava/lang/Long;
    .end local v4    # "idObj":Ljava/lang/Object;
    .end local v5    # "person":Lti/modules/titanium/contacts/PersonProxy;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1058
    :cond_3
    const-string v6, "TiContacts5"

    const-string v7, "Invalid argument type to save"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected updateContactField(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;IJ)V
    .locals 5
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "idKey"    # Ljava/lang/String;
    .param p4, "idValue"    # Ljava/lang/Object;
    .param p5, "typeKey"    # Ljava/lang/String;
    .param p6, "typeValue"    # I
    .param p7, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "mimetype"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 260
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-wide/16 v2, -0x1

    cmp-long v1, p7, v2

    if-nez v1, :cond_1

    .line 261
    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 266
    :goto_0
    if-eqz p5, :cond_0

    .line 267
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 270
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    return-void

    .line 263
    :cond_1
    const-string v1, "raw_contact_id"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method
