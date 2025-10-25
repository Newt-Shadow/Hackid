.class final Lcom/google/android/gms/internal/measurement/sg;
.super Lcom/google/android/gms/internal/measurement/j;
.source "SourceFile"


# instance fields
.field final c:Z

.field final d:Z

.field final synthetic e:Lcom/google/android/gms/internal/measurement/tg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/tg;ZZ)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/sg;->e:Lcom/google/android/gms/internal/measurement/tg;

    .line 5
    .line 6
    const-string p1, "log"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/sg;->c:Z

    .line 12
    .line 13
    iput-boolean p3, p0, Lcom/google/android/gms/internal/measurement/sg;->d:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/z4;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;
    .locals 11

    .line 1
    const-string v0, "log"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->b(Ljava/lang/String;ILjava/util/List;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/sg;->e:Lcom/google/android/gms/internal/measurement/tg;

    .line 15
    .line 16
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lcom/google/android/gms/internal/measurement/p;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->f()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/sg;->c:Z

    .line 31
    .line 32
    iget-boolean v6, p0, Lcom/google/android/gms/internal/measurement/sg;->d:Z

    .line 33
    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/tg;->c()Lcom/google/android/gms/internal/measurement/yf;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x3

    .line 43
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/yf;->a(ILjava/lang/String;Ljava/util/List;ZZ)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lcom/google/android/gms/internal/measurement/p;->j0:Lcom/google/android/gms/internal/measurement/p;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/a6;->g(D)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v2, 0x5

    .line 72
    const/4 v3, 0x2

    .line 73
    if-eq v0, v3, :cond_4

    .line 74
    .line 75
    const/4 v4, 0x3

    .line 76
    if-eq v0, v4, :cond_3

    .line 77
    .line 78
    if-eq v0, v2, :cond_2

    .line 79
    .line 80
    const/4 v5, 0x6

    .line 81
    if-eq v0, v5, :cond_1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    move v6, v3

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move v6, v2

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    move v6, v1

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    const/4 v4, 0x4

    .line 91
    :goto_0
    move v6, v4

    .line 92
    :goto_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->f()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-ne v0, v3, :cond_5

    .line 111
    .line 112
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/sg;->e:Lcom/google/android/gms/internal/measurement/tg;

    .line 113
    .line 114
    iget-boolean v9, p0, Lcom/google/android/gms/internal/measurement/sg;->c:Z

    .line 115
    .line 116
    iget-boolean v10, p0, Lcom/google/android/gms/internal/measurement/sg;->d:Z

    .line 117
    .line 118
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/tg;->c()Lcom/google/android/gms/internal/measurement/yf;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/measurement/yf;->a(ILjava/lang/String;Ljava/util/List;ZZ)V

    .line 127
    .line 128
    .line 129
    sget-object p1, Lcom/google/android/gms/internal/measurement/p;->j0:Lcom/google/android/gms/internal/measurement/p;

    .line 130
    .line 131
    return-object p1

    .line 132
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-ge v3, v0, :cond_6

    .line 146
    .line 147
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->f()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    add-int/lit8 v3, v3, 0x1

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/sg;->e:Lcom/google/android/gms/internal/measurement/tg;

    .line 168
    .line 169
    iget-boolean v9, p0, Lcom/google/android/gms/internal/measurement/sg;->c:Z

    .line 170
    .line 171
    iget-boolean v10, p0, Lcom/google/android/gms/internal/measurement/sg;->d:Z

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/tg;->c()Lcom/google/android/gms/internal/measurement/yf;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/measurement/yf;->a(ILjava/lang/String;Ljava/util/List;ZZ)V

    .line 178
    .line 179
    .line 180
    sget-object p1, Lcom/google/android/gms/internal/measurement/p;->j0:Lcom/google/android/gms/internal/measurement/p;

    .line 181
    .line 182
    return-object p1
.end method
