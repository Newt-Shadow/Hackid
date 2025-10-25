.class public Lib/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/TimeZone;

.field public static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/util/regex/Matcher;

.field private final b:Ljava/util/regex/Matcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTC"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lib/b;->c:Ljava/util/TimeZone;

    .line 8
    .line 9
    const-string v0, "--------- beginning of (.*)"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lib/b;->d:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "((?:(\\d\\d\\d\\d)-)?(\\d\\d)-(\\d\\d)\\s+(\\d\\d):(\\d\\d):(\\d\\d)\\.(\\d\\d\\d)\\s+(\\d+)\\s+(\\d+)\\s+(.)\\s+)(.*?):\\s(.*)"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lib/b;->e:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lib/b;->d:Ljava/util/regex/Pattern;

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lib/b;->a:Ljava/util/regex/Matcher;

    .line 13
    .line 14
    sget-object v0, Lib/b;->e:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lib/b;->b:Ljava/util/regex/Matcher;

    .line 21
    .line 22
    return-void
.end method

.method private static a(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method private static c(Ljava/util/regex/Matcher;IZ)Ljava/util/GregorianCalendar;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/GregorianCalendar;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 4
    .line 5
    .line 6
    add-int/lit8 v1, p1, 0x0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    sub-int/2addr v1, v3

    .line 37
    const/4 v2, 0x2

    .line 38
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, p1, 0x2

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x5

    .line 52
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v1, p1, 0x3

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v1, p1, 0x4

    .line 71
    .line 72
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/16 v2, 0xc

    .line 81
    .line 82
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, p1, 0x5

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/16 v2, 0xd

    .line 96
    .line 97
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 98
    .line 99
    .line 100
    if-eqz p2, :cond_1

    .line 101
    .line 102
    add-int/lit8 p1, p1, 0x6

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    const/16 p1, 0xe

    .line 113
    .line 114
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 115
    .line 116
    .line 117
    :cond_1
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lib/a;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lib/b;->a:Ljava/util/regex/Matcher;

    .line 3
    .line 4
    invoke-static {v1, p1}, Lib/b;->a(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v1, p0, Lib/b;->b:Ljava/util/regex/Matcher;

    .line 12
    .line 13
    invoke-static {v1, p1}, Lib/b;->a(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    new-instance v1, Lib/a;

    .line 20
    .line 21
    invoke-direct {v1}, Lib/a;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-static {p1, v2, v3}, Lib/b;->c(Ljava/util/regex/Matcher;IZ)Ljava/util/GregorianCalendar;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iput-object v2, v1, Lib/a;->a:Ljava/util/GregorianCalendar;

    .line 31
    .line 32
    const/16 v2, 0xb

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/16 v3, 0x45

    .line 44
    .line 45
    if-eq v2, v3, :cond_3

    .line 46
    .line 47
    const/16 v3, 0x46

    .line 48
    .line 49
    if-eq v2, v3, :cond_3

    .line 50
    .line 51
    const/16 v3, 0x49

    .line 52
    .line 53
    if-eq v2, v3, :cond_2

    .line 54
    .line 55
    const/16 v3, 0x57

    .line 56
    .line 57
    if-eq v2, v3, :cond_1

    .line 58
    .line 59
    const-string v2, "debug"

    .line 60
    .line 61
    iput-object v2, v1, Lib/a;->b:Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-string v2, "warn"

    .line 65
    .line 66
    iput-object v2, v1, Lib/a;->b:Ljava/lang/String;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const-string v2, "info"

    .line 70
    .line 71
    iput-object v2, v1, Lib/a;->b:Ljava/lang/String;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const-string v2, "error"

    .line 75
    .line 76
    iput-object v2, v1, Lib/a;->b:Ljava/lang/String;

    .line 77
    .line 78
    :goto_0
    const/16 v2, 0xc

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iput-object v2, v1, Lib/a;->c:Ljava/lang/String;

    .line 85
    .line 86
    const/16 v2, 0xd

    .line 87
    .line 88
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iput-object p1, v1, Lib/a;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    move-object v0, v1

    .line 95
    :catchall_0
    :cond_4
    return-object v0
.end method
