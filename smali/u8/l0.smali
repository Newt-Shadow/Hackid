.class public final Lu8/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu8/k0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu8/l0$a;
    }
.end annotation


# static fields
.field public static final f:Lu8/l0$a;

.field private static final g:D


# instance fields
.field private final a:Lh7/f;

.field private final b:Ll8/e;

.field private final c:Lx8/j;

.field private final d:Lu8/h;

.field private final e:Lad/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu8/l0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lu8/l0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lu8/l0;->f:Lu8/l0$a;

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sput-wide v0, Lu8/l0;->g:D

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lh7/f;Ll8/e;Lx8/j;Lu8/h;Lad/i;)V
    .locals 1

    .line 1
    const-string v0, "firebaseApp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "firebaseInstallations"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sessionSettings"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "eventGDTLogger"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "backgroundDispatcher"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lu8/l0;->a:Lh7/f;

    .line 30
    .line 31
    iput-object p2, p0, Lu8/l0;->b:Ll8/e;

    .line 32
    .line 33
    iput-object p3, p0, Lu8/l0;->c:Lx8/j;

    .line 34
    .line 35
    iput-object p4, p0, Lu8/l0;->d:Lu8/h;

    .line 36
    .line 37
    iput-object p5, p0, Lu8/l0;->e:Lad/i;

    .line 38
    .line 39
    return-void
.end method

.method public static final synthetic b(Lu8/l0;Lu8/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu8/l0;->g(Lu8/i0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lu8/l0;)Lh7/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lu8/l0;->a:Lh7/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lu8/l0;)Ll8/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lu8/l0;->b:Ll8/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lu8/l0;)Lx8/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lu8/l0;->c:Lx8/j;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lu8/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu8/l0;->i(Lad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g(Lu8/i0;)V
    .locals 2

    .line 1
    const-string v0, "FirebaseSessions"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lu8/l0;->d:Lu8/h;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Lu8/h;->a(Lu8/i0;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "Successfully logged Session Start event."

    .line 9
    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    const-string v1, "Error logging Session Start event to DataTransport: "

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private final h()Z
    .locals 4

    .line 1
    sget-wide v0, Lu8/l0;->g:D

    .line 2
    .line 3
    iget-object v2, p0, Lu8/l0;->c:Lx8/j;

    .line 4
    .line 5
    invoke-virtual {v2}, Lx8/j;->a()D

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmpg-double v0, v0, v2

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private final i(Lad/e;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Lu8/l0$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lu8/l0$c;

    .line 7
    .line 8
    iget v1, v0, Lu8/l0$c;->d:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lu8/l0$c;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lu8/l0$c;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lu8/l0$c;-><init>(Lu8/l0;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lu8/l0$c;->b:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lu8/l0$c;->d:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const-string v4, "FirebaseSessions"

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x1

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    if-eq v2, v6, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    iget-object v0, v0, Lu8/l0$c;->a:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lu8/l0;

    .line 47
    .line 48
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    iget-object v2, v0, Lu8/l0$c;->a:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Lu8/l0;

    .line 63
    .line 64
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lv8/b;->a:Lv8/b;

    .line 72
    .line 73
    iput-object p0, v0, Lu8/l0$c;->a:Ljava/lang/Object;

    .line 74
    .line 75
    iput v6, v0, Lu8/l0$c;->d:I

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lv8/b;->c(Lad/e;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v1, :cond_4

    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_4
    move-object v2, p0

    .line 85
    :goto_1
    check-cast p1, Ljava/util/Map;

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Ljava/lang/Iterable;

    .line 92
    .line 93
    instance-of v7, p1, Ljava/util/Collection;

    .line 94
    .line 95
    if-eqz v7, :cond_6

    .line 96
    .line 97
    move-object v7, p1

    .line 98
    check-cast v7, Ljava/util/Collection;

    .line 99
    .line 100
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_6

    .line 105
    .line 106
    :cond_5
    move p1, v6

    .line 107
    goto :goto_2

    .line 108
    :cond_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eqz v7, :cond_5

    .line 117
    .line 118
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    check-cast v7, Lv8/c;

    .line 123
    .line 124
    invoke-interface {v7}, Lv8/c;->a()Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-eqz v7, :cond_7

    .line 129
    .line 130
    move p1, v5

    .line 131
    :goto_2
    if-eqz p1, :cond_8

    .line 132
    .line 133
    const-string p1, "Sessions SDK disabled through data collection. Events will not be sent."

    .line 134
    .line 135
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    return-object p1

    .line 143
    :cond_8
    iget-object p1, v2, Lu8/l0;->c:Lx8/j;

    .line 144
    .line 145
    iput-object v2, v0, Lu8/l0$c;->a:Ljava/lang/Object;

    .line 146
    .line 147
    iput v3, v0, Lu8/l0$c;->d:I

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Lx8/j;->f(Lad/e;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-ne p1, v1, :cond_9

    .line 154
    .line 155
    return-object v1

    .line 156
    :cond_9
    move-object v0, v2

    .line 157
    :goto_3
    iget-object p1, v0, Lu8/l0;->c:Lx8/j;

    .line 158
    .line 159
    invoke-virtual {p1}, Lx8/j;->c()Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-nez p1, :cond_a

    .line 164
    .line 165
    const-string p1, "Sessions SDK disabled through settings API. Events will not be sent."

    .line 166
    .line 167
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    return-object p1

    .line 175
    :cond_a
    invoke-direct {v0}, Lu8/l0;->h()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_b

    .line 180
    .line 181
    const-string p1, "Sessions SDK has dropped this session due to sampling."

    .line 182
    .line 183
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    return-object p1

    .line 191
    :cond_b
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    return-object p1
.end method


# virtual methods
.method public a(Lu8/h0;)V
    .locals 7

    .line 1
    const-string v0, "sessionDetails"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu8/l0;->e:Lad/i;

    .line 7
    .line 8
    invoke-static {v0}, Ltd/m0;->a(Lad/i;)Ltd/l0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    new-instance v4, Lu8/l0$b;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, p1, v0}, Lu8/l0$b;-><init>(Lu8/l0;Lu8/h0;Lad/e;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Ltd/g;->d(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/t1;

    .line 23
    .line 24
    .line 25
    return-void
.end method
