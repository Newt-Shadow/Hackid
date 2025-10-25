.class final Ln0/i$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/i;->d()Lid/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lad/e;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lm0/c;Lo0/f;Lad/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ln0/i$a;

    invoke-direct {v0, p3}, Ln0/i$a;-><init>(Lad/e;)V

    iput-object p1, v0, Ln0/i$a;->b:Ljava/lang/Object;

    iput-object p2, v0, Ln0/i$a;->c:Ljava/lang/Object;

    sget-object p1, Lxc/t;->a:Lxc/t;

    invoke-virtual {v0, p1}, Ln0/i$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lm0/c;

    check-cast p2, Lo0/f;

    check-cast p3, Lad/e;

    invoke-virtual {p0, p1, p2, p3}, Ln0/i$a;->a(Lm0/c;Lo0/f;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Ln0/i$a;->a:I

    .line 5
    .line 6
    if-nez v0, :cond_a

    .line 7
    .line 8
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Ln0/i$a;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lm0/c;

    .line 14
    .line 15
    iget-object v0, p0, Ln0/i$a;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lo0/f;

    .line 18
    .line 19
    invoke-virtual {v0}, Lo0/f;->a()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    const/16 v3, 0xa

    .line 30
    .line 31
    invoke-static {v1, v3}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lo0/f$a;

    .line 53
    .line 54
    invoke-virtual {v3}, Lo0/f$a;->a()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lm0/c;->a()Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/util/Map$Entry;

    .line 90
    .line 91
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Ljava/lang/String;

    .line 96
    .line 97
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    xor-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    if-eqz v4, :cond_1

    .line 104
    .line 105
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {v0}, Lo0/f;->c()Lo0/c;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_9

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Ljava/util/Map$Entry;

    .line 140
    .line 141
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Ljava/lang/String;

    .line 146
    .line 147
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    instance-of v3, v1, Ljava/lang/Boolean;

    .line 152
    .line 153
    if-eqz v3, :cond_4

    .line 154
    .line 155
    invoke-static {v2}, Lo0/h;->a(Ljava/lang/String;)Lo0/f$a;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {p1, v2, v1}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_4
    instance-of v3, v1, Ljava/lang/Float;

    .line 164
    .line 165
    if-eqz v3, :cond_5

    .line 166
    .line 167
    invoke-static {v2}, Lo0/h;->d(Ljava/lang/String;)Lo0/f$a;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {p1, v2, v1}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_5
    instance-of v3, v1, Ljava/lang/Integer;

    .line 176
    .line 177
    if-eqz v3, :cond_6

    .line 178
    .line 179
    invoke-static {v2}, Lo0/h;->e(Ljava/lang/String;)Lo0/f$a;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {p1, v2, v1}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_6
    instance-of v3, v1, Ljava/lang/Long;

    .line 188
    .line 189
    if-eqz v3, :cond_7

    .line 190
    .line 191
    invoke-static {v2}, Lo0/h;->f(Ljava/lang/String;)Lo0/f$a;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {p1, v2, v1}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_7
    instance-of v3, v1, Ljava/lang/String;

    .line 200
    .line 201
    if-eqz v3, :cond_8

    .line 202
    .line 203
    invoke-static {v2}, Lo0/h;->g(Ljava/lang/String;)Lo0/f$a;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {p1, v2, v1}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_8
    instance-of v3, v1, Ljava/util/Set;

    .line 212
    .line 213
    if-eqz v3, :cond_3

    .line 214
    .line 215
    invoke-static {v2}, Lo0/h;->h(Ljava/lang/String;)Lo0/f$a;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    const-string v3, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>"

    .line 220
    .line 221
    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    check-cast v1, Ljava/util/Set;

    .line 225
    .line 226
    invoke-virtual {p1, v2, v1}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_9
    invoke-virtual {p1}, Lo0/f;->d()Lo0/f;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    return-object p1

    .line 235
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 236
    .line 237
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 238
    .line 239
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw p1
.end method
