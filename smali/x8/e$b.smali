.class final Lx8/e$b;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx8/e;->a(Ljava/util/Map;Lid/Function2;Lid/Function2;Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lx8/e;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lid/Function2;

.field final synthetic e:Lid/Function2;


# direct methods
.method constructor <init>(Lx8/e;Ljava/util/Map;Lid/Function2;Lid/Function2;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx8/e$b;->b:Lx8/e;

    iput-object p2, p0, Lx8/e$b;->c:Ljava/util/Map;

    iput-object p3, p0, Lx8/e$b;->d:Lid/Function2;

    iput-object p4, p0, Lx8/e$b;->e:Lid/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 6

    .line 1
    new-instance p1, Lx8/e$b;

    iget-object v1, p0, Lx8/e$b;->b:Lx8/e;

    iget-object v2, p0, Lx8/e$b;->c:Ljava/util/Map;

    iget-object v3, p0, Lx8/e$b;->d:Lid/Function2;

    iget-object v4, p0, Lx8/e$b;->e:Lid/Function2;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lx8/e$b;-><init>(Lx8/e;Ljava/util/Map;Lid/Function2;Lid/Function2;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lx8/e$b;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lx8/e$b;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lx8/e$b;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lx8/e$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lx8/e$b;->a:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    :try_start_0
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_2
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :try_start_1
    iget-object p1, p0, Lx8/e$b;->b:Lx8/e;

    .line 43
    .line 44
    invoke-static {p1}, Lx8/e;->b(Lx8/e;)Ljava/net/URL;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v1, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection"

    .line 53
    .line 54
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 58
    .line 59
    const-string v1, "GET"

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v1, "Accept"

    .line 65
    .line 66
    const-string v5, "application/json"

    .line 67
    .line 68
    invoke-virtual {p1, v1, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lx8/e$b;->c:Ljava/util/Map;

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_3

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    check-cast v5, Ljava/util/Map$Entry;

    .line 92
    .line 93
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Ljava/lang/String;

    .line 98
    .line 99
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    check-cast v5, Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p1, v6, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    const/16 v5, 0xc8

    .line 114
    .line 115
    if-ne v1, v5, :cond_5

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-instance v1, Ljava/io/BufferedReader;

    .line 122
    .line 123
    new-instance v3, Ljava/io/InputStreamReader;

    .line 124
    .line 125
    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 126
    .line 127
    .line 128
    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 129
    .line 130
    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    new-instance v5, Lkotlin/jvm/internal/c0;

    .line 137
    .line 138
    invoke-direct {v5}, Lkotlin/jvm/internal/c0;-><init>()V

    .line 139
    .line 140
    .line 141
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    iput-object v6, v5, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 146
    .line 147
    if-eqz v6, :cond_4

    .line 148
    .line 149
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 157
    .line 158
    .line 159
    new-instance p1, Lorg/json/JSONObject;

    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lx8/e$b;->d:Lid/Function2;

    .line 169
    .line 170
    iput v4, p0, Lx8/e$b;->a:I

    .line 171
    .line 172
    invoke-interface {v1, p1, p0}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    if-ne p1, v0, :cond_7

    .line 177
    .line 178
    return-object v0

    .line 179
    :cond_5
    iget-object p1, p0, Lx8/e$b;->e:Lid/Function2;

    .line 180
    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v5, "Bad response code: "

    .line 187
    .line 188
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iput v3, p0, Lx8/e$b;->a:I

    .line 199
    .line 200
    invoke-interface {p1, v1, p0}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    if-ne p1, v0, :cond_7

    .line 205
    .line 206
    return-object v0

    .line 207
    :goto_2
    iget-object v1, p0, Lx8/e$b;->e:Lid/Function2;

    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    if-nez v3, :cond_6

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    :cond_6
    iput v2, p0, Lx8/e$b;->a:I

    .line 220
    .line 221
    invoke-interface {v1, v3, p0}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    if-ne p1, v0, :cond_7

    .line 226
    .line 227
    return-object v0

    .line 228
    :cond_7
    :goto_3
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 229
    .line 230
    return-object p1
.end method
