.class public final enum Lio/sentry/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/i;

.field public static final enum All:Lio/sentry/i;

.field public static final enum Attachment:Lio/sentry/i;

.field public static final enum Default:Lio/sentry/i;

.field public static final enum Error:Lio/sentry/i;

.field public static final enum MetricBucket:Lio/sentry/i;

.field public static final enum Monitor:Lio/sentry/i;

.field public static final enum Profile:Lio/sentry/i;

.field public static final enum Replay:Lio/sentry/i;

.field public static final enum Security:Lio/sentry/i;

.field public static final enum Session:Lio/sentry/i;

.field public static final enum Span:Lio/sentry/i;

.field public static final enum Transaction:Lio/sentry/i;

.field public static final enum Unknown:Lio/sentry/i;

.field public static final enum UserReport:Lio/sentry/i;


# instance fields
.field private final category:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/sentry/i;
    .locals 14

    .line 1
    sget-object v0, Lio/sentry/i;->All:Lio/sentry/i;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/i;->Default:Lio/sentry/i;

    .line 4
    .line 5
    sget-object v2, Lio/sentry/i;->Error:Lio/sentry/i;

    .line 6
    .line 7
    sget-object v3, Lio/sentry/i;->Session:Lio/sentry/i;

    .line 8
    .line 9
    sget-object v4, Lio/sentry/i;->Attachment:Lio/sentry/i;

    .line 10
    .line 11
    sget-object v5, Lio/sentry/i;->Monitor:Lio/sentry/i;

    .line 12
    .line 13
    sget-object v6, Lio/sentry/i;->Profile:Lio/sentry/i;

    .line 14
    .line 15
    sget-object v7, Lio/sentry/i;->MetricBucket:Lio/sentry/i;

    .line 16
    .line 17
    sget-object v8, Lio/sentry/i;->Transaction:Lio/sentry/i;

    .line 18
    .line 19
    sget-object v9, Lio/sentry/i;->Replay:Lio/sentry/i;

    .line 20
    .line 21
    sget-object v10, Lio/sentry/i;->Span:Lio/sentry/i;

    .line 22
    .line 23
    sget-object v11, Lio/sentry/i;->Security:Lio/sentry/i;

    .line 24
    .line 25
    sget-object v12, Lio/sentry/i;->UserReport:Lio/sentry/i;

    .line 26
    .line 27
    sget-object v13, Lio/sentry/i;->Unknown:Lio/sentry/i;

    .line 28
    .line 29
    filled-new-array/range {v0 .. v13}, [Lio/sentry/i;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/sentry/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "__all__"

    .line 5
    .line 6
    const-string v3, "All"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/sentry/i;->All:Lio/sentry/i;

    .line 12
    .line 13
    new-instance v0, Lio/sentry/i;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "default"

    .line 17
    .line 18
    const-string v3, "Default"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lio/sentry/i;->Default:Lio/sentry/i;

    .line 24
    .line 25
    new-instance v0, Lio/sentry/i;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "error"

    .line 29
    .line 30
    const-string v3, "Error"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lio/sentry/i;->Error:Lio/sentry/i;

    .line 36
    .line 37
    new-instance v0, Lio/sentry/i;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "session"

    .line 41
    .line 42
    const-string v3, "Session"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lio/sentry/i;->Session:Lio/sentry/i;

    .line 48
    .line 49
    new-instance v0, Lio/sentry/i;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "attachment"

    .line 53
    .line 54
    const-string v3, "Attachment"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lio/sentry/i;->Attachment:Lio/sentry/i;

    .line 60
    .line 61
    new-instance v0, Lio/sentry/i;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "monitor"

    .line 65
    .line 66
    const-string v3, "Monitor"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lio/sentry/i;->Monitor:Lio/sentry/i;

    .line 72
    .line 73
    new-instance v0, Lio/sentry/i;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "profile"

    .line 77
    .line 78
    const-string v3, "Profile"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lio/sentry/i;->Profile:Lio/sentry/i;

    .line 84
    .line 85
    new-instance v0, Lio/sentry/i;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "metric_bucket"

    .line 89
    .line 90
    const-string v3, "MetricBucket"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lio/sentry/i;->MetricBucket:Lio/sentry/i;

    .line 96
    .line 97
    new-instance v0, Lio/sentry/i;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-string v2, "transaction"

    .line 102
    .line 103
    const-string v3, "Transaction"

    .line 104
    .line 105
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lio/sentry/i;->Transaction:Lio/sentry/i;

    .line 109
    .line 110
    new-instance v0, Lio/sentry/i;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const-string v2, "replay"

    .line 115
    .line 116
    const-string v3, "Replay"

    .line 117
    .line 118
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lio/sentry/i;->Replay:Lio/sentry/i;

    .line 122
    .line 123
    new-instance v0, Lio/sentry/i;

    .line 124
    .line 125
    const/16 v1, 0xa

    .line 126
    .line 127
    const-string v2, "span"

    .line 128
    .line 129
    const-string v3, "Span"

    .line 130
    .line 131
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lio/sentry/i;->Span:Lio/sentry/i;

    .line 135
    .line 136
    new-instance v0, Lio/sentry/i;

    .line 137
    .line 138
    const/16 v1, 0xb

    .line 139
    .line 140
    const-string v2, "security"

    .line 141
    .line 142
    const-string v3, "Security"

    .line 143
    .line 144
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lio/sentry/i;->Security:Lio/sentry/i;

    .line 148
    .line 149
    new-instance v0, Lio/sentry/i;

    .line 150
    .line 151
    const/16 v1, 0xc

    .line 152
    .line 153
    const-string v2, "user_report"

    .line 154
    .line 155
    const-string v3, "UserReport"

    .line 156
    .line 157
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sput-object v0, Lio/sentry/i;->UserReport:Lio/sentry/i;

    .line 161
    .line 162
    new-instance v0, Lio/sentry/i;

    .line 163
    .line 164
    const/16 v1, 0xd

    .line 165
    .line 166
    const-string v2, "unknown"

    .line 167
    .line 168
    const-string v3, "Unknown"

    .line 169
    .line 170
    invoke-direct {v0, v3, v1, v2}, Lio/sentry/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    sput-object v0, Lio/sentry/i;->Unknown:Lio/sentry/i;

    .line 174
    .line 175
    invoke-static {}, Lio/sentry/i;->$values()[Lio/sentry/i;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    sput-object v0, Lio/sentry/i;->$VALUES:[Lio/sentry/i;

    .line 180
    .line 181
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lio/sentry/i;->category:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/i;
    .locals 1

    .line 1
    const-class v0, Lio/sentry/i;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/sentry/i;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/sentry/i;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/i;->$VALUES:[Lio/sentry/i;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/sentry/i;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/sentry/i;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/i;->category:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
