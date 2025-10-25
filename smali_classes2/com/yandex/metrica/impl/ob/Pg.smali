.class public Lcom/yandex/metrica/impl/ob/Pg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/IParamsAppender;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ng;

.field private final b:Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;

.field private c:J


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ng;Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Pg;->a:Lcom/yandex/metrica/impl/ob/Ng;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Pg;->b:Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ng;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ng;-><init>()V

    new-instance v1, Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;-><init>(Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;)V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/Pg;-><init>(Lcom/yandex/metrica/impl/ob/Ng;Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/Pg;->c:J

    .line 2
    .line 3
    return-void
.end method

.method public appendParams(Landroid/net/Uri$Builder;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/yandex/metrica/impl/ob/gd;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pg;->b:Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;->b(Landroid/net/Uri$Builder;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pg;->b:Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->j()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "a72bf6f57701ed3c2b8ed570054febbff4e58c12"

    .line 18
    .line 19
    invoke-virtual {v0, p1, v2, v1}, Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "location"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->g()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "deviceid"

    .line 32
    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->i()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "device_type"

    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->w()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "uuid"

    .line 50
    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 52
    .line 53
    .line 54
    const-string v0, "analytics_sdk_version_name"

    .line 55
    .line 56
    const-string v1, "5.3.0"

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 59
    .line 60
    .line 61
    const-string v0, "analytics_sdk_build_number"

    .line 62
    .line 63
    const-string v1, "45003240"

    .line 64
    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->j()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "analytics_sdk_build_type"

    .line 73
    .line 74
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->f()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v1, "app_version_name"

    .line 82
    .line 83
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->b()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "app_build_number"

    .line 91
    .line 92
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->o()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "os_version"

    .line 100
    .line 101
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->n()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "os_api_level"

    .line 113
    .line 114
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->h()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const-string v1, "is_rooted"

    .line 122
    .line 123
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->c()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v1, "app_framework"

    .line 131
    .line 132
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->p()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const-string v1, "app_id"

    .line 140
    .line 141
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 142
    .line 143
    .line 144
    const-string v0, "app_platform"

    .line 145
    .line 146
    const-string v1, "android"

    .line 147
    .line 148
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 149
    .line 150
    .line 151
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/Pg;->c:J

    .line 152
    .line 153
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v1, "request_id"

    .line 158
    .line 159
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->d()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const-string v1, "app_set_id"

    .line 167
    .line 168
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->e()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const-string v1, "app_set_id_scope"

    .line 176
    .line 177
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pg;->a:Lcom/yandex/metrica/impl/ob/Ng;

    .line 181
    .line 182
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->a()Lcom/yandex/metrica/impl/ob/zb;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Ng;->a(Landroid/net/Uri$Builder;Lcom/yandex/metrica/impl/ob/zb;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method
