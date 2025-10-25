.class public Lcom/yandex/metrica/impl/ob/Ja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/Converter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ha;

.field private final b:Lcom/yandex/metrica/impl/ob/Ia;

.field private final c:Lcom/yandex/metrica/impl/ob/Da;

.field private final d:Lcom/yandex/metrica/impl/ob/Ka;

.field private final e:Lcom/yandex/metrica/impl/ob/kn;

.field private final f:Lcom/yandex/metrica/impl/ob/kn;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ha;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Ha;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/Ia;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Ia;-><init>()V

    new-instance v3, Lcom/yandex/metrica/impl/ob/Da;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/Da;-><init>()V

    new-instance v4, Lcom/yandex/metrica/impl/ob/Ka;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/Ka;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/kn;

    const/16 v0, 0x64

    invoke-direct {v5, v0}, Lcom/yandex/metrica/impl/ob/kn;-><init>(I)V

    new-instance v6, Lcom/yandex/metrica/impl/ob/kn;

    const/16 v0, 0x3e8

    invoke-direct {v6, v0}, Lcom/yandex/metrica/impl/ob/kn;-><init>(I)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/Ja;-><init>(Lcom/yandex/metrica/impl/ob/Ha;Lcom/yandex/metrica/impl/ob/Ia;Lcom/yandex/metrica/impl/ob/Da;Lcom/yandex/metrica/impl/ob/Ka;Lcom/yandex/metrica/impl/ob/kn;Lcom/yandex/metrica/impl/ob/kn;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ha;Lcom/yandex/metrica/impl/ob/Ia;Lcom/yandex/metrica/impl/ob/Da;Lcom/yandex/metrica/impl/ob/Ka;Lcom/yandex/metrica/impl/ob/kn;Lcom/yandex/metrica/impl/ob/kn;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ja;->a:Lcom/yandex/metrica/impl/ob/Ha;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Ja;->b:Lcom/yandex/metrica/impl/ob/Ia;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Ja;->c:Lcom/yandex/metrica/impl/ob/Da;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Ja;->d:Lcom/yandex/metrica/impl/ob/Ka;

    .line 7
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Ja;->e:Lcom/yandex/metrica/impl/ob/kn;

    .line 8
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Ja;->f:Lcom/yandex/metrica/impl/ob/kn;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Ya;)Lcom/yandex/metrica/impl/ob/Na;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/Ya;",
            ")",
            "Lcom/yandex/metrica/impl/ob/Na<",
            "Lcom/yandex/metrica/impl/ob/mf$k;",
            "Lcom/yandex/metrica/impl/ob/Vm;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$k;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$k;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ja;->e:Lcom/yandex/metrica/impl/ob/kn;

    .line 7
    .line 8
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/Ya;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/kn;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gn;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/mf$k;->a:[B

    .line 23
    .line 24
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ja;->f:Lcom/yandex/metrica/impl/ob/kn;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Ya;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/kn;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gn;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, v2, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iput-object v3, v0, Lcom/yandex/metrica/impl/ob/mf$k;->b:[B

    .line 41
    .line 42
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Ya;->c:Ljava/util/List;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/Ja;->c:Lcom/yandex/metrica/impl/ob/Da;

    .line 48
    .line 49
    invoke-virtual {v5, v3}, Lcom/yandex/metrica/impl/ob/Da;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/Na;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v5, v3, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v5, Lcom/yandex/metrica/impl/ob/mf$d;

    .line 56
    .line 57
    iput-object v5, v0, Lcom/yandex/metrica/impl/ob/mf$k;->c:Lcom/yandex/metrica/impl/ob/mf$d;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move-object v3, v4

    .line 61
    :goto_0
    iget-object v5, p1, Lcom/yandex/metrica/impl/ob/Ya;->d:Ljava/util/Map;

    .line 62
    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/Ja;->a:Lcom/yandex/metrica/impl/ob/Ha;

    .line 66
    .line 67
    invoke-virtual {v6, v5}, Lcom/yandex/metrica/impl/ob/Ha;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/Na;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iget-object v6, v5, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v6, Lcom/yandex/metrica/impl/ob/mf$i;

    .line 74
    .line 75
    iput-object v6, v0, Lcom/yandex/metrica/impl/ob/mf$k;->d:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move-object v5, v4

    .line 79
    :goto_1
    iget-object v6, p1, Lcom/yandex/metrica/impl/ob/Ya;->e:Lcom/yandex/metrica/impl/ob/Xa;

    .line 80
    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/Ja;->b:Lcom/yandex/metrica/impl/ob/Ia;

    .line 84
    .line 85
    invoke-virtual {v7, v6}, Lcom/yandex/metrica/impl/ob/Ia;->a(Lcom/yandex/metrica/impl/ob/Xa;)Lcom/yandex/metrica/impl/ob/Na;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    iget-object v7, v6, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v7, Lcom/yandex/metrica/impl/ob/mf$j;

    .line 92
    .line 93
    iput-object v7, v0, Lcom/yandex/metrica/impl/ob/mf$k;->e:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    move-object v6, v4

    .line 97
    :goto_2
    iget-object v7, p1, Lcom/yandex/metrica/impl/ob/Ya;->f:Lcom/yandex/metrica/impl/ob/Xa;

    .line 98
    .line 99
    if-eqz v7, :cond_3

    .line 100
    .line 101
    iget-object v8, p0, Lcom/yandex/metrica/impl/ob/Ja;->b:Lcom/yandex/metrica/impl/ob/Ia;

    .line 102
    .line 103
    invoke-virtual {v8, v7}, Lcom/yandex/metrica/impl/ob/Ia;->a(Lcom/yandex/metrica/impl/ob/Xa;)Lcom/yandex/metrica/impl/ob/Na;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    iget-object v8, v7, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v8, Lcom/yandex/metrica/impl/ob/mf$j;

    .line 110
    .line 111
    iput-object v8, v0, Lcom/yandex/metrica/impl/ob/mf$k;->f:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_3
    move-object v7, v4

    .line 115
    :goto_3
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Ya;->g:Ljava/util/List;

    .line 116
    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Ja;->d:Lcom/yandex/metrica/impl/ob/Ka;

    .line 120
    .line 121
    invoke-virtual {v4, p1}, Lcom/yandex/metrica/impl/ob/Ka;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/Na;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iget-object p1, v4, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p1, [Lcom/yandex/metrica/impl/ob/mf$l;

    .line 128
    .line 129
    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/mf$k;->g:[Lcom/yandex/metrica/impl/ob/mf$l;

    .line 130
    .line 131
    :cond_4
    const/4 p1, 0x7

    .line 132
    new-array p1, p1, [Lcom/yandex/metrica/impl/ob/Vm;

    .line 133
    .line 134
    const/4 v8, 0x0

    .line 135
    aput-object v1, p1, v8

    .line 136
    .line 137
    const/4 v1, 0x1

    .line 138
    aput-object v2, p1, v1

    .line 139
    .line 140
    const/4 v1, 0x2

    .line 141
    aput-object v3, p1, v1

    .line 142
    .line 143
    const/4 v1, 0x3

    .line 144
    aput-object v5, p1, v1

    .line 145
    .line 146
    const/4 v1, 0x4

    .line 147
    aput-object v6, p1, v1

    .line 148
    .line 149
    const/4 v1, 0x5

    .line 150
    aput-object v7, p1, v1

    .line 151
    .line 152
    const/4 v1, 0x6

    .line 153
    aput-object v4, p1, v1

    .line 154
    .line 155
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    .line 160
    .line 161
    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    .line 162
    .line 163
    .line 164
    return-object v1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Ya;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Ja;->a(Lcom/yandex/metrica/impl/ob/Ya;)Lcom/yandex/metrica/impl/ob/Na;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Na;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
