.class public final Lio/sentry/util/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/m2;


# instance fields
.field final a:Ljava/util/Map;

.field final b:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/util/p;->a:Ljava/util/Map;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/sentry/util/p;->b:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private A(Lio/sentry/ILogger;Ljava/util/TimeZone;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p2}, Lio/sentry/util/p;->G(Ljava/lang/String;)Lio/sentry/util/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p2

    .line 10
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 11
    .line 12
    const-string v1, "Error when serializing TimeZone"

    .line 13
    .line 14
    invoke-interface {p1, v0, v1, p2}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lio/sentry/util/p;->u()Lio/sentry/util/p;

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private v()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/util/p;->b:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    instance-of v1, v0, Ljava/util/Map;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Ljava/util/Map;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "Stack element is not a Map."

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "Stack is empty."

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method private w(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/util/p;->b:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Ljava/util/List;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of v0, v0, Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lio/sentry/util/p;->b:Ljava/util/ArrayDeque;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {p0}, Lio/sentry/util/p;->v()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v0, "Invalid stack state, expected array or string on top"

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method private x(Lio/sentry/ILogger;Ljava/util/Collection;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/util/p;->m()Lio/sentry/util/p;

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, p1, v0}, Lio/sentry/util/p;->D(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/util/p;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lio/sentry/util/p;->o()Lio/sentry/util/p;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private y(Lio/sentry/ILogger;Ljava/util/Date;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p2}, Lio/sentry/j;->g(Ljava/util/Date;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p2}, Lio/sentry/util/p;->G(Ljava/lang/String;)Lio/sentry/util/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p2

    .line 10
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 11
    .line 12
    const-string v1, "Error when serializing Date"

    .line 13
    .line 14
    invoke-interface {p1, v0, v1, p2}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lio/sentry/util/p;->u()Lio/sentry/util/p;

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private z(Lio/sentry/ILogger;Ljava/util/Map;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/sentry/util/p;->n()Lio/sentry/util/p;

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    instance-of v2, v1, Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    move-object v2, v1

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lio/sentry/util/p;->s(Ljava/lang/String;)Lio/sentry/util/p;

    .line 30
    .line 31
    .line 32
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0, p1, v1}, Lio/sentry/util/p;->D(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/util/p;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lio/sentry/util/p;->q()Lio/sentry/util/p;

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public B(D)Lio/sentry/util/p;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lio/sentry/util/p;->w(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public C(J)Lio/sentry/util/p;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lio/sentry/util/p;->w(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public D(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/util/p;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/util/p;->u()Lio/sentry/util/p;

    .line 4
    .line 5
    .line 6
    goto/16 :goto_0

    .line 7
    .line 8
    :cond_0
    instance-of v0, p2, Ljava/lang/Character;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Character;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lio/sentry/util/p;->G(Ljava/lang/String;)Lio/sentry/util/p;

    .line 23
    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    check-cast p2, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Lio/sentry/util/p;->G(Ljava/lang/String;)Lio/sentry/util/p;

    .line 34
    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    check-cast p2, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p0, p1}, Lio/sentry/util/p;->H(Z)Lio/sentry/util/p;

    .line 49
    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_3
    instance-of v0, p2, Ljava/lang/Number;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    check-cast p2, Ljava/lang/Number;

    .line 58
    .line 59
    invoke-virtual {p0, p2}, Lio/sentry/util/p;->F(Ljava/lang/Number;)Lio/sentry/util/p;

    .line 60
    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_4
    instance-of v0, p2, Ljava/util/Date;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    check-cast p2, Ljava/util/Date;

    .line 69
    .line 70
    invoke-direct {p0, p1, p2}, Lio/sentry/util/p;->y(Lio/sentry/ILogger;Ljava/util/Date;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_5
    instance-of v0, p2, Ljava/util/TimeZone;

    .line 76
    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    check-cast p2, Ljava/util/TimeZone;

    .line 80
    .line 81
    invoke-direct {p0, p1, p2}, Lio/sentry/util/p;->A(Lio/sentry/ILogger;Ljava/util/TimeZone;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :cond_6
    instance-of v0, p2, Lio/sentry/q1;

    .line 87
    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    check-cast p2, Lio/sentry/q1;

    .line 91
    .line 92
    invoke-interface {p2, p0, p1}, Lio/sentry/q1;->serialize(Lio/sentry/m2;Lio/sentry/ILogger;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_7
    instance-of v0, p2, Ljava/util/Collection;

    .line 98
    .line 99
    if-eqz v0, :cond_8

    .line 100
    .line 101
    check-cast p2, Ljava/util/Collection;

    .line 102
    .line 103
    invoke-direct {p0, p1, p2}, Lio/sentry/util/p;->x(Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_9

    .line 117
    .line 118
    check-cast p2, [Ljava/lang/Object;

    .line 119
    .line 120
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p0, p1, p2}, Lio/sentry/util/p;->x(Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :cond_9
    instance-of v0, p2, Ljava/util/Map;

    .line 130
    .line 131
    if-eqz v0, :cond_a

    .line 132
    .line 133
    check-cast p2, Ljava/util/Map;

    .line 134
    .line 135
    invoke-direct {p0, p1, p2}, Lio/sentry/util/p;->z(Lio/sentry/ILogger;Ljava/util/Map;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_a
    instance-of v0, p2, Ljava/util/Locale;

    .line 141
    .line 142
    if-eqz v0, :cond_b

    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Lio/sentry/util/p;->G(Ljava/lang/String;)Lio/sentry/util/p;

    .line 149
    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_b
    instance-of v0, p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 154
    .line 155
    if-eqz v0, :cond_c

    .line 156
    .line 157
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 158
    .line 159
    invoke-static {p2}, Lio/sentry/util/l;->a(Ljava/util/concurrent/atomic/AtomicIntegerArray;)Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-direct {p0, p1, p2}, Lio/sentry/util/p;->x(Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_c
    instance-of v0, p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 169
    .line 170
    if-eqz v0, :cond_d

    .line 171
    .line 172
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    invoke-virtual {p0, p1}, Lio/sentry/util/p;->H(Z)Lio/sentry/util/p;

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_d
    instance-of v0, p2, Ljava/net/URI;

    .line 183
    .line 184
    if-eqz v0, :cond_e

    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p0, p1}, Lio/sentry/util/p;->G(Ljava/lang/String;)Lio/sentry/util/p;

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_e
    instance-of v0, p2, Ljava/net/InetAddress;

    .line 195
    .line 196
    if-eqz v0, :cond_f

    .line 197
    .line 198
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p0, p1}, Lio/sentry/util/p;->G(Ljava/lang/String;)Lio/sentry/util/p;

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_f
    instance-of v0, p2, Ljava/util/UUID;

    .line 207
    .line 208
    if-eqz v0, :cond_10

    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p0, p1}, Lio/sentry/util/p;->G(Ljava/lang/String;)Lio/sentry/util/p;

    .line 215
    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_10
    instance-of v0, p2, Ljava/util/Currency;

    .line 219
    .line 220
    if-eqz v0, :cond_11

    .line 221
    .line 222
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p0, p1}, Lio/sentry/util/p;->G(Ljava/lang/String;)Lio/sentry/util/p;

    .line 227
    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_11
    instance-of v0, p2, Ljava/util/Calendar;

    .line 231
    .line 232
    if-eqz v0, :cond_12

    .line 233
    .line 234
    check-cast p2, Ljava/util/Calendar;

    .line 235
    .line 236
    invoke-static {p2}, Lio/sentry/util/l;->c(Ljava/util/Calendar;)Ljava/util/Map;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    invoke-direct {p0, p1, p2}, Lio/sentry/util/p;->z(Lio/sentry/ILogger;Ljava/util/Map;)V

    .line 241
    .line 242
    .line 243
    goto :goto_0

    .line 244
    :cond_12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_13

    .line 253
    .line 254
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {p0, p1}, Lio/sentry/util/p;->G(Ljava/lang/String;)Lio/sentry/util/p;

    .line 259
    .line 260
    .line 261
    goto :goto_0

    .line 262
    :cond_13
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 263
    .line 264
    const-string v1, "Failed serializing unknown object."

    .line 265
    .line 266
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    invoke-interface {p1, v0, v1, p2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    :goto_0
    return-object p0
.end method

.method public E(Ljava/lang/Boolean;)Lio/sentry/util/p;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/util/p;->w(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public F(Ljava/lang/Number;)Lio/sentry/util/p;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/util/p;->w(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public G(Ljava/lang/String;)Lio/sentry/util/p;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/util/p;->w(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public H(Z)Lio/sentry/util/p;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lio/sentry/util/p;->w(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public bridge synthetic a(J)Lio/sentry/m2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/util/p;->C(J)Lio/sentry/util/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(D)Lio/sentry/m2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/util/p;->B(D)Lio/sentry/util/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/String;)Lio/sentry/m2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/util/p;->G(Ljava/lang/String;)Lio/sentry/util/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic d(Z)Lio/sentry/m2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/util/p;->H(Z)Lio/sentry/util/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Ljava/lang/String;)Lio/sentry/m2;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic f(Ljava/lang/Number;)Lio/sentry/m2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/util/p;->F(Ljava/lang/Number;)Lio/sentry/util/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/util/p;->D(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/util/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/Boolean;)Lio/sentry/m2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/util/p;->E(Ljava/lang/Boolean;)Lio/sentry/util/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic i()Lio/sentry/m2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/util/p;->u()Lio/sentry/util/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic j()Lio/sentry/m2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/util/p;->o()Lio/sentry/util/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic k(Ljava/lang/String;)Lio/sentry/m2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/util/p;->s(Ljava/lang/String;)Lio/sentry/util/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic l()Lio/sentry/m2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/util/p;->m()Lio/sentry/util/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public m()Lio/sentry/util/p;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/util/p;->b:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public n()Lio/sentry/util/p;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/util/p;->b:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public o()Lio/sentry/util/p;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/util/p;->q()Lio/sentry/util/p;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public p(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public q()Lio/sentry/util/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/util/p;->b:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lio/sentry/util/p;->w(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic r()Lio/sentry/m2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/util/p;->q()Lio/sentry/util/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public s(Ljava/lang/String;)Lio/sentry/util/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/util/p;->b:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic t()Lio/sentry/m2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/util/p;->n()Lio/sentry/util/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public u()Lio/sentry/util/p;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lio/sentry/util/p;->w(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method
