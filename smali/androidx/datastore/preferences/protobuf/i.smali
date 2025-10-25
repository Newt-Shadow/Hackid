.class final Landroidx/datastore/preferences/protobuf/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/d1;


# instance fields
.field private final a:Landroidx/datastore/preferences/protobuf/h;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 6
    .line 7
    const-string v0, "input"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/y;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/datastore/preferences/protobuf/h;

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 16
    .line 17
    iput-object p0, p1, Landroidx/datastore/preferences/protobuf/h;->d:Landroidx/datastore/preferences/protobuf/i;

    .line 18
    .line 19
    return-void
.end method

.method public static O(Landroidx/datastore/preferences/protobuf/h;)Landroidx/datastore/preferences/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h;->d:Landroidx/datastore/preferences/protobuf/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/i;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/i;-><init>(Landroidx/datastore/preferences/protobuf/h;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private P(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->c:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/q1;->a(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/q1;->c(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput v1, p0, Landroidx/datastore/preferences/protobuf/i;->c:I

    .line 15
    .line 16
    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Landroidx/datastore/preferences/protobuf/e1;->g(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/d1;Landroidx/datastore/preferences/protobuf/o;)V

    .line 17
    .line 18
    .line 19
    iget p1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 20
    .line 21
    iget p2, p0, Landroidx/datastore/preferences/protobuf/i;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    if-ne p1, p2, :cond_0

    .line 24
    .line 25
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->c:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    :try_start_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->h()Landroidx/datastore/preferences/protobuf/z;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->c:I

    .line 35
    .line 36
    throw p1
.end method

.method private Q(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 8
    .line 9
    iget v2, v1, Landroidx/datastore/preferences/protobuf/h;->a:I

    .line 10
    .line 11
    iget v3, v1, Landroidx/datastore/preferences/protobuf/h;->b:I

    .line 12
    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/h;->m(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 20
    .line 21
    iget v2, v1, Landroidx/datastore/preferences/protobuf/h;->a:I

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    iput v2, v1, Landroidx/datastore/preferences/protobuf/h;->a:I

    .line 26
    .line 27
    invoke-interface {p2, p1, p0, p3}, Landroidx/datastore/preferences/protobuf/e1;->g(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/d1;Landroidx/datastore/preferences/protobuf/o;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/h;->a(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 37
    .line 38
    iget p2, p1, Landroidx/datastore/preferences/protobuf/h;->a:I

    .line 39
    .line 40
    add-int/lit8 p2, p2, -0x1

    .line 41
    .line 42
    iput p2, p1, Landroidx/datastore/preferences/protobuf/h;->a:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/h;->l(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->i()Landroidx/datastore/preferences/protobuf/z;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    throw p1
.end method

.method private R(Landroidx/datastore/preferences/protobuf/q1$b;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/i$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p2, "unsupported field type."

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :pswitch_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->b()J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :pswitch_1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->k()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :pswitch_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->H()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :pswitch_3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->t()J

    .line 44
    .line 45
    .line 46
    move-result-wide p1

    .line 47
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :pswitch_4
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->s()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :pswitch_5
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->i()J

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :pswitch_6
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->D()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/i;->U(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :pswitch_8
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->G()J

    .line 85
    .line 86
    .line 87
    move-result-wide p1

    .line 88
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :pswitch_9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->B()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :pswitch_a
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->readFloat()F

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    return-object p1

    .line 111
    :pswitch_b
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->c()J

    .line 112
    .line 113
    .line 114
    move-result-wide p1

    .line 115
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :pswitch_c
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->g()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    return-object p1

    .line 129
    :pswitch_d
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->p()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    return-object p1

    .line 138
    :pswitch_e
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->readDouble()D

    .line 139
    .line 140
    .line 141
    move-result-wide p1

    .line 142
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    return-object p1

    .line 147
    :pswitch_f
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->z()Landroidx/datastore/preferences/protobuf/g;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1

    .line 152
    :pswitch_10
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->h()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    return-object p1

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private S(Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/e1;->newInstance()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/i;->P(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/o;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Landroidx/datastore/preferences/protobuf/e1;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private T(Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/e1;->newInstance()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/i;->Q(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/o;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Landroidx/datastore/preferences/protobuf/e1;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private W(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->m()Landroidx/datastore/preferences/protobuf/z;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    throw p1
.end method

.method private X(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    throw p1
.end method

.method private Y(I)V
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->h()Landroidx/datastore/preferences/protobuf/z;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    throw p1
.end method

.method private Z(I)V
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x7

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->h()Landroidx/datastore/preferences/protobuf/z;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    throw p1
.end method


# virtual methods
.method public A(Ljava/util/List;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/u;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    check-cast p1, Landroidx/datastore/preferences/protobuf/u;

    .line 8
    .line 9
    iget p1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eq p1, v2, :cond_1

    .line 17
    .line 18
    if-eq p1, v1, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    throw p1

    .line 25
    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->t()F

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/i;->Y(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->t()F

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 52
    .line 53
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eq v0, v2, :cond_6

    .line 58
    .line 59
    if-ne v0, v1, :cond_5

    .line 60
    .line 61
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->t()F

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    return-void

    .line 83
    :cond_4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 90
    .line 91
    if-eq v0, v1, :cond_3

    .line 92
    .line 93
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 94
    .line 95
    return-void

    .line 96
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    throw p1

    .line 101
    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->Y(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    add-int/2addr v1, v0

    .line 117
    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->t()F

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-lt v0, v1, :cond_7

    .line 137
    .line 138
    return-void
.end method

.method public B()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->u()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public C()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 10
    .line 11
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->c:I

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/h;->F(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public D()I
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->w()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public E(Ljava/util/List;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->z()Landroidx/datastore/preferences/protobuf/g;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 33
    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    throw p1
.end method

.method public F(Ljava/util/List;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/l;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    check-cast p1, Landroidx/datastore/preferences/protobuf/l;

    .line 8
    .line 9
    iget p1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eq p1, v2, :cond_1

    .line 17
    .line 18
    if-eq p1, v1, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    throw p1

    .line 25
    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/i;->Z(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->p()D

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->p()D

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 52
    .line 53
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eq v0, v2, :cond_5

    .line 58
    .line 59
    if-ne v0, v1, :cond_4

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->Z(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v1, v0

    .line 77
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->p()D

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-lt v0, v1, :cond_3

    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    throw p1

    .line 104
    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->p()D

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    return-void

    .line 126
    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 133
    .line 134
    if-eq v0, v1, :cond_5

    .line 135
    .line 136
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 137
    .line 138
    return-void
.end method

.method public G()J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->v()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->B()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public I(Ljava/util/List;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/g0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    check-cast p1, Landroidx/datastore/preferences/protobuf/g0;

    .line 8
    .line 9
    iget p1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eq p1, v2, :cond_1

    .line 17
    .line 18
    if-eq p1, v1, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    throw p1

    .line 25
    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/i;->Z(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->s()J

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->s()J

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 52
    .line 53
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eq v0, v2, :cond_5

    .line 58
    .line 59
    if-ne v0, v1, :cond_4

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->Z(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v1, v0

    .line 77
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->s()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-lt v0, v1, :cond_3

    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    throw p1

    .line 104
    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->s()J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    return-void

    .line 126
    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 133
    .line 134
    if-eq v0, v1, :cond_5

    .line 135
    .line 136
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 137
    .line 138
    return-void
.end method

.method public J(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/i;->Q(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/o;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public K(Ljava/util/Map;Landroidx/datastore/preferences/protobuf/i0$a;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/h;->m(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p2, Landroidx/datastore/preferences/protobuf/i0$a;->b:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v3, p2, Landroidx/datastore/preferences/protobuf/i0$a;->d:Ljava/lang/Object;

    .line 20
    .line 21
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->w()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const v5, 0x7fffffff

    .line 26
    .line 27
    .line 28
    if-eq v4, v5, :cond_5

    .line 29
    .line 30
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 31
    .line 32
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 33
    .line 34
    .line 35
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v5, 0x1

    .line 40
    const-string v6, "Unable to parse map entry."

    .line 41
    .line 42
    if-eq v4, v5, :cond_3

    .line 43
    .line 44
    if-eq v4, v0, :cond_2

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->C()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance v4, Landroidx/datastore/preferences/protobuf/z;

    .line 54
    .line 55
    invoke-direct {v4, v6}, Landroidx/datastore/preferences/protobuf/z;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v4

    .line 59
    :cond_2
    iget-object v4, p2, Landroidx/datastore/preferences/protobuf/i0$a;->c:Landroidx/datastore/preferences/protobuf/q1$b;

    .line 60
    .line 61
    iget-object v5, p2, Landroidx/datastore/preferences/protobuf/i0$a;->d:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-direct {p0, v4, v5, p3}, Landroidx/datastore/preferences/protobuf/i;->R(Landroidx/datastore/preferences/protobuf/q1$b;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget-object v4, p2, Landroidx/datastore/preferences/protobuf/i0$a;->a:Landroidx/datastore/preferences/protobuf/q1$b;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-direct {p0, v4, v5, v5}, Landroidx/datastore/preferences/protobuf/i;->R(Landroidx/datastore/preferences/protobuf/q1$b;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2
    :try_end_1
    .catch Landroidx/datastore/preferences/protobuf/z$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    goto :goto_0

    .line 80
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->C()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    new-instance p1, Landroidx/datastore/preferences/protobuf/z;

    .line 88
    .line 89
    invoke-direct {p1, v6}, Landroidx/datastore/preferences/protobuf/z;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_5
    :goto_1
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroidx/datastore/preferences/protobuf/h;->l(I)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    iget-object p2, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 104
    .line 105
    invoke-virtual {p2, v1}, Landroidx/datastore/preferences/protobuf/h;->l(I)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method

.method public L(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/i;->P(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/o;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public M(Ljava/util/List;Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    .line 10
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/i;->S(Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eq v1, v0, :cond_0

    .line 39
    .line 40
    iput v1, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void

    .line 43
    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    throw p1
.end method

.method public N(Ljava/util/List;Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    .line 10
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/i;->T(Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eq v1, v0, :cond_0

    .line 39
    .line 40
    iput v1, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void

    .line 43
    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    throw p1
.end method

.method public U(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/a1;->a()Landroidx/datastore/preferences/protobuf/a1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/a1;->c(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/e1;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/i;->T(Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public V(Ljava/util/List;Z)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_5

    .line 9
    .line 10
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/c0;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-nez p2, :cond_2

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    check-cast v0, Landroidx/datastore/preferences/protobuf/c0;

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->z()Landroidx/datastore/preferences/protobuf/g;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/c0;->X(Landroidx/datastore/preferences/protobuf/g;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget p2, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 42
    .line 43
    if-eq p1, p2, :cond_0

    .line 44
    .line 45
    iput p1, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    if-eqz p2, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->H()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->v()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 78
    .line 79
    if-eq v0, v1, :cond_2

    .line 80
    .line 81
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 82
    .line 83
    return-void

    .line 84
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/x;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Landroidx/datastore/preferences/protobuf/x;

    .line 7
    .line 8
    iget p1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1

    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->y()I

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->y()I

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    add-int/2addr v1, v0

    .line 69
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->y()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-lt v0, v1, :cond_3

    .line 89
    .line 90
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/i;->W(I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    throw p1

    .line 99
    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->y()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 128
    .line 129
    if-eq v0, v1, :cond_5

    .line 130
    .line 131
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 132
    .line 133
    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->E()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->s()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public d(Ljava/util/List;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/x;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    check-cast p1, Landroidx/datastore/preferences/protobuf/x;

    .line 8
    .line 9
    iget p1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eq p1, v2, :cond_1

    .line 17
    .line 18
    if-eq p1, v1, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    throw p1

    .line 25
    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->w()I

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/i;->Y(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->w()I

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 52
    .line 53
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eq v0, v2, :cond_6

    .line 58
    .line 59
    if-ne v0, v1, :cond_5

    .line 60
    .line 61
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->w()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    return-void

    .line 83
    :cond_4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 90
    .line 91
    if-eq v0, v1, :cond_3

    .line 92
    .line 93
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 94
    .line 95
    return-void

    .line 96
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    throw p1

    .line 101
    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->Y(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    add-int/2addr v1, v0

    .line 117
    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->w()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-lt v0, v1, :cond_7

    .line 137
    .line 138
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/g0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Landroidx/datastore/preferences/protobuf/g0;

    .line 7
    .line 8
    iget p1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1

    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->z()J

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->z()J

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    add-int/2addr v1, v0

    .line 69
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->z()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-lt v0, v1, :cond_3

    .line 89
    .line 90
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/i;->W(I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    throw p1

    .line 99
    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->z()J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 128
    .line 129
    if-eq v0, v1, :cond_5

    .line 130
    .line 131
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 132
    .line 133
    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/x;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Landroidx/datastore/preferences/protobuf/x;

    .line 7
    .line 8
    iget p1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1

    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    add-int/2addr v1, v0

    .line 69
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-lt v0, v1, :cond_3

    .line 89
    .line 90
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/i;->W(I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    throw p1

    .line 99
    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 128
    .line 129
    if-eq v0, v1, :cond_5

    .line 130
    .line 131
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 132
    .line 133
    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->r()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->n()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public i()J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->x()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public j(Ljava/util/List;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/g0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Landroidx/datastore/preferences/protobuf/g0;

    .line 7
    .line 8
    iget p1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1

    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->E()J

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->E()J

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    add-int/2addr v1, v0

    .line 69
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->E()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-lt v0, v1, :cond_3

    .line 89
    .line 90
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/i;->W(I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    throw p1

    .line 99
    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->E()J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 128
    .line 129
    if-eq v0, v1, :cond_5

    .line 130
    .line 131
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 132
    .line 133
    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public l(Ljava/util/List;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/g0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Landroidx/datastore/preferences/protobuf/g0;

    .line 7
    .line 8
    iget p1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1

    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->v()J

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->v()J

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    add-int/2addr v1, v0

    .line 69
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->v()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-lt v0, v1, :cond_3

    .line 89
    .line 90
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/i;->W(I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    throw p1

    .line 99
    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->v()J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 128
    .line 129
    if-eq v0, v1, :cond_5

    .line 130
    .line 131
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 132
    .line 133
    return-void
.end method

.method public m(Ljava/util/List;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/g0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    check-cast p1, Landroidx/datastore/preferences/protobuf/g0;

    .line 8
    .line 9
    iget p1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eq p1, v2, :cond_1

    .line 17
    .line 18
    if-eq p1, v1, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    throw p1

    .line 25
    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/i;->Z(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->x()J

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->x()J

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 52
    .line 53
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eq v0, v2, :cond_5

    .line 58
    .line 59
    if-ne v0, v1, :cond_4

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->Z(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v1, v0

    .line 77
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->x()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-lt v0, v1, :cond_3

    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    throw p1

    .line 104
    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->x()J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    return-void

    .line 126
    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 133
    .line 134
    if-eq v0, v1, :cond_5

    .line 135
    .line 136
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 137
    .line 138
    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/x;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Landroidx/datastore/preferences/protobuf/x;

    .line 7
    .line 8
    iget p1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1

    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->u()I

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->u()I

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    add-int/2addr v1, v0

    .line 69
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->u()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-lt v0, v1, :cond_3

    .line 89
    .line 90
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/i;->W(I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    throw p1

    .line 99
    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->u()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 128
    .line 129
    if-eq v0, v1, :cond_5

    .line 130
    .line 131
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 132
    .line 133
    return-void
.end method

.method public o(Ljava/util/List;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/x;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Landroidx/datastore/preferences/protobuf/x;

    .line 7
    .line 8
    iget p1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1

    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->q()I

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->q()I

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    add-int/2addr v1, v0

    .line 69
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->q()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-lt v0, v1, :cond_3

    .line 89
    .line 90
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/i;->W(I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    throw p1

    .line 99
    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->q()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 128
    .line 129
    if-eq v0, v1, :cond_5

    .line 130
    .line 131
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 132
    .line 133
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->q()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public r(Ljava/util/List;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/x;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    check-cast p1, Landroidx/datastore/preferences/protobuf/x;

    .line 8
    .line 9
    iget p1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eq p1, v2, :cond_1

    .line 17
    .line 18
    if-eq p1, v1, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    throw p1

    .line 25
    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->r()I

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/i;->Y(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->r()I

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 52
    .line 53
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eq v0, v2, :cond_6

    .line 58
    .line 59
    if-ne v0, v1, :cond_5

    .line 60
    .line 61
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->r()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    return-void

    .line 83
    :cond_4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 90
    .line 91
    if-eq v0, v1, :cond_3

    .line 92
    .line 93
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 94
    .line 95
    return-void

    .line 96
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    throw p1

    .line 101
    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->Y(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    add-int/2addr v1, v0

    .line 117
    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->r()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-lt v0, v1, :cond_7

    .line 137
    .line 138
    return-void
.end method

.method public readDouble()D
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->p()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->t()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->y()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public t()J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->z()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public u(Ljava/util/List;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/e;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Landroidx/datastore/preferences/protobuf/e;

    .line 7
    .line 8
    iget p1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1

    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->n()Z

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->n()Z

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->D()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    add-int/2addr v1, v0

    .line 69
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->n()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->e()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-lt v0, v1, :cond_3

    .line 89
    .line 90
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/i;->W(I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    throw p1

    .line 99
    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->n()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->f()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 128
    .line 129
    if-eq v0, v1, :cond_5

    .line 130
    .line 131
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 132
    .line 133
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->A()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public w()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->C()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 18
    .line 19
    :goto_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->c:I

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->a(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :cond_2
    :goto_1
    const v0, 0x7fffffff

    .line 34
    .line 35
    .line 36
    return v0
.end method

.method public x(Ljava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/i;->V(Ljava/util/List;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public y(Ljava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/i;->V(Ljava/util/List;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public z()Landroidx/datastore/preferences/protobuf/g;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->X(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:Landroidx/datastore/preferences/protobuf/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h;->o()Landroidx/datastore/preferences/protobuf/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
