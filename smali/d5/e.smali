.class public abstract Ld5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll5/d;

.field public static final b:Ll5/d;

.field public static final c:Ll5/d;

.field public static final d:Ll5/d;

.field public static final e:Ll5/d;

.field public static final f:Ll5/d;

.field public static final g:Ll5/d;

.field public static final h:Ll5/d;

.field public static final i:Ll5/d;

.field public static final j:Ll5/d;

.field public static final k:Ll5/d;

.field public static final l:Ll5/d;

.field public static final m:Ll5/d;

.field public static final n:Ll5/d;

.field public static final o:Ll5/d;

.field public static final p:Ll5/d;

.field public static final q:[Ll5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Ll5/d;

    .line 2
    .line 3
    const-string v1, "account_capability_api"

    .line 4
    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Ll5/d;-><init>(Ljava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Ld5/e;->a:Ll5/d;

    .line 11
    .line 12
    new-instance v1, Ll5/d;

    .line 13
    .line 14
    const-string v4, "account_data_service"

    .line 15
    .line 16
    const-wide/16 v5, 0x6

    .line 17
    .line 18
    invoke-direct {v1, v4, v5, v6}, Ll5/d;-><init>(Ljava/lang/String;J)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Ld5/e;->b:Ll5/d;

    .line 22
    .line 23
    new-instance v4, Ll5/d;

    .line 24
    .line 25
    const-string v5, "account_data_service_legacy"

    .line 26
    .line 27
    invoke-direct {v4, v5, v2, v3}, Ll5/d;-><init>(Ljava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Ld5/e;->c:Ll5/d;

    .line 31
    .line 32
    new-instance v5, Ll5/d;

    .line 33
    .line 34
    const-string v6, "account_data_service_token"

    .line 35
    .line 36
    const-wide/16 v7, 0x8

    .line 37
    .line 38
    invoke-direct {v5, v6, v7, v8}, Ll5/d;-><init>(Ljava/lang/String;J)V

    .line 39
    .line 40
    .line 41
    sput-object v5, Ld5/e;->d:Ll5/d;

    .line 42
    .line 43
    new-instance v6, Ll5/d;

    .line 44
    .line 45
    const-string v7, "account_data_service_visibility"

    .line 46
    .line 47
    invoke-direct {v6, v7, v2, v3}, Ll5/d;-><init>(Ljava/lang/String;J)V

    .line 48
    .line 49
    .line 50
    sput-object v6, Ld5/e;->e:Ll5/d;

    .line 51
    .line 52
    new-instance v7, Ll5/d;

    .line 53
    .line 54
    const-string v8, "config_sync"

    .line 55
    .line 56
    invoke-direct {v7, v8, v2, v3}, Ll5/d;-><init>(Ljava/lang/String;J)V

    .line 57
    .line 58
    .line 59
    sput-object v7, Ld5/e;->f:Ll5/d;

    .line 60
    .line 61
    new-instance v8, Ll5/d;

    .line 62
    .line 63
    const-string v9, "device_account_api"

    .line 64
    .line 65
    invoke-direct {v8, v9, v2, v3}, Ll5/d;-><init>(Ljava/lang/String;J)V

    .line 66
    .line 67
    .line 68
    sput-object v8, Ld5/e;->g:Ll5/d;

    .line 69
    .line 70
    new-instance v9, Ll5/d;

    .line 71
    .line 72
    const-string v10, "device_account_jwt_creation"

    .line 73
    .line 74
    invoke-direct {v9, v10, v2, v3}, Ll5/d;-><init>(Ljava/lang/String;J)V

    .line 75
    .line 76
    .line 77
    sput-object v9, Ld5/e;->h:Ll5/d;

    .line 78
    .line 79
    new-instance v10, Ll5/d;

    .line 80
    .line 81
    const-string v11, "gaiaid_primary_email_api"

    .line 82
    .line 83
    invoke-direct {v10, v11, v2, v3}, Ll5/d;-><init>(Ljava/lang/String;J)V

    .line 84
    .line 85
    .line 86
    sput-object v10, Ld5/e;->i:Ll5/d;

    .line 87
    .line 88
    new-instance v11, Ll5/d;

    .line 89
    .line 90
    const-string v12, "get_restricted_accounts_api"

    .line 91
    .line 92
    invoke-direct {v11, v12, v2, v3}, Ll5/d;-><init>(Ljava/lang/String;J)V

    .line 93
    .line 94
    .line 95
    sput-object v11, Ld5/e;->j:Ll5/d;

    .line 96
    .line 97
    new-instance v12, Ll5/d;

    .line 98
    .line 99
    const-string v13, "google_auth_service_accounts"

    .line 100
    .line 101
    const-wide/16 v14, 0x2

    .line 102
    .line 103
    invoke-direct {v12, v13, v14, v15}, Ll5/d;-><init>(Ljava/lang/String;J)V

    .line 104
    .line 105
    .line 106
    sput-object v12, Ld5/e;->k:Ll5/d;

    .line 107
    .line 108
    new-instance v13, Ll5/d;

    .line 109
    .line 110
    const-string v14, "google_auth_service_token"

    .line 111
    .line 112
    const-wide/16 v2, 0x3

    .line 113
    .line 114
    invoke-direct {v13, v14, v2, v3}, Ll5/d;-><init>(Ljava/lang/String;J)V

    .line 115
    .line 116
    .line 117
    sput-object v13, Ld5/e;->l:Ll5/d;

    .line 118
    .line 119
    new-instance v14, Ll5/d;

    .line 120
    .line 121
    const-string v2, "hub_mode_api"

    .line 122
    .line 123
    move-object/from16 v17, v12

    .line 124
    .line 125
    move-object/from16 v18, v13

    .line 126
    .line 127
    const-wide/16 v12, 0x1

    .line 128
    .line 129
    invoke-direct {v14, v2, v12, v13}, Ll5/d;-><init>(Ljava/lang/String;J)V

    .line 130
    .line 131
    .line 132
    sput-object v14, Ld5/e;->m:Ll5/d;

    .line 133
    .line 134
    new-instance v15, Ll5/d;

    .line 135
    .line 136
    const-string v2, "work_account_client_is_whitelisted"

    .line 137
    .line 138
    invoke-direct {v15, v2, v12, v13}, Ll5/d;-><init>(Ljava/lang/String;J)V

    .line 139
    .line 140
    .line 141
    sput-object v15, Ld5/e;->n:Ll5/d;

    .line 142
    .line 143
    new-instance v3, Ll5/d;

    .line 144
    .line 145
    const-string v2, "factory_reset_protection_api"

    .line 146
    .line 147
    invoke-direct {v3, v2, v12, v13}, Ll5/d;-><init>(Ljava/lang/String;J)V

    .line 148
    .line 149
    .line 150
    sput-object v3, Ld5/e;->o:Ll5/d;

    .line 151
    .line 152
    new-instance v2, Ll5/d;

    .line 153
    .line 154
    move-object/from16 v16, v3

    .line 155
    .line 156
    const-string v3, "google_auth_api"

    .line 157
    .line 158
    invoke-direct {v2, v3, v12, v13}, Ll5/d;-><init>(Ljava/lang/String;J)V

    .line 159
    .line 160
    .line 161
    sput-object v2, Ld5/e;->p:Ll5/d;

    .line 162
    .line 163
    move-object/from16 v19, v2

    .line 164
    .line 165
    move-object v2, v4

    .line 166
    move-object v3, v5

    .line 167
    move-object v4, v6

    .line 168
    move-object v5, v7

    .line 169
    move-object v6, v8

    .line 170
    move-object v7, v9

    .line 171
    move-object v8, v10

    .line 172
    move-object v9, v11

    .line 173
    move-object/from16 v10, v17

    .line 174
    .line 175
    move-object/from16 v11, v18

    .line 176
    .line 177
    move-object v12, v14

    .line 178
    move-object v13, v15

    .line 179
    move-object/from16 v14, v16

    .line 180
    .line 181
    move-object/from16 v15, v19

    .line 182
    .line 183
    filled-new-array/range {v0 .. v15}, [Ll5/d;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    sput-object v0, Ld5/e;->q:[Ll5/d;

    .line 188
    .line 189
    return-void
.end method
