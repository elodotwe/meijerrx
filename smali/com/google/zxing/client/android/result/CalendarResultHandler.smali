.class public final Lcom/google/zxing/client/android/result/CalendarResultHandler;
.super Lcom/google/zxing/client/android/result/ResultHandler;
.source "CalendarResultHandler.java"


# static fields
.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field private static final DATE_TIME_FORMAT:Ljava/text/DateFormat;

.field private static final buttons:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/zxing/client/android/result/CalendarResultHandler;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/zxing/client/android/result/CalendarResultHandler;->DATE_TIME_FORMAT:Ljava/text/DateFormat;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "button_add_calendar"

    invoke-static {v2}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/result/CalendarResultHandler;->buttons:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    .line 49
    return-void
.end method

.method private static appendTime(Ljava/lang/String;Ljava/lang/StringBuilder;ZZ)V
    .locals 11
    .param p0, "when"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "end"    # Z
    .param p3, "sameStartEnd"    # Z

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 97
    sget-object v7, Lcom/google/zxing/client/android/result/CalendarResultHandler;->DATE_FORMAT:Ljava/text/DateFormat;

    monitor-enter v7

    .line 98
    :try_start_0
    sget-object v6, Lcom/google/zxing/client/android/result/CalendarResultHandler;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v8, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v6, p0, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 99
    .local v1, "date":Ljava/util/Date;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 104
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    sub-long/2addr v6, v8

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .end local v1    # "date":Ljava/util/Date;
    .local v2, "date":Ljava/util/Date;
    move-object v1, v2

    .line 106
    .end local v2    # "date":Ljava/util/Date;
    .restart local v1    # "date":Ljava/util/Date;
    :cond_0
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 121
    :goto_0
    return-void

    .line 99
    .end local v1    # "date":Ljava/util/Date;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 110
    :cond_1
    sget-object v7, Lcom/google/zxing/client/android/result/CalendarResultHandler;->DATE_TIME_FORMAT:Ljava/text/DateFormat;

    monitor-enter v7

    .line 111
    :try_start_2
    sget-object v6, Lcom/google/zxing/client/android/result/CalendarResultHandler;->DATE_TIME_FORMAT:Ljava/text/DateFormat;

    const/4 v8, 0x0

    const/16 v9, 0xf

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/text/ParsePosition;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v6, v8, v9}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 112
    .restart local v1    # "date":Ljava/util/Date;
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 114
    .local v4, "milliseconds":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_2

    const/16 v6, 0xf

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_2

    .line 115
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 116
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int v3, v6, v7

    .line 117
    .local v3, "offset":I
    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 119
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v3    # "offset":I
    :cond_2
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 112
    .end local v1    # "date":Ljava/util/Date;
    .end local v4    # "milliseconds":J
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/zxing/client/android/result/CalendarResultHandler;->buttons:[I

    array-length v0, v0

    return v0
.end method

.method public getButtonText(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 58
    sget-object v0, Lcom/google/zxing/client/android/result/CalendarResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayContents()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/CalendarResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/result/CalendarParsedResult;

    .line 76
    .local v0, "calResult":Lcom/google/zxing/client/result/CalendarParsedResult;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v5, 0x64

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getSummary()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 78
    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getStart()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "startString":Ljava/lang/String;
    invoke-static {v4, v2, v6, v6}, Lcom/google/zxing/client/android/result/CalendarResultHandler;->appendTime(Ljava/lang/String;Ljava/lang/StringBuilder;ZZ)V

    .line 81
    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getEnd()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "endString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 84
    .local v3, "sameStartEnd":Z
    const/4 v5, 0x1

    invoke-static {v1, v2, v5, v3}, Lcom/google/zxing/client/android/result/CalendarResultHandler;->appendTime(Ljava/lang/String;Ljava/lang/StringBuilder;ZZ)V

    .line 87
    .end local v3    # "sameStartEnd":Z
    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 88
    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getAttendee()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 89
    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getDisplayTitle()I
    .locals 1

    .prologue
    .line 125
    const-string v0, "result_calendar"

    invoke-static {v0}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/CalendarResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/client/result/CalendarParsedResult;

    .line 64
    .local v6, "calendarResult":Lcom/google/zxing/client/result/CalendarParsedResult;
    if-nez p1, :cond_0

    .line 65
    invoke-virtual {v6}, Lcom/google/zxing/client/result/CalendarParsedResult;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/zxing/client/result/CalendarParsedResult;->getStart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/zxing/client/result/CalendarParsedResult;->getEnd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/google/zxing/client/result/CalendarParsedResult;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/zxing/client/result/CalendarParsedResult;->getDescription()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/client/android/result/CalendarResultHandler;->addCalendarEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method
