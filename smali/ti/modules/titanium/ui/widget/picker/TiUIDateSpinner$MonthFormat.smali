.class Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;
.super Ljava/text/NumberFormat;
.source "TiUIDateSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonthFormat"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private symbols:Ljava/text/DateFormatSymbols;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;Ljava/util/Locale;)V
    .locals 2
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 470
    iput-object p1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;->this$0:Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;

    .line 471
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 467
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;->symbols:Ljava/text/DateFormatSymbols;

    .line 472
    invoke-virtual {p0, p2}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;->setLocale(Ljava/util/Locale;)V

    .line 473
    return-void
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "value"    # D
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # Ljava/text/FieldPosition;

    .prologue
    .line 479
    double-to-long v0, p1

    invoke-virtual {p0, v0, v1, p3, p4}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "value"    # J
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # Ljava/text/FieldPosition;

    .prologue
    .line 486
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;->symbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    long-to-int v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    return-object p3
.end method

.method public getLongestMonthName()I
    .locals 6

    .prologue
    .line 509
    const/4 v3, 0x0

    .line 510
    .local v3, "max":I
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;->symbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 511
    .local v4, "month":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 510
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    .end local v4    # "month":Ljava/lang/String;
    :cond_1
    return v3
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 493
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;->symbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "months":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 495
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    new-instance v2, Ljava/lang/Long;

    add-int/lit8 v3, v0, 0x1

    int-to-long v4, v3

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 499
    :goto_1
    return-object v2

    .line 494
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 504
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;->symbols:Ljava/text/DateFormatSymbols;

    .line 505
    return-void
.end method
