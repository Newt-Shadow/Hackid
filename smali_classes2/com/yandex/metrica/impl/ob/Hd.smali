.class public Lcom/yandex/metrica/impl/ob/Hd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Hd;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 21
    invoke-virtual {v1, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Lcom/yandex/metrica/impl/ob/S7;Ljava/lang/String;)V
    .locals 5

    .line 23
    new-instance v0, Lcom/yandex/metrica/impl/ob/f9;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/f9;-><init>(Lcom/yandex/metrica/impl/ob/S7;Ljava/lang/String;)V

    .line 24
    new-instance p1, Lcom/yandex/metrica/impl/ob/Pd;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Hd;->a:Landroid/content/Context;

    invoke-direct {p1, v1, p2}, Lcom/yandex/metrica/impl/ob/Pd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Pd;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 27
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/f9;->o(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/f9;

    .line 28
    :cond_0
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Pd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 30
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/f9;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/f9;

    .line 31
    :cond_1
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Pd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 33
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/f9;->k(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/f9;

    .line 34
    :cond_2
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Pd;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 36
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/f9;->m(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/f9;

    .line 37
    :cond_3
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Pd;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 39
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/f9;->l(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/f9;

    :cond_4
    const-wide/16 v1, -0x1

    .line 40
    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/Pd;->a(J)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-eqz v1, :cond_5

    .line 41
    invoke-virtual {v0, v3, v4}, Lcom/yandex/metrica/impl/ob/f9;->b(J)Lcom/yandex/metrica/impl/ob/f9;

    .line 42
    :cond_5
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Pd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 44
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/f9;->n(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/f9;

    .line 45
    :cond_6
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 46
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Pd;->f()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Hd;->a:Landroid/content/Context;

    const-string v1, "_bidoptpreferences"

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 3
    sget-object v1, Lcom/yandex/metrica/impl/ob/Pd;->p:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v4, Lcom/yandex/metrica/impl/ob/Pd;

    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/Hd;->a:Landroid/content/Context;

    .line 5
    invoke-direct {v4, v5, v3}, Lcom/yandex/metrica/impl/ob/Pd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v3}, Lcom/yandex/metrica/impl/ob/Pd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v4, v2}, Lcom/yandex/metrica/impl/ob/Pd;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Pd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Kd;->b()V

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 11
    sget-object v2, Lcom/yandex/metrica/impl/ob/Pd;->q:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yandex/metrica/impl/ob/Hd;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 12
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    new-instance v4, Lcom/yandex/metrica/impl/ob/Rd;

    sget-object v5, Lcom/yandex/metrica/impl/ob/Pd;->q:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v5}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14
    new-instance v5, Lcom/yandex/metrica/impl/ob/Pd;

    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/Hd;->a:Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Lcom/yandex/metrica/impl/ob/Pd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v5, v3}, Lcom/yandex/metrica/impl/ob/Pd;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {v5, v4}, Lcom/yandex/metrica/impl/ob/Pd;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Pd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Kd;->b()V

    goto :goto_0

    .line 17
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method

.method public b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Hd;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ja;->p()Lcom/yandex/metrica/impl/ob/S7;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Hd;->a:Landroid/content/Context;

    .line 12
    .line 13
    const-string v2, "_startupserviceinfopreferences"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lcom/yandex/metrica/impl/ob/f9;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v2, v0, v3}, Lcom/yandex/metrica/impl/ob/f9;-><init>(Lcom/yandex/metrica/impl/ob/S7;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v4, Lcom/yandex/metrica/impl/ob/Pd;->p:Lcom/yandex/metrica/impl/ob/Rd;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/f9;->g()Lcom/yandex/metrica/impl/ob/qi;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iget-object v5, v5, Lcom/yandex/metrica/impl/ob/qi;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/f9;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/f9;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 58
    .line 59
    .line 60
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    .line 74
    .line 75
    :cond_0
    new-instance v2, Lcom/yandex/metrica/impl/ob/f9;

    .line 76
    .line 77
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Hd;->a:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-direct {v2, v0, v3}, Lcom/yandex/metrica/impl/ob/f9;-><init>(Lcom/yandex/metrica/impl/ob/S7;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v3, Lcom/yandex/metrica/impl/ob/Pd;->y:Lcom/yandex/metrica/impl/ob/Rd;

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const/4 v4, 0x0

    .line 93
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_1

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/f9;->a(Z)Lcom/yandex/metrica/impl/ob/f9;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 104
    .line 105
    .line 106
    :cond_1
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Hd;->a:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-direct {p0, v0, v2}, Lcom/yandex/metrica/impl/ob/Hd;->a(Lcom/yandex/metrica/impl/ob/S7;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    sget-object v2, Lcom/yandex/metrica/impl/ob/Pd;->q:Lcom/yandex/metrica/impl/ob/Rd;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-direct {p0, v1, v2}, Lcom/yandex/metrica/impl/ob/Hd;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_2

    .line 140
    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Ljava/lang/String;

    .line 146
    .line 147
    invoke-direct {p0, v0, v2}, Lcom/yandex/metrica/impl/ob/Hd;->a(Lcom/yandex/metrica/impl/ob/S7;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    return-void
.end method
