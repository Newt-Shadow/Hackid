.class Lcom/yandex/metrica/impl/ob/Al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/fl;

.field final synthetic d:Lcom/yandex/metrica/impl/ob/wl;

.field final synthetic e:Lcom/yandex/metrica/impl/ob/Bk;

.field final synthetic f:Z

.field final synthetic g:Lcom/yandex/metrica/impl/ob/Bl;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Bl;Ljava/lang/ref/WeakReference;Ljava/util/List;Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/Bk;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Al;->g:Lcom/yandex/metrica/impl/ob/Bl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Al;->a:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Al;->b:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Al;->c:Lcom/yandex/metrica/impl/ob/fl;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Al;->d:Lcom/yandex/metrica/impl/ob/wl;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Al;->e:Lcom/yandex/metrica/impl/ob/Bk;

    .line 12
    .line 13
    iput-boolean p7, p0, Lcom/yandex/metrica/impl/ob/Al;->f:Z

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Al;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/Activity;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Al;->g:Lcom/yandex/metrica/impl/ob/Bl;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Bl;->b(Lcom/yandex/metrica/impl/ob/Bl;)Lcom/yandex/metrica/impl/ob/Bl$a;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Al;->b:Ljava/util/List;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Al;->g:Lcom/yandex/metrica/impl/ob/Bl;

    .line 21
    .line 22
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/Bl;->a(Lcom/yandex/metrica/impl/ob/Bl;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Al;->c:Lcom/yandex/metrica/impl/ob/fl;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/yandex/metrica/impl/ob/vl;

    .line 46
    .line 47
    invoke-interface {v2, v4}, Lcom/yandex/metrica/impl/ob/vl;->a(Lcom/yandex/metrica/impl/ob/fl;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/yandex/metrica/impl/ob/vl;

    .line 69
    .line 70
    invoke-interface {v2, v4}, Lcom/yandex/metrica/impl/ob/vl;->a(Lcom/yandex/metrica/impl/ob/fl;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    :goto_0
    const/4 v1, 0x1

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    const/4 v1, 0x0

    .line 79
    :goto_1
    if-eqz v1, :cond_5

    .line 80
    .line 81
    new-instance v1, Lcom/yandex/metrica/impl/ob/Uk;

    .line 82
    .line 83
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Uk;-><init>()V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    new-instance v1, Lcom/yandex/metrica/impl/ob/pk;

    .line 88
    .line 89
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/pk;-><init>()V

    .line 90
    .line 91
    .line 92
    :goto_2
    move-object v7, v1

    .line 93
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Al;->g:Lcom/yandex/metrica/impl/ob/Bl;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Bl;->c(Lcom/yandex/metrica/impl/ob/Bl;)Lcom/yandex/metrica/impl/ob/lk;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/lk;->a()J

    .line 100
    .line 101
    .line 102
    move-result-wide v8

    .line 103
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Al;->g:Lcom/yandex/metrica/impl/ob/Bl;

    .line 104
    .line 105
    invoke-static {v1, v0, v8, v9}, Lcom/yandex/metrica/impl/ob/Bl;->a(Lcom/yandex/metrica/impl/ob/Bl;Landroid/app/Activity;J)V

    .line 106
    .line 107
    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Al;->g:Lcom/yandex/metrica/impl/ob/Bl;

    .line 109
    .line 110
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Bl;->d(Lcom/yandex/metrica/impl/ob/Bl;)Lcom/yandex/metrica/impl/ob/el;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Al;->d:Lcom/yandex/metrica/impl/ob/wl;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Al;->e:Lcom/yandex/metrica/impl/ob/Bk;

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Bk;->c()Lcom/yandex/metrica/impl/ob/Ak;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    iget-boolean v6, p0, Lcom/yandex/metrica/impl/ob/Al;->f:Z

    .line 123
    .line 124
    move-object v2, v0

    .line 125
    move-object v5, v7

    .line 126
    invoke-virtual/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/el;->a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/Ak;Lcom/yandex/metrica/impl/ob/Hk;Z)Lcom/yandex/metrica/impl/ob/dl;

    .line 127
    .line 128
    .line 129
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    goto :goto_3

    .line 131
    :catchall_0
    move-exception v1

    .line 132
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Al;->g:Lcom/yandex/metrica/impl/ob/Bl;

    .line 133
    .line 134
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Al;->b:Ljava/util/List;

    .line 135
    .line 136
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Al;->d:Lcom/yandex/metrica/impl/ob/wl;

    .line 137
    .line 138
    invoke-static {v2, v3, v1, v4}, Lcom/yandex/metrica/impl/ob/Bl;->a(Lcom/yandex/metrica/impl/ob/Bl;Ljava/util/List;Ljava/lang/Throwable;Lcom/yandex/metrica/impl/ob/wl;)V

    .line 139
    .line 140
    .line 141
    const/4 v1, 0x0

    .line 142
    :goto_3
    move-object v3, v1

    .line 143
    if-eqz v3, :cond_6

    .line 144
    .line 145
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Al;->g:Lcom/yandex/metrica/impl/ob/Bl;

    .line 146
    .line 147
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Al;->b:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {v7}, Lcom/yandex/metrica/impl/ob/Hk;->a()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/Al;->c:Lcom/yandex/metrica/impl/ob/fl;

    .line 154
    .line 155
    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/Al;->e:Lcom/yandex/metrica/impl/ob/Bk;

    .line 156
    .line 157
    move-object v5, v0

    .line 158
    invoke-static/range {v1 .. v9}, Lcom/yandex/metrica/impl/ob/Bl;->a(Lcom/yandex/metrica/impl/ob/Bl;Ljava/util/List;Lcom/yandex/metrica/impl/ob/dl;Ljava/util/List;Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/Bk;J)V

    .line 159
    .line 160
    .line 161
    :cond_6
    return-void
.end method
