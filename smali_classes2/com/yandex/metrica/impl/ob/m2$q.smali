.class Lcom/yandex/metrica/impl/ob/m2$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/D1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "q"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/e9;

.field private final b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

.field private final c:Lcom/yandex/metrica/impl/ob/a8;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/core/api/ProtobufStateStorage;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->w()Lcom/yandex/metrica/impl/ob/e8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/e8;->b()Lcom/yandex/metrica/impl/ob/a8;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/m2$q;-><init>(Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/a8;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/a8;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "REFERRER_FROM_PLAY_SERVICES"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$q;->d:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "REFERRER_CHECKED"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$q;->e:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "L_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$q;->f:Ljava/lang/String;

    .line 10
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "LBS_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$q;->g:Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "L_REQ_NUM"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$q;->h:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$q;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 15
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/m2$q;->b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 16
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/m2$q;->c:Lcom/yandex/metrica/impl/ob/a8;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$q;->b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->read()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/yandex/metrica/impl/ob/qi;

    .line 8
    .line 9
    new-instance v1, Lcom/yandex/metrica/impl/ob/Nd;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/Nd;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Nd;->f()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v2, -0x1

    .line 19
    if-ne p1, v2, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$q;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ob/e9;->a(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    :cond_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/m2$q;->c:Lcom/yandex/metrica/impl/ob/a8;

    .line 28
    .line 29
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/qi;->b:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/qi;->c:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$q;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 34
    .line 35
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/m2$q;->d:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    invoke-virtual {v0, v6, v7}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$q;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 43
    .line 44
    iget-object v8, p0, Lcom/yandex/metrica/impl/ob/m2$q;->e:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v8}, Lcom/yandex/metrica/impl/ob/d9;->c(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$q;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 53
    .line 54
    iget-object v8, p0, Lcom/yandex/metrica/impl/ob/m2$q;->e:Ljava/lang/String;

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    invoke-virtual {v0, v8, v9}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move-object v0, v7

    .line 67
    :goto_0
    iget-object v8, p0, Lcom/yandex/metrica/impl/ob/m2$q;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 68
    .line 69
    iget-object v9, p0, Lcom/yandex/metrica/impl/ob/m2$q;->f:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v8, v9}, Lcom/yandex/metrica/impl/ob/d9;->c(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    const-wide/16 v9, -0x1

    .line 76
    .line 77
    if-eqz v8, :cond_2

    .line 78
    .line 79
    iget-object v8, p0, Lcom/yandex/metrica/impl/ob/m2$q;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 80
    .line 81
    iget-object v11, p0, Lcom/yandex/metrica/impl/ob/m2$q;->f:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v8, v11, v9, v10}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;J)J

    .line 84
    .line 85
    .line 86
    move-result-wide v11

    .line 87
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move-object v8, v7

    .line 93
    :goto_1
    iget-object v11, p0, Lcom/yandex/metrica/impl/ob/m2$q;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 94
    .line 95
    iget-object v12, p0, Lcom/yandex/metrica/impl/ob/m2$q;->g:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v11, v12}, Lcom/yandex/metrica/impl/ob/d9;->c(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    if-eqz v11, :cond_3

    .line 102
    .line 103
    iget-object v11, p0, Lcom/yandex/metrica/impl/ob/m2$q;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 104
    .line 105
    iget-object v12, p0, Lcom/yandex/metrica/impl/ob/m2$q;->g:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v11, v12, v9, v10}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;J)J

    .line 108
    .line 109
    .line 110
    move-result-wide v11

    .line 111
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    move-object v11, v7

    .line 117
    :goto_2
    iget-object v12, p0, Lcom/yandex/metrica/impl/ob/m2$q;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 118
    .line 119
    iget-object v13, p0, Lcom/yandex/metrica/impl/ob/m2$q;->h:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v12, v13}, Lcom/yandex/metrica/impl/ob/d9;->c(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    if-eqz v12, :cond_4

    .line 126
    .line 127
    iget-object v12, p0, Lcom/yandex/metrica/impl/ob/m2$q;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 128
    .line 129
    iget-object v13, p0, Lcom/yandex/metrica/impl/ob/m2$q;->h:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v12, v13, v9, v10}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;J)J

    .line 132
    .line 133
    .line 134
    move-result-wide v9

    .line 135
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    move-object v10, v9

    .line 140
    goto :goto_3

    .line 141
    :cond_4
    move-object v10, v7

    .line 142
    :goto_3
    if-ne p1, v2, :cond_5

    .line 143
    .line 144
    move-object p1, v7

    .line 145
    goto :goto_4

    .line 146
    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    :goto_4
    move-object v7, v0

    .line 151
    move-object v9, v11

    .line 152
    move-object v11, p1

    .line 153
    invoke-virtual/range {v3 .. v11}, Lcom/yandex/metrica/impl/ob/a8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$q;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/e9;->j()Lcom/yandex/metrica/impl/ob/e9;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$q;->d:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$q;->e:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$q;->f:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$q;->g:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$q;->h:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Nd;->h()Lcom/yandex/metrica/impl/ob/Nd;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Kd;->b()V

    .line 200
    .line 201
    .line 202
    return-void
.end method
