.class public final Lio/sentry/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/d$a;
    }
.end annotation


# static fields
.field static final e:Ljava/lang/Integer;

.field static final f:Ljava/lang/Integer;


# instance fields
.field final a:Ljava/util/Map;

.field final b:Ljava/lang/String;

.field private c:Z

.field final d:Lio/sentry/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/sentry/d;->e:Ljava/lang/Integer;

    .line 8
    .line 9
    const/16 v0, 0x40

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lio/sentry/d;->f:Ljava/lang/Integer;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lio/sentry/d;-><init>(Ljava/util/Map;Ljava/lang/String;ZLio/sentry/ILogger;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/d;)V
    .locals 3

    .line 2
    iget-object v0, p1, Lio/sentry/d;->a:Ljava/util/Map;

    iget-object v1, p1, Lio/sentry/d;->b:Ljava/lang/String;

    iget-boolean v2, p1, Lio/sentry/d;->c:Z

    iget-object p1, p1, Lio/sentry/d;->d:Lio/sentry/ILogger;

    invoke-direct {p0, v0, v1, v2, p1}, Lio/sentry/d;-><init>(Ljava/util/Map;Ljava/lang/String;ZLio/sentry/ILogger;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;ZLio/sentry/ILogger;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lio/sentry/d;->a:Ljava/util/Map;

    .line 5
    iput-object p4, p0, Lio/sentry/d;->d:Lio/sentry/ILogger;

    .line 6
    iput-boolean p3, p0, Lio/sentry/d;->c:Z

    .line 7
    iput-object p2, p0, Lio/sentry/d;->b:Ljava/lang/String;

    return-void
.end method

.method public static b(Lio/sentry/z4;Lio/sentry/s5;)Lio/sentry/d;
    .locals 4

    .line 1
    new-instance v0, Lio/sentry/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lio/sentry/d;-><init>(Lio/sentry/ILogger;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lio/sentry/protocol/c;->f()Lio/sentry/l6;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lio/sentry/l6;->k()Lio/sentry/protocol/r;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lio/sentry/protocol/r;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v1, v2

    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Lio/sentry/d;->C(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lio/sentry/s5;->retrieveParsedDsn()Lio/sentry/r;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lio/sentry/r;->a()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Lio/sentry/d;->x(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lio/sentry/t3;->J()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Lio/sentry/d;->y(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lio/sentry/t3;->F()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Lio/sentry/d;->w(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lio/sentry/t3;->Q()Lio/sentry/protocol/b0;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-static {p1}, Lio/sentry/d;->k(Lio/sentry/protocol/b0;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move-object p1, v2

    .line 71
    :goto_1
    invoke-virtual {v0, p1}, Lio/sentry/d;->E(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lio/sentry/z4;->v0()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Lio/sentry/d;->D(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Lio/sentry/d;->A(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Lio/sentry/d;->B(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string v1, "replay_id"

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    sget-object v3, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 104
    .line 105
    invoke-virtual {v3}, Lio/sentry/protocol/r;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_2

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v0, p1}, Lio/sentry/d;->z(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    :cond_2
    invoke-virtual {v0}, Lio/sentry/d;->a()V

    .line 130
    .line 131
    .line 132
    return-object v0
.end method

.method private static k(Lio/sentry/protocol/b0;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/protocol/b0;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/protocol/b0;->o()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lio/sentry/protocol/b0;->k()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    const-string v0, "segment"

    .line 19
    .line 20
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/String;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method private static q(Lio/sentry/protocol/a0;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lio/sentry/protocol/a0;->URL:Lio/sentry/protocol/a0;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method private static s(Lio/sentry/x6;)Ljava/lang/Double;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/sentry/x6;->c()Ljava/lang/Double;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static t(Ljava/lang/Double;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lio/sentry/util/u;->e(Ljava/lang/Double;Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    .line 11
    .line 12
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 13
    .line 14
    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "#.################"

    .line 19
    .line 20
    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method private static u(Lio/sentry/x6;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/sentry/x6;->d()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "sentry-sample_rate"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "sentry-sampled"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "sentry-trace_id"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "sentry-transaction"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "sentry-user_segment"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public F(Lio/sentry/u0;Lio/sentry/s5;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lio/sentry/u0;->t()Lio/sentry/w2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lio/sentry/u0;->G()Lio/sentry/protocol/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p1}, Lio/sentry/u0;->o()Lio/sentry/protocol/r;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0}, Lio/sentry/w2;->e()Lio/sentry/protocol/r;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lio/sentry/protocol/r;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lio/sentry/d;->C(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lio/sentry/s5;->retrieveParsedDsn()Lio/sentry/r;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lio/sentry/r;->a()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lio/sentry/d;->x(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lio/sentry/s5;->getRelease()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lio/sentry/d;->y(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lio/sentry/s5;->getEnvironment()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p0, p2}, Lio/sentry/d;->w(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object p2, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Lio/sentry/protocol/r;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1}, Lio/sentry/protocol/r;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lio/sentry/d;->z(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    const/4 p1, 0x0

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-static {v1}, Lio/sentry/d;->k(Lio/sentry/protocol/b0;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move-object p2, p1

    .line 73
    :goto_0
    invoke-virtual {p0, p2}, Lio/sentry/d;->E(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lio/sentry/d;->D(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lio/sentry/d;->A(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lio/sentry/d;->B(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public G(Lio/sentry/a1;Lio/sentry/protocol/b0;Lio/sentry/protocol/r;Lio/sentry/s5;Lio/sentry/x6;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lio/sentry/z0;->o()Lio/sentry/l6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/sentry/l6;->k()Lio/sentry/protocol/r;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lio/sentry/protocol/r;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lio/sentry/d;->C(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Lio/sentry/s5;->retrieveParsedDsn()Lio/sentry/r;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lio/sentry/r;->a()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lio/sentry/d;->x(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p4}, Lio/sentry/s5;->getRelease()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lio/sentry/d;->y(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4}, Lio/sentry/s5;->getEnvironment()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    invoke-virtual {p0, p4}, Lio/sentry/d;->w(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p4, 0x0

    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    invoke-static {p2}, Lio/sentry/d;->k(Lio/sentry/protocol/b0;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object p2, p4

    .line 50
    :goto_0
    invoke-virtual {p0, p2}, Lio/sentry/d;->E(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Lio/sentry/a1;->s()Lio/sentry/protocol/a0;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p2}, Lio/sentry/d;->q(Lio/sentry/protocol/a0;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    invoke-interface {p1}, Lio/sentry/a1;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p4

    .line 67
    :cond_1
    invoke-virtual {p0, p4}, Lio/sentry/d;->D(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    if-eqz p3, :cond_2

    .line 71
    .line 72
    sget-object p1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 73
    .line 74
    invoke-virtual {p1, p3}, Lio/sentry/protocol/r;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_2

    .line 79
    .line 80
    invoke-virtual {p3}, Lio/sentry/protocol/r;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lio/sentry/d;->z(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-static {p5}, Lio/sentry/d;->s(Lio/sentry/x6;)Ljava/lang/Double;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Lio/sentry/d;->t(Ljava/lang/Double;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lio/sentry/d;->A(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p5}, Lio/sentry/d;->u(Lio/sentry/x6;)Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Lio/sentry/util/w;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Lio/sentry/d;->B(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public H()Lio/sentry/v6;
    .locals 14

    .line 1
    invoke-virtual {p0}, Lio/sentry/d;->l()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lio/sentry/d;->g()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lio/sentry/d;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    new-instance v13, Lio/sentry/v6;

    .line 19
    .line 20
    new-instance v3, Lio/sentry/protocol/r;

    .line 21
    .line 22
    invoke-direct {v3, v0}, Lio/sentry/protocol/r;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lio/sentry/d;->f()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {p0}, Lio/sentry/d;->d()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {p0}, Lio/sentry/d;->o()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {p0}, Lio/sentry/d;->p()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-virtual {p0}, Lio/sentry/d;->m()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    invoke-virtual {p0}, Lio/sentry/d;->h()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    invoke-virtual {p0}, Lio/sentry/d;->j()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    move-object v12, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Lio/sentry/protocol/r;

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lio/sentry/protocol/r;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    move-object v12, v0

    .line 63
    :goto_0
    move-object v2, v13

    .line 64
    invoke-direct/range {v2 .. v12}, Lio/sentry/v6;-><init>(Lio/sentry/protocol/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/r;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lio/sentry/d;->n()Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v13, v0}, Lio/sentry/v6;->b(Ljava/util/Map;)V

    .line 72
    .line 73
    .line 74
    return-object v13

    .line 75
    :cond_1
    return-object v2
.end method

.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/sentry/d;->c:Z

    .line 3
    .line 4
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lio/sentry/d;->a:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sentry-environment"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/sentry/d;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sentry-public_key"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/sentry/d;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sentry-release"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/sentry/d;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sentry-replay_id"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/sentry/d;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sentry-sample_rate"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/sentry/d;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public i()Ljava/lang/Double;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/sentry/d;->h()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-static {v0, v4}, Lio/sentry/util/u;->e(Ljava/lang/Double;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object v0

    .line 28
    :catch_0
    :cond_0
    return-object v1
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sentry-sampled"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/sentry/d;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sentry-trace_id"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/sentry/d;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sentry-transaction"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/sentry/d;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public n()Ljava/util/Map;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/sentry/d;->a:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/String;

    .line 39
    .line 40
    sget-object v4, Lio/sentry/d$a;->a:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_0

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    const-string v4, "sentry-"

    .line 51
    .line 52
    const-string v5, ""

    .line 53
    .line 54
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sentry-user_id"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/sentry/d;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sentry-user_segment"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/sentry/d;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/d;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/d;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/sentry/d;->a:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "sentry-environment"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "sentry-public_key"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "sentry-release"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "sentry-replay_id"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
