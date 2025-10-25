.class synthetic Lio/appmetrica/analytics/flutter/utils/Converter$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/utils/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$appmetrica$analytics$DeferredDeeplinkListener$Error:[I

.field static final synthetic $SwitchMap$io$appmetrica$analytics$DeferredDeeplinkParametersListener$Error:[I

.field static final synthetic $SwitchMap$io$appmetrica$analytics$StartupParamsItemStatus:[I

.field static final synthetic $SwitchMap$io$appmetrica$analytics$flutter$pigeon$Pigeon$UserProfileAttributeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/DeferredDeeplinkParametersListener$Error;->values()[Lio/appmetrica/analytics/DeferredDeeplinkParametersListener$Error;

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
    sput-object v0, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$DeferredDeeplinkParametersListener$Error:[I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_0
    sget-object v2, Lio/appmetrica/analytics/DeferredDeeplinkParametersListener$Error;->NOT_A_FIRST_LAUNCH:Lio/appmetrica/analytics/DeferredDeeplinkParametersListener$Error;

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
    sget-object v2, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$DeferredDeeplinkParametersListener$Error:[I

    .line 21
    .line 22
    sget-object v3, Lio/appmetrica/analytics/DeferredDeeplinkParametersListener$Error;->PARSE_ERROR:Lio/appmetrica/analytics/DeferredDeeplinkParametersListener$Error;

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
    sget-object v3, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$DeferredDeeplinkParametersListener$Error:[I

    .line 32
    .line 33
    sget-object v4, Lio/appmetrica/analytics/DeferredDeeplinkParametersListener$Error;->NO_REFERRER:Lio/appmetrica/analytics/DeferredDeeplinkParametersListener$Error;

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
    invoke-static {}, Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;->values()[Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    array-length v3, v3

    .line 46
    new-array v3, v3, [I

    .line 47
    .line 48
    sput-object v3, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$DeferredDeeplinkListener$Error:[I

    .line 49
    .line 50
    :try_start_3
    sget-object v4, Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;->NOT_A_FIRST_LAUNCH:Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 57
    .line 58
    :catch_3
    :try_start_4
    sget-object v3, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$DeferredDeeplinkListener$Error:[I

    .line 59
    .line 60
    sget-object v4, Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;->PARSE_ERROR:Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 67
    .line 68
    :catch_4
    :try_start_5
    sget-object v3, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$DeferredDeeplinkListener$Error:[I

    .line 69
    .line 70
    sget-object v4, Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;->NO_REFERRER:Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;

    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 77
    .line 78
    :catch_5
    invoke-static {}, Lio/appmetrica/analytics/StartupParamsItemStatus;->values()[Lio/appmetrica/analytics/StartupParamsItemStatus;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    array-length v3, v3

    .line 83
    new-array v3, v3, [I

    .line 84
    .line 85
    sput-object v3, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$StartupParamsItemStatus:[I

    .line 86
    .line 87
    :try_start_6
    sget-object v4, Lio/appmetrica/analytics/StartupParamsItemStatus;->OK:Lio/appmetrica/analytics/StartupParamsItemStatus;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 94
    .line 95
    :catch_6
    :try_start_7
    sget-object v3, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$StartupParamsItemStatus:[I

    .line 96
    .line 97
    sget-object v4, Lio/appmetrica/analytics/StartupParamsItemStatus;->PROVIDER_UNAVAILABLE:Lio/appmetrica/analytics/StartupParamsItemStatus;

    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    aput v0, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 104
    .line 105
    :catch_7
    :try_start_8
    sget-object v3, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$StartupParamsItemStatus:[I

    .line 106
    .line 107
    sget-object v4, Lio/appmetrica/analytics/StartupParamsItemStatus;->INVALID_VALUE_FROM_PROVIDER:Lio/appmetrica/analytics/StartupParamsItemStatus;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    aput v2, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 114
    .line 115
    :catch_8
    const/4 v3, 0x4

    .line 116
    :try_start_9
    sget-object v4, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$StartupParamsItemStatus:[I

    .line 117
    .line 118
    sget-object v5, Lio/appmetrica/analytics/StartupParamsItemStatus;->NETWORK_ERROR:Lio/appmetrica/analytics/StartupParamsItemStatus;

    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    aput v3, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 125
    .line 126
    :catch_9
    const/4 v4, 0x5

    .line 127
    :try_start_a
    sget-object v5, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$StartupParamsItemStatus:[I

    .line 128
    .line 129
    sget-object v6, Lio/appmetrica/analytics/StartupParamsItemStatus;->FEATURE_DISABLED:Lio/appmetrica/analytics/StartupParamsItemStatus;

    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    aput v4, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 136
    .line 137
    :catch_a
    invoke-static {}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;->values()[Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    array-length v5, v5

    .line 142
    new-array v5, v5, [I

    .line 143
    .line 144
    sput-object v5, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$flutter$pigeon$Pigeon$UserProfileAttributeType:[I

    .line 145
    .line 146
    :try_start_b
    sget-object v6, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;->BIRTH_DATE:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

    .line 147
    .line 148
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    aput v1, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 153
    .line 154
    :catch_b
    :try_start_c
    sget-object v1, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$flutter$pigeon$Pigeon$UserProfileAttributeType:[I

    .line 155
    .line 156
    sget-object v5, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;->BOOLEAN:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    aput v0, v1, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 163
    .line 164
    :catch_c
    :try_start_d
    sget-object v0, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$flutter$pigeon$Pigeon$UserProfileAttributeType:[I

    .line 165
    .line 166
    sget-object v1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;->COUNTER:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 173
    .line 174
    :catch_d
    :try_start_e
    sget-object v0, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$flutter$pigeon$Pigeon$UserProfileAttributeType:[I

    .line 175
    .line 176
    sget-object v1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;->GENDER:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    aput v3, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 183
    .line 184
    :catch_e
    :try_start_f
    sget-object v0, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$flutter$pigeon$Pigeon$UserProfileAttributeType:[I

    .line 185
    .line 186
    sget-object v1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;->NAME:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    aput v4, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 193
    .line 194
    :catch_f
    :try_start_10
    sget-object v0, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$flutter$pigeon$Pigeon$UserProfileAttributeType:[I

    .line 195
    .line 196
    sget-object v1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;->NOTIFICATION_ENABLED:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    const/4 v2, 0x6

    .line 203
    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 204
    .line 205
    :catch_10
    :try_start_11
    sget-object v0, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$flutter$pigeon$Pigeon$UserProfileAttributeType:[I

    .line 206
    .line 207
    sget-object v1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;->NUMBER:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    const/4 v2, 0x7

    .line 214
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    .line 215
    .line 216
    :catch_11
    :try_start_12
    sget-object v0, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$flutter$pigeon$Pigeon$UserProfileAttributeType:[I

    .line 217
    .line 218
    sget-object v1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;->STRING:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    const/16 v2, 0x8

    .line 225
    .line 226
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 227
    .line 228
    :catch_12
    return-void
.end method
