.class public final Lcom/google/android/gms/internal/measurement/d0;
.super Lcom/google/android/gms/internal/measurement/w;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/w;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w;->a:Ljava/util/List;

    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/internal/measurement/m0;->c:Lcom/google/android/gms/internal/measurement/m0;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w;->a:Ljava/util/List;

    .line 12
    .line 13
    sget-object v1, Lcom/google/android/gms/internal/measurement/m0;->W:Lcom/google/android/gms/internal/measurement/m0;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w;->a:Ljava/util/List;

    .line 19
    .line 20
    sget-object v1, Lcom/google/android/gms/internal/measurement/m0;->Z:Lcom/google/android/gms/internal/measurement/m0;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/z4;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/m0;->b:Lcom/google/android/gms/internal/measurement/m0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/a6;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v3, :cond_2

    .line 15
    .line 16
    const/16 v4, 0x2f

    .line 17
    .line 18
    if-eq v0, v4, :cond_1

    .line 19
    .line 20
    const/16 v4, 0x32

    .line 21
    .line 22
    if-eq v0, v4, :cond_0

    .line 23
    .line 24
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/w;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/m0;->Z:Lcom/google/android/gms/internal/measurement/m0;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1, v1, p3}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/measurement/m0;->W:Lcom/google/android/gms/internal/measurement/m0;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1, v3, p3}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance p2, Lcom/google/android/gms/internal/measurement/g;

    .line 90
    .line 91
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    xor-int/2addr p1, v3

    .line 100
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Boolean;)V

    .line 105
    .line 106
    .line 107
    move-object p1, p2

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/m0;->c:Lcom/google/android/gms/internal/measurement/m0;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1, v1, p3}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 123
    .line 124
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/Boolean;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_3

    .line 137
    .line 138
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 143
    .line 144
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    :cond_3
    :goto_0
    return-object p1
.end method
