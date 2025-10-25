.class Lcom/yandex/metrica/impl/ob/Ch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/net/Socket;

.field private final b:Lcom/yandex/metrica/impl/ob/Gh;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/Bh;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/Hh;


# direct methods
.method constructor <init>(Ljava/net/Socket;Lcom/yandex/metrica/impl/ob/Gh;Ljava/util/Map;Lcom/yandex/metrica/impl/ob/Hh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Socket;",
            "Lcom/yandex/metrica/impl/ob/Gh;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/Bh;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/Hh;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ch;->a:Ljava/net/Socket;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Ch;->b:Lcom/yandex/metrica/impl/ob/Gh;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Ch;->c:Ljava/util/Map;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Ch;->d:Lcom/yandex/metrica/impl/ob/Hh;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ch;->a:Ljava/net/Socket;

    .line 3
    .line 4
    const/16 v2, 0x3e8

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/io/BufferedReader;

    .line 10
    .line 11
    new-instance v2, Ljava/io/InputStreamReader;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Ch;->a:Ljava/net/Socket;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_1
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ch;->d:Lcom/yandex/metrica/impl/ob/Hh;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Hh;->a()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    const-string v3, "GET /"

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    const-string v3, "POST /"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    :cond_0
    const/16 v3, 0x2f

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    const/16 v4, 0x20

    .line 65
    .line 66
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(II)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-lez v4, :cond_1

    .line 71
    .line 72
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Ch;->b:Lcom/yandex/metrica/impl/ob/Gh;

    .line 78
    .line 79
    check-cast v3, Lcom/yandex/metrica/impl/ob/Jh;

    .line 80
    .line 81
    const-string v4, "invalid_route"

    .line 82
    .line 83
    invoke-virtual {v3, v4, v2}, Lcom/yandex/metrica/impl/ob/Jh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    if-eqz v0, :cond_4

    .line 87
    .line 88
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Ch;->c:Ljava/util/Map;

    .line 97
    .line 98
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lcom/yandex/metrica/impl/ob/Bh;

    .line 103
    .line 104
    if-eqz v3, :cond_3

    .line 105
    .line 106
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ch;->a:Ljava/net/Socket;

    .line 107
    .line 108
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Ch;->d:Lcom/yandex/metrica/impl/ob/Hh;

    .line 109
    .line 110
    invoke-interface {v3, v0, v2, v4}, Lcom/yandex/metrica/impl/ob/Bh;->a(Ljava/net/Socket;Landroid/net/Uri;Lcom/yandex/metrica/impl/ob/Hh;)Lcom/yandex/metrica/impl/ob/Ah;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/Ah;->d:Landroid/net/Uri;

    .line 115
    .line 116
    const-string v3, "t"

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Ah;->c:Lcom/yandex/metrica/impl/ob/di;

    .line 123
    .line 124
    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/di;->b:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_2

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Ah;->a()V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ah;->b:Lcom/yandex/metrica/impl/ob/Gh;

    .line 137
    .line 138
    check-cast v0, Lcom/yandex/metrica/impl/ob/Jh;

    .line 139
    .line 140
    const-string v2, "request_with_wrong_token"

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/Jh;->a(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ch;->b:Lcom/yandex/metrica/impl/ob/Gh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .line 148
    const-string v3, "request_to_unknown_path"

    .line 149
    .line 150
    check-cast v2, Lcom/yandex/metrica/impl/ob/Jh;

    .line 151
    .line 152
    :try_start_2
    invoke-virtual {v2, v3, v0}, Lcom/yandex/metrica/impl/ob/Jh;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    .line 154
    .line 155
    :cond_4
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    move-object v5, v1

    .line 161
    move-object v1, v0

    .line 162
    move-object v0, v5

    .line 163
    goto :goto_2

    .line 164
    :catchall_1
    move-exception v1

    .line 165
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ch;->b:Lcom/yandex/metrica/impl/ob/Gh;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 166
    .line 167
    const-string v3, "LocalHttpServer exception"

    .line 168
    .line 169
    check-cast v2, Lcom/yandex/metrica/impl/ob/Jh;

    .line 170
    .line 171
    :try_start_5
    invoke-virtual {v2, v3, v1}, Lcom/yandex/metrica/impl/ob/Jh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 172
    .line 173
    .line 174
    if-eqz v0, :cond_5

    .line 175
    .line 176
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 177
    .line 178
    .line 179
    :catchall_2
    :cond_5
    :goto_3
    return-void

    .line 180
    :catchall_3
    move-exception v1

    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 184
    .line 185
    .line 186
    :catchall_4
    :cond_6
    throw v1
.end method
