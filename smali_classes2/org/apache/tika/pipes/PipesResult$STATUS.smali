.class public final enum Lorg/apache/tika/pipes/PipesResult$STATUS;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/pipes/PipesResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/tika/pipes/PipesResult$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum CLIENT_UNAVAILABLE_WITHIN_MS:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum EMIT_EXCEPTION:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum EMIT_SUCCESS:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum EMIT_SUCCESS_PARSE_EXCEPTION:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum EMPTY_OUTPUT:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum FETCHER_INITIALIZATION_EXCEPTION:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum FETCH_EXCEPTION:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum INTERMEDIATE_RESULT:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum INTERRUPTED_EXCEPTION:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum NO_EMITTER_FOUND:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum NO_FETCHER_FOUND:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum OOM:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum PARSE_EXCEPTION_EMIT:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum PARSE_EXCEPTION_NO_EMIT:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum PARSE_SUCCESS:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum PARSE_SUCCESS_WITH_EXCEPTION:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum TIMEOUT:Lorg/apache/tika/pipes/PipesResult$STATUS;

.field public static final enum UNSPECIFIED_CRASH:Lorg/apache/tika/pipes/PipesResult$STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v1, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const-string v2, "CLIENT_UNAVAILABLE_WITHIN_MS"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v1, v2, v3}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    sput-object v1, Lorg/apache/tika/pipes/PipesResult$STATUS;->CLIENT_UNAVAILABLE_WITHIN_MS:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 11
    .line 12
    new-instance v2, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    const-string v3, "FETCHER_INITIALIZATION_EXCEPTION"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v2, v3, v4}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sput-object v2, Lorg/apache/tika/pipes/PipesResult$STATUS;->FETCHER_INITIALIZATION_EXCEPTION:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 22
    .line 23
    new-instance v3, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 24
    .line 25
    move-object v2, v3

    .line 26
    const-string v4, "FETCH_EXCEPTION"

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    invoke-direct {v3, v4, v5}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    sput-object v3, Lorg/apache/tika/pipes/PipesResult$STATUS;->FETCH_EXCEPTION:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 33
    .line 34
    new-instance v4, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 35
    .line 36
    move-object v3, v4

    .line 37
    const-string v5, "EMPTY_OUTPUT"

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    invoke-direct {v4, v5, v6}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    sput-object v4, Lorg/apache/tika/pipes/PipesResult$STATUS;->EMPTY_OUTPUT:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 44
    .line 45
    new-instance v5, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 46
    .line 47
    move-object v4, v5

    .line 48
    const-string v6, "PARSE_EXCEPTION_NO_EMIT"

    .line 49
    .line 50
    const/4 v7, 0x4

    .line 51
    invoke-direct {v5, v6, v7}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    sput-object v5, Lorg/apache/tika/pipes/PipesResult$STATUS;->PARSE_EXCEPTION_NO_EMIT:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 55
    .line 56
    new-instance v6, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 57
    .line 58
    move-object v5, v6

    .line 59
    const-string v7, "PARSE_EXCEPTION_EMIT"

    .line 60
    .line 61
    const/4 v8, 0x5

    .line 62
    invoke-direct {v6, v7, v8}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v6, Lorg/apache/tika/pipes/PipesResult$STATUS;->PARSE_EXCEPTION_EMIT:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 66
    .line 67
    new-instance v7, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 68
    .line 69
    move-object v6, v7

    .line 70
    const-string v8, "PARSE_SUCCESS"

    .line 71
    .line 72
    const/4 v9, 0x6

    .line 73
    invoke-direct {v7, v8, v9}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    sput-object v7, Lorg/apache/tika/pipes/PipesResult$STATUS;->PARSE_SUCCESS:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 77
    .line 78
    new-instance v8, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 79
    .line 80
    move-object v7, v8

    .line 81
    const-string v9, "PARSE_SUCCESS_WITH_EXCEPTION"

    .line 82
    .line 83
    const/4 v10, 0x7

    .line 84
    invoke-direct {v8, v9, v10}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v8, Lorg/apache/tika/pipes/PipesResult$STATUS;->PARSE_SUCCESS_WITH_EXCEPTION:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 88
    .line 89
    new-instance v9, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 90
    .line 91
    move-object v8, v9

    .line 92
    const-string v10, "OOM"

    .line 93
    .line 94
    const/16 v11, 0x8

    .line 95
    .line 96
    invoke-direct {v9, v10, v11}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    sput-object v9, Lorg/apache/tika/pipes/PipesResult$STATUS;->OOM:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 100
    .line 101
    new-instance v10, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 102
    .line 103
    move-object v9, v10

    .line 104
    const-string v11, "TIMEOUT"

    .line 105
    .line 106
    const/16 v12, 0x9

    .line 107
    .line 108
    invoke-direct {v10, v11, v12}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    sput-object v10, Lorg/apache/tika/pipes/PipesResult$STATUS;->TIMEOUT:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 112
    .line 113
    new-instance v11, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 114
    .line 115
    move-object v10, v11

    .line 116
    const-string v12, "UNSPECIFIED_CRASH"

    .line 117
    .line 118
    const/16 v13, 0xa

    .line 119
    .line 120
    invoke-direct {v11, v12, v13}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v11, Lorg/apache/tika/pipes/PipesResult$STATUS;->UNSPECIFIED_CRASH:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 124
    .line 125
    new-instance v12, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 126
    .line 127
    move-object v11, v12

    .line 128
    const-string v13, "NO_EMITTER_FOUND"

    .line 129
    .line 130
    const/16 v14, 0xb

    .line 131
    .line 132
    invoke-direct {v12, v13, v14}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    sput-object v12, Lorg/apache/tika/pipes/PipesResult$STATUS;->NO_EMITTER_FOUND:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 136
    .line 137
    new-instance v13, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 138
    .line 139
    move-object v12, v13

    .line 140
    const-string v14, "EMIT_SUCCESS"

    .line 141
    .line 142
    const/16 v15, 0xc

    .line 143
    .line 144
    invoke-direct {v13, v14, v15}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    sput-object v13, Lorg/apache/tika/pipes/PipesResult$STATUS;->EMIT_SUCCESS:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 148
    .line 149
    new-instance v14, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 150
    .line 151
    move-object v13, v14

    .line 152
    const-string v15, "EMIT_SUCCESS_PARSE_EXCEPTION"

    .line 153
    .line 154
    move-object/from16 v18, v0

    .line 155
    .line 156
    const/16 v0, 0xd

    .line 157
    .line 158
    invoke-direct {v14, v15, v0}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    sput-object v14, Lorg/apache/tika/pipes/PipesResult$STATUS;->EMIT_SUCCESS_PARSE_EXCEPTION:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 162
    .line 163
    new-instance v0, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 164
    .line 165
    move-object v14, v0

    .line 166
    const-string v15, "EMIT_EXCEPTION"

    .line 167
    .line 168
    move-object/from16 v19, v1

    .line 169
    .line 170
    const/16 v1, 0xe

    .line 171
    .line 172
    invoke-direct {v0, v15, v1}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    sput-object v0, Lorg/apache/tika/pipes/PipesResult$STATUS;->EMIT_EXCEPTION:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 176
    .line 177
    new-instance v0, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 178
    .line 179
    move-object v15, v0

    .line 180
    const-string v1, "INTERRUPTED_EXCEPTION"

    .line 181
    .line 182
    move-object/from16 v20, v2

    .line 183
    .line 184
    const/16 v2, 0xf

    .line 185
    .line 186
    invoke-direct {v0, v1, v2}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lorg/apache/tika/pipes/PipesResult$STATUS;->INTERRUPTED_EXCEPTION:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 190
    .line 191
    new-instance v0, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 192
    .line 193
    move-object/from16 v16, v0

    .line 194
    .line 195
    const-string v1, "NO_FETCHER_FOUND"

    .line 196
    .line 197
    const/16 v2, 0x10

    .line 198
    .line 199
    invoke-direct {v0, v1, v2}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 200
    .line 201
    .line 202
    sput-object v0, Lorg/apache/tika/pipes/PipesResult$STATUS;->NO_FETCHER_FOUND:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 203
    .line 204
    new-instance v0, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 205
    .line 206
    move-object/from16 v17, v0

    .line 207
    .line 208
    const-string v1, "INTERMEDIATE_RESULT"

    .line 209
    .line 210
    const/16 v2, 0x11

    .line 211
    .line 212
    invoke-direct {v0, v1, v2}, Lorg/apache/tika/pipes/PipesResult$STATUS;-><init>(Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    sput-object v0, Lorg/apache/tika/pipes/PipesResult$STATUS;->INTERMEDIATE_RESULT:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 216
    .line 217
    move-object/from16 v0, v18

    .line 218
    .line 219
    move-object/from16 v1, v19

    .line 220
    .line 221
    move-object/from16 v2, v20

    .line 222
    .line 223
    filled-new-array/range {v0 .. v17}, [Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    sput-object v0, Lorg/apache/tika/pipes/PipesResult$STATUS;->$VALUES:[Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 228
    .line 229
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tika/pipes/PipesResult$STATUS;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/tika/pipes/PipesResult$STATUS;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/tika/pipes/PipesResult$STATUS;->$VALUES:[Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/tika/pipes/PipesResult$STATUS;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 8
    .line 9
    return-object v0
.end method
