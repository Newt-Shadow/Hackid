.class synthetic Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arthenica/ffmpegkit/FFmpegKitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$arthenica$ffmpegkit$Level:[I

.field static final synthetic $SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/Level;->values()[Lcom/arthenica/ffmpegkit/Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_0
    sget-object v2, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_QUIET:Lcom/arthenica/ffmpegkit/Level;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :catch_0
    const/4 v0, 0x2

    .line 20
    :try_start_1
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    .line 21
    .line 22
    sget-object v3, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_TRACE:Lcom/arthenica/ffmpegkit/Level;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    .line 30
    :catch_1
    const/4 v2, 0x3

    .line 31
    :try_start_2
    sget-object v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    .line 32
    .line 33
    sget-object v4, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_DEBUG:Lcom/arthenica/ffmpegkit/Level;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 40
    .line 41
    :catch_2
    const/4 v3, 0x4

    .line 42
    :try_start_3
    sget-object v4, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    .line 43
    .line 44
    sget-object v5, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_INFO:Lcom/arthenica/ffmpegkit/Level;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 51
    .line 52
    :catch_3
    const/4 v4, 0x5

    .line 53
    :try_start_4
    sget-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    .line 54
    .line 55
    sget-object v6, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_WARNING:Lcom/arthenica/ffmpegkit/Level;

    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 62
    .line 63
    :catch_4
    :try_start_5
    sget-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    .line 64
    .line 65
    sget-object v6, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_ERROR:Lcom/arthenica/ffmpegkit/Level;

    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    const/4 v7, 0x6

    .line 72
    aput v7, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 73
    .line 74
    :catch_5
    :try_start_6
    sget-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    .line 75
    .line 76
    sget-object v6, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_FATAL:Lcom/arthenica/ffmpegkit/Level;

    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    const/4 v7, 0x7

    .line 83
    aput v7, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 84
    .line 85
    :catch_6
    :try_start_7
    sget-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    .line 86
    .line 87
    sget-object v6, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_PANIC:Lcom/arthenica/ffmpegkit/Level;

    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    const/16 v7, 0x8

    .line 94
    .line 95
    aput v7, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 96
    .line 97
    :catch_7
    :try_start_8
    sget-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    .line 98
    .line 99
    sget-object v6, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_STDERR:Lcom/arthenica/ffmpegkit/Level;

    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    const/16 v7, 0x9

    .line 106
    .line 107
    aput v7, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 108
    .line 109
    :catch_8
    :try_start_9
    sget-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    .line 110
    .line 111
    sget-object v6, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_VERBOSE:Lcom/arthenica/ffmpegkit/Level;

    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    const/16 v7, 0xa

    .line 118
    .line 119
    aput v7, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 120
    .line 121
    :catch_9
    invoke-static {}, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->values()[Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    array-length v5, v5

    .line 126
    new-array v5, v5, [I

    .line 127
    .line 128
    sput-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy:[I

    .line 129
    .line 130
    :try_start_a
    sget-object v6, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->NEVER_PRINT_LOGS:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    aput v1, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 137
    .line 138
    :catch_a
    :try_start_b
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy:[I

    .line 139
    .line 140
    sget-object v5, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_GLOBAL_CALLBACK_NOT_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    aput v0, v1, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 147
    .line 148
    :catch_b
    :try_start_c
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy:[I

    .line 149
    .line 150
    sget-object v1, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_SESSION_CALLBACK_NOT_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 157
    .line 158
    :catch_c
    :try_start_d
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy:[I

    .line 159
    .line 160
    sget-object v1, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_NO_CALLBACKS_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    aput v3, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 167
    .line 168
    :catch_d
    :try_start_e
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy:[I

    .line 169
    .line 170
    sget-object v1, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->ALWAYS_PRINT_LOGS:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    aput v4, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 177
    .line 178
    :catch_e
    return-void
.end method
