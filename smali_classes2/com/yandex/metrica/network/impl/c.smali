.class public final Lcom/yandex/metrica/network/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/network/Call;


# instance fields
.field private final a:Lcom/yandex/metrica/network/NetworkClient;

.field private final b:Lcom/yandex/metrica/network/Request;

.field private final c:Lcom/yandex/metrica/network/impl/d;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/network/NetworkClient;Lcom/yandex/metrica/network/Request;Lcom/yandex/metrica/network/impl/d;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/network/impl/c;->a:Lcom/yandex/metrica/network/NetworkClient;

    iput-object p2, p0, Lcom/yandex/metrica/network/impl/c;->b:Lcom/yandex/metrica/network/Request;

    iput-object p3, p0, Lcom/yandex/metrica/network/impl/c;->c:Lcom/yandex/metrica/network/impl/d;

    return-void
.end method

.method private final a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 3

    iget-object v0, p0, Lcom/yandex/metrica/network/impl/c;->b:Lcom/yandex/metrica/network/Request;

    invoke-virtual {v0}, Lcom/yandex/metrica/network/Request;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/network/impl/c;->a:Lcom/yandex/metrica/network/NetworkClient;

    invoke-virtual {v0}, Lcom/yandex/metrica/network/NetworkClient;->d()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "it"

    if-eqz v0, :cond_1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/network/impl/c;->a:Lcom/yandex/metrica/network/NetworkClient;

    invoke-virtual {v0}, Lcom/yandex/metrica/network/NetworkClient;->a()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/network/impl/c;->a:Lcom/yandex/metrica/network/NetworkClient;

    invoke-virtual {v0}, Lcom/yandex/metrica/network/NetworkClient;->f()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/network/impl/c;->a:Lcom/yandex/metrica/network/NetworkClient;

    invoke-virtual {v0}, Lcom/yandex/metrica/network/NetworkClient;->b()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/network/impl/c;->b:Lcom/yandex/metrica/network/Request;

    invoke-virtual {v0}, Lcom/yandex/metrica/network/Request;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/metrica/network/impl/c;->a:Lcom/yandex/metrica/network/NetworkClient;

    invoke-virtual {v0}, Lcom/yandex/metrica/network/NetworkClient;->e()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public execute()Lcom/yandex/metrica/network/Response;
    .locals 15

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/network/impl/c;->c:Lcom/yandex/metrica/network/impl/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/network/impl/c;->b:Lcom/yandex/metrica/network/Request;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/yandex/metrica/network/Request;->d()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/net/URL;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 21
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    move-object v0, v2

    .line 27
    :cond_0
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    new-array v3, v1, [B

    .line 33
    .line 34
    new-array v4, v1, [B

    .line 35
    .line 36
    :try_start_1
    invoke-direct {p0, v0}, Lcom/yandex/metrica/network/impl/c;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 37
    .line 38
    .line 39
    iget-object v5, p0, Lcom/yandex/metrica/network/impl/c;->b:Lcom/yandex/metrica/network/Request;

    .line 40
    .line 41
    invoke-virtual {v5}, Lcom/yandex/metrica/network/Request;->c()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const-string v6, "POST"

    .line 46
    .line 47
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/4 v6, 0x1

    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 58
    .line 59
    .line 60
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    :try_start_2
    iget-object v7, p0, Lcom/yandex/metrica/network/impl/c;->b:Lcom/yandex/metrica/network/Request;

    .line 64
    .line 65
    invoke-virtual {v7}, Lcom/yandex/metrica/network/Request;->a()[B

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    .line 74
    .line 75
    :try_start_3
    invoke-static {v5, v2}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v6

    .line 80
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 81
    :catchall_1
    move-exception v7

    .line 82
    :try_start_5
    invoke-static {v5, v6}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw v7

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 87
    .line 88
    .line 89
    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 90
    :try_start_6
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 94
    :try_start_7
    sget-object v8, Lcom/yandex/metrica/network/impl/e;->a:Lcom/yandex/metrica/network/impl/e;

    .line 95
    .line 96
    iget-object v9, p0, Lcom/yandex/metrica/network/impl/c;->a:Lcom/yandex/metrica/network/NetworkClient;

    .line 97
    .line 98
    invoke-virtual {v9}, Lcom/yandex/metrica/network/NetworkClient;->c()I

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    new-instance v10, Lcom/yandex/metrica/network/impl/a;

    .line 103
    .line 104
    invoke-direct {v10, v0}, Lcom/yandex/metrica/network/impl/a;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v9, v10}, Lcom/yandex/metrica/network/impl/e;->b(ILid/a;)[B

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iget-object v9, p0, Lcom/yandex/metrica/network/impl/c;->a:Lcom/yandex/metrica/network/NetworkClient;

    .line 112
    .line 113
    invoke-virtual {v9}, Lcom/yandex/metrica/network/NetworkClient;->c()I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    new-instance v10, Lcom/yandex/metrica/network/impl/b;

    .line 118
    .line 119
    invoke-direct {v10, v0}, Lcom/yandex/metrica/network/impl/b;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8, v9, v10}, Lcom/yandex/metrica/network/impl/e;->b(ILid/a;)[B

    .line 123
    .line 124
    .line 125
    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 126
    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 127
    .line 128
    .line 129
    :catchall_2
    move-object v14, v2

    .line 130
    move-object v11, v3

    .line 131
    move-object v12, v4

    .line 132
    move v10, v5

    .line 133
    move v9, v6

    .line 134
    goto :goto_2

    .line 135
    :catchall_3
    move-exception v2

    .line 136
    goto :goto_1

    .line 137
    :catchall_4
    move-exception v6

    .line 138
    move-object v7, v2

    .line 139
    move-object v2, v6

    .line 140
    goto :goto_1

    .line 141
    :catchall_5
    move-exception v5

    .line 142
    move-object v7, v2

    .line 143
    move-object v2, v5

    .line 144
    move v5, v1

    .line 145
    :goto_1
    :try_start_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 146
    .line 147
    .line 148
    :catchall_6
    move v9, v1

    .line 149
    move-object v14, v2

    .line 150
    move-object v11, v3

    .line 151
    move-object v12, v4

    .line 152
    move v10, v5

    .line 153
    :goto_2
    move-object v13, v7

    .line 154
    new-instance v0, Lcom/yandex/metrica/network/Response;

    .line 155
    .line 156
    move-object v8, v0

    .line 157
    invoke-direct/range {v8 .. v14}, Lcom/yandex/metrica/network/Response;-><init>(ZI[B[BLjava/util/Map;Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    return-object v0

    .line 161
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v1, "Connection created for "

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/yandex/metrica/network/impl/c;->b:Lcom/yandex/metrica/network/Request;

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/yandex/metrica/network/Request;->d()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v1, " does not represent https connection"

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    new-instance v1, Lcom/yandex/metrica/network/Response;

    .line 190
    .line 191
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 192
    .line 193
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-direct {v1, v2}, Lcom/yandex/metrica/network/Response;-><init>(Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    return-object v1

    .line 200
    :catchall_7
    move-exception v0

    .line 201
    new-instance v1, Lcom/yandex/metrica/network/Response;

    .line 202
    .line 203
    invoke-direct {v1, v0}, Lcom/yandex/metrica/network/Response;-><init>(Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    return-object v1
.end method
