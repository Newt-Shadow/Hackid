.class public Lcom/yandex/metrica/impl/ob/Md;
.super Lcom/yandex/metrica/impl/ob/Kd;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final A:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final B:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final C:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final D:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final E:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final F:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final G:Lcom/yandex/metrica/impl/ob/Rd;

.field public static final H:Lcom/yandex/metrica/impl/ob/Rd;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final I:Lcom/yandex/metrica/impl/ob/Rd;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final J:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final K:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final u:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final v:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final w:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final x:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final y:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final z:Lcom/yandex/metrica/impl/ob/Rd;


# instance fields
.field private f:Lcom/yandex/metrica/impl/ob/Rd;

.field private g:Lcom/yandex/metrica/impl/ob/Rd;

.field private h:Lcom/yandex/metrica/impl/ob/Rd;

.field private i:Lcom/yandex/metrica/impl/ob/Rd;

.field private j:Lcom/yandex/metrica/impl/ob/Rd;

.field private k:Lcom/yandex/metrica/impl/ob/Rd;

.field private l:Lcom/yandex/metrica/impl/ob/Rd;

.field private m:Lcom/yandex/metrica/impl/ob/Rd;

.field private n:Lcom/yandex/metrica/impl/ob/Rd;

.field private o:Lcom/yandex/metrica/impl/ob/Rd;

.field private p:Lcom/yandex/metrica/impl/ob/Rd;

.field private q:Lcom/yandex/metrica/impl/ob/Rd;

.field private r:Lcom/yandex/metrica/impl/ob/Rd;

.field private s:Lcom/yandex/metrica/impl/ob/Rd;

.field private t:Lcom/yandex/metrica/impl/ob/Rd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    const-string v1, "SESSION_SLEEP_START_"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->u:Lcom/yandex/metrica/impl/ob/Rd;

    .line 10
    .line 11
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 12
    .line 13
    const-string v1, "SESSION_ID_"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->v:Lcom/yandex/metrica/impl/ob/Rd;

    .line 19
    .line 20
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 21
    .line 22
    const-string v1, "SESSION_COUNTER_ID_"

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->w:Lcom/yandex/metrica/impl/ob/Rd;

    .line 28
    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 30
    .line 31
    const-string v1, "SESSION_INIT_TIME_"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->x:Lcom/yandex/metrica/impl/ob/Rd;

    .line 37
    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 39
    .line 40
    const-string v1, "SESSION_ALIVE_TIME_"

    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->y:Lcom/yandex/metrica/impl/ob/Rd;

    .line 46
    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 48
    .line 49
    const-string v1, "SESSION_IS_ALIVE_REPORT_NEEDED_"

    .line 50
    .line 51
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->z:Lcom/yandex/metrica/impl/ob/Rd;

    .line 55
    .line 56
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 57
    .line 58
    const-string v1, "BG_SESSION_ID_"

    .line 59
    .line 60
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->A:Lcom/yandex/metrica/impl/ob/Rd;

    .line 64
    .line 65
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 66
    .line 67
    const-string v1, "BG_SESSION_SLEEP_START_"

    .line 68
    .line 69
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->B:Lcom/yandex/metrica/impl/ob/Rd;

    .line 73
    .line 74
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 75
    .line 76
    const-string v1, "BG_SESSION_COUNTER_ID_"

    .line 77
    .line 78
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->C:Lcom/yandex/metrica/impl/ob/Rd;

    .line 82
    .line 83
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 84
    .line 85
    const-string v1, "BG_SESSION_INIT_TIME_"

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->D:Lcom/yandex/metrica/impl/ob/Rd;

    .line 91
    .line 92
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 93
    .line 94
    const-string v1, "IDENTITY_SEND_TIME_"

    .line 95
    .line 96
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->E:Lcom/yandex/metrica/impl/ob/Rd;

    .line 100
    .line 101
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 102
    .line 103
    const-string v1, "USER_INFO_"

    .line 104
    .line 105
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->F:Lcom/yandex/metrica/impl/ob/Rd;

    .line 109
    .line 110
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 111
    .line 112
    const-string v1, "REFERRER_"

    .line 113
    .line 114
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->G:Lcom/yandex/metrica/impl/ob/Rd;

    .line 118
    .line 119
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 120
    .line 121
    const-string v1, "APP_ENVIRONMENT"

    .line 122
    .line 123
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->H:Lcom/yandex/metrica/impl/ob/Rd;

    .line 127
    .line 128
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 129
    .line 130
    const-string v1, "APP_ENVIRONMENT_REVISION"

    .line 131
    .line 132
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->I:Lcom/yandex/metrica/impl/ob/Rd;

    .line 136
    .line 137
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 138
    .line 139
    const-string v1, "APP_ENVIRONMENT_"

    .line 140
    .line 141
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->J:Lcom/yandex/metrica/impl/ob/Rd;

    .line 145
    .line 146
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 147
    .line 148
    const-string v1, "APP_ENVIRONMENT_REVISION_"

    .line 149
    .line 150
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    sput-object v0, Lcom/yandex/metrica/impl/ob/Md;->K:Lcom/yandex/metrica/impl/ob/Rd;

    .line 154
    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Kd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 5
    .line 6
    sget-object p2, Lcom/yandex/metrica/impl/ob/Md;->u:Lcom/yandex/metrica/impl/ob/Rd;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Md;->f:Lcom/yandex/metrica/impl/ob/Rd;

    .line 20
    .line 21
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 22
    .line 23
    sget-object p2, Lcom/yandex/metrica/impl/ob/Md;->v:Lcom/yandex/metrica/impl/ob/Rd;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Md;->g:Lcom/yandex/metrica/impl/ob/Rd;

    .line 37
    .line 38
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 39
    .line 40
    sget-object p2, Lcom/yandex/metrica/impl/ob/Md;->w:Lcom/yandex/metrica/impl/ob/Rd;

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Md;->h:Lcom/yandex/metrica/impl/ob/Rd;

    .line 54
    .line 55
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 56
    .line 57
    sget-object p2, Lcom/yandex/metrica/impl/ob/Md;->x:Lcom/yandex/metrica/impl/ob/Rd;

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Md;->i:Lcom/yandex/metrica/impl/ob/Rd;

    .line 71
    .line 72
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 73
    .line 74
    sget-object p2, Lcom/yandex/metrica/impl/ob/Md;->y:Lcom/yandex/metrica/impl/ob/Rd;

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Md;->j:Lcom/yandex/metrica/impl/ob/Rd;

    .line 88
    .line 89
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 90
    .line 91
    sget-object p2, Lcom/yandex/metrica/impl/ob/Md;->z:Lcom/yandex/metrica/impl/ob/Rd;

    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Md;->k:Lcom/yandex/metrica/impl/ob/Rd;

    .line 105
    .line 106
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 107
    .line 108
    sget-object p2, Lcom/yandex/metrica/impl/ob/Md;->A:Lcom/yandex/metrica/impl/ob/Rd;

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Md;->l:Lcom/yandex/metrica/impl/ob/Rd;

    .line 122
    .line 123
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 124
    .line 125
    sget-object p2, Lcom/yandex/metrica/impl/ob/Md;->B:Lcom/yandex/metrica/impl/ob/Rd;

    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Md;->m:Lcom/yandex/metrica/impl/ob/Rd;

    .line 139
    .line 140
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 141
    .line 142
    sget-object p2, Lcom/yandex/metrica/impl/ob/Md;->C:Lcom/yandex/metrica/impl/ob/Rd;

    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Md;->n:Lcom/yandex/metrica/impl/ob/Rd;

    .line 156
    .line 157
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 158
    .line 159
    sget-object p2, Lcom/yandex/metrica/impl/ob/Md;->D:Lcom/yandex/metrica/impl/ob/Rd;

    .line 160
    .line 161
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Md;->o:Lcom/yandex/metrica/impl/ob/Rd;

    .line 173
    .line 174
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 175
    .line 176
    sget-object p2, Lcom/yandex/metrica/impl/ob/Md;->E:Lcom/yandex/metrica/impl/ob/Rd;

    .line 177
    .line 178
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Md;->p:Lcom/yandex/metrica/impl/ob/Rd;

    .line 190
    .line 191
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 192
    .line 193
    sget-object p2, Lcom/yandex/metrica/impl/ob/Md;->F:Lcom/yandex/metrica/impl/ob/Rd;

    .line 194
    .line 195
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Md;->q:Lcom/yandex/metrica/impl/ob/Rd;

    .line 207
    .line 208
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 209
    .line 210
    sget-object p2, Lcom/yandex/metrica/impl/ob/Md;->G:Lcom/yandex/metrica/impl/ob/Rd;

    .line 211
    .line 212
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Md;->r:Lcom/yandex/metrica/impl/ob/Rd;

    .line 224
    .line 225
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 226
    .line 227
    sget-object p2, Lcom/yandex/metrica/impl/ob/Md;->J:Lcom/yandex/metrica/impl/ob/Rd;

    .line 228
    .line 229
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Md;->s:Lcom/yandex/metrica/impl/ob/Rd;

    .line 241
    .line 242
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 243
    .line 244
    sget-object p2, Lcom/yandex/metrica/impl/ob/Md;->K:Lcom/yandex/metrica/impl/ob/Rd;

    .line 245
    .line 246
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Md;->t:Lcom/yandex/metrica/impl/ob/Rd;

    .line 258
    .line 259
    const/4 p1, -0x1

    .line 260
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Md;->a(I)V

    .line 261
    .line 262
    .line 263
    const/4 p1, 0x0

    .line 264
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Md;->c(I)V

    .line 265
    .line 266
    .line 267
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Md;->b(I)V

    .line 268
    .line 269
    .line 270
    return-void
.end method

.method private a(I)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->j:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method private b(I)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->h:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method private c(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->f:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Md;->o:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/s$a;)Lcom/yandex/metrica/impl/ob/Md;
    .locals 3

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Md;->s:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/s$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/Kd;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/Kd;

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Md;->t:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/s$a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/Kd;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/Kd;

    .line 7
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Z)Ljava/lang/Boolean;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->k:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public b(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Md;->n:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Md;->q:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Md;->l:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public d(J)J
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Md;->m:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "_boundentrypreferences"

    return-object v0
.end method

.method public e(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Md;->i:Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    invoke-interface {v1, v0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method

.method public f(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Md;->h:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public f()Lcom/yandex/metrica/impl/ob/s$a;
    .locals 6

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->s:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->t:Lcom/yandex/metrica/impl/ob/Rd;

    .line 5
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/yandex/metrica/impl/ob/s$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Md;->s:Lcom/yandex/metrica/impl/ob/Rd;

    .line 7
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Md;->t:Lcom/yandex/metrica/impl/ob/Rd;

    .line 8
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/s$a;-><init>(Ljava/lang/String;J)V

    monitor-exit p0

    return-object v0

    .line 9
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Md;->g:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public g()Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->i:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->j:Lcom/yandex/metrica/impl/ob/Rd;

    .line 4
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->k:Lcom/yandex/metrica/impl/ob/Rd;

    .line 5
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->f:Lcom/yandex/metrica/impl/ob/Rd;

    .line 6
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->g:Lcom/yandex/metrica/impl/ob/Rd;

    .line 7
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->h:Lcom/yandex/metrica/impl/ob/Rd;

    .line 8
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->o:Lcom/yandex/metrica/impl/ob/Rd;

    .line 9
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->m:Lcom/yandex/metrica/impl/ob/Rd;

    .line 10
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->l:Lcom/yandex/metrica/impl/ob/Rd;

    .line 11
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->n:Lcom/yandex/metrica/impl/ob/Rd;

    .line 12
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->s:Lcom/yandex/metrica/impl/ob/Rd;

    .line 13
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->q:Lcom/yandex/metrica/impl/ob/Rd;

    .line 14
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->r:Lcom/yandex/metrica/impl/ob/Rd;

    .line 15
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->p:Lcom/yandex/metrica/impl/ob/Rd;

    .line 16
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public h(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Md;->f:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public h()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->o:Lcom/yandex/metrica/impl/ob/Rd;

    .line 4
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->n:Lcom/yandex/metrica/impl/ob/Rd;

    .line 5
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->l:Lcom/yandex/metrica/impl/ob/Rd;

    .line 6
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->m:Lcom/yandex/metrica/impl/ob/Rd;

    .line 7
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->i:Lcom/yandex/metrica/impl/ob/Rd;

    .line 8
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->h:Lcom/yandex/metrica/impl/ob/Rd;

    .line 9
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->g:Lcom/yandex/metrica/impl/ob/Rd;

    .line 10
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->f:Lcom/yandex/metrica/impl/ob/Rd;

    .line 11
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->k:Lcom/yandex/metrica/impl/ob/Rd;

    .line 12
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->j:Lcom/yandex/metrica/impl/ob/Rd;

    .line 13
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->q:Lcom/yandex/metrica/impl/ob/Rd;

    .line 14
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->s:Lcom/yandex/metrica/impl/ob/Rd;

    .line 15
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->t:Lcom/yandex/metrica/impl/ob/Rd;

    .line 16
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->r:Lcom/yandex/metrica/impl/ob/Rd;

    .line 17
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Md;->p:Lcom/yandex/metrica/impl/ob/Rd;

    .line 18
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public i(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Md;->p:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public i()Lcom/yandex/metrica/impl/ob/Md;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Md;->r:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/Kd;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Kd;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Md;

    return-object v0
.end method
