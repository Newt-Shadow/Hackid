.class public final Lve/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lve/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lne/y;)Ljava/util/List;
    .locals 7

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lne/y;->e()Lne/s;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Lne/s;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/lit8 v2, v2, 0x4

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lve/c;

    .line 22
    .line 23
    sget-object v3, Lve/c;->g:Laf/g;

    .line 24
    .line 25
    invoke-virtual {p1}, Lne/y;->g()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-direct {v2, v3, v4}, Lve/c;-><init>(Laf/g;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    new-instance v2, Lve/c;

    .line 36
    .line 37
    sget-object v3, Lve/c;->h:Laf/g;

    .line 38
    .line 39
    sget-object v4, Lte/i;->a:Lte/i;

    .line 40
    .line 41
    invoke-virtual {p1}, Lne/y;->i()Lne/t;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v4, v5}, Lte/i;->c(Lne/t;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-direct {v2, v3, v4}, Lve/c;-><init>(Laf/g;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    const-string v2, "Host"

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Lne/y;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    new-instance v3, Lve/c;

    .line 64
    .line 65
    sget-object v4, Lve/c;->j:Laf/g;

    .line 66
    .line 67
    invoke-direct {v3, v4, v2}, Lve/c;-><init>(Laf/g;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_0
    new-instance v2, Lve/c;

    .line 74
    .line 75
    sget-object v3, Lve/c;->i:Laf/g;

    .line 76
    .line 77
    invoke-virtual {p1}, Lne/y;->i()Lne/t;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lne/t;->p()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {v2, v3, p1}, Lve/c;-><init>(Laf/g;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lne/s;->size()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    const/4 v2, 0x0

    .line 96
    :goto_0
    if-ge v2, p1, :cond_3

    .line 97
    .line 98
    add-int/lit8 v3, v2, 0x1

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Lne/s;->i(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 105
    .line 106
    const-string v6, "US"

    .line 107
    .line 108
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const-string v5, "this as java.lang.String).toLowerCase(locale)"

    .line 116
    .line 117
    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lve/g;->i()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_1

    .line 129
    .line 130
    const-string v5, "te"

    .line 131
    .line 132
    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_2

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Lne/s;->m(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    const-string v6, "trailers"

    .line 143
    .line 144
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-eqz v5, :cond_2

    .line 149
    .line 150
    :cond_1
    new-instance v5, Lve/c;

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Lne/s;->m(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-direct {v5, v4, v2}, Lve/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    :cond_2
    move v2, v3

    .line 163
    goto :goto_0

    .line 164
    :cond_3
    return-object v1
.end method

.method public final b(Lne/s;Lne/x;)Lne/a0$a;
    .locals 7

    .line 1
    const-string v0, "headerBlock"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "protocol"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lne/s$a;

    .line 12
    .line 13
    invoke-direct {v0}, Lne/s$a;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lne/s;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, v1, :cond_2

    .line 23
    .line 24
    add-int/lit8 v4, v3, 0x1

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Lne/s;->i(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {p1, v3}, Lne/s;->m(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v6, ":status"

    .line 35
    .line 36
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    sget-object v2, Lte/k;->d:Lte/k$a;

    .line 43
    .line 44
    const-string v5, "HTTP/1.1 "

    .line 45
    .line 46
    invoke-static {v5, v3}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Lte/k$a;->a(Ljava/lang/String;)Lte/k;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-static {}, Lve/g;->j()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0, v5, v3}, Lne/s$a;->c(Ljava/lang/String;Ljava/lang/String;)Lne/s$a;

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_1
    move v3, v4

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    if-eqz v2, :cond_3

    .line 71
    .line 72
    new-instance p1, Lne/a0$a;

    .line 73
    .line 74
    invoke-direct {p1}, Lne/a0$a;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lne/a0$a;->q(Lne/x;)Lne/a0$a;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget p2, v2, Lte/k;->b:I

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lne/a0$a;->g(I)Lne/a0$a;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p2, v2, Lte/k;->c:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lne/a0$a;->n(Ljava/lang/String;)Lne/a0$a;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v0}, Lne/s$a;->d()Lne/s;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p1, p2}, Lne/a0$a;->l(Lne/s;)Lne/a0$a;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    .line 103
    .line 104
    const-string p2, "Expected \':status\' header not present"

    .line 105
    .line 106
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method
