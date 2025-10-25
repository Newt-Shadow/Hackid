.class public final Lio/sentry/protocol/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/q1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Date;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Map;

.field private i:Ljava/util/List;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lio/sentry/protocol/a;->g:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/a;->g:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lio/sentry/protocol/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/a;->a:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lio/sentry/protocol/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/a;->e:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lio/sentry/protocol/a;->b:Ljava/util/Date;

    iput-object v0, p0, Lio/sentry/protocol/a;->b:Ljava/util/Date;

    .line 6
    iget-object v0, p1, Lio/sentry/protocol/a;->f:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/a;->f:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lio/sentry/protocol/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/a;->d:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lio/sentry/protocol/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/a;->c:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lio/sentry/protocol/a;->h:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/b;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/a;->h:Ljava/util/Map;

    .line 10
    iget-object v0, p1, Lio/sentry/protocol/a;->k:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/sentry/protocol/a;->k:Ljava/lang/Boolean;

    .line 11
    iget-object v0, p1, Lio/sentry/protocol/a;->i:Ljava/util/List;

    invoke-static {v0}, Lio/sentry/util/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/a;->i:Ljava/util/List;

    .line 12
    iget-object v0, p1, Lio/sentry/protocol/a;->j:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/a;->j:Ljava/lang/String;

    .line 13
    iget-object p1, p1, Lio/sentry/protocol/a;->l:Ljava/util/Map;

    invoke-static {p1}, Lio/sentry/util/b;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/a;->l:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lio/sentry/protocol/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic b(Lio/sentry/protocol/a;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->b:Ljava/util/Date;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lio/sentry/protocol/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic d(Lio/sentry/protocol/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic e(Lio/sentry/protocol/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic f(Lio/sentry/protocol/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic g(Lio/sentry/protocol/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic h(Lio/sentry/protocol/a;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->h:Ljava/util/Map;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic i(Lio/sentry/protocol/a;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->k:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic j(Lio/sentry/protocol/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-class v2, Lio/sentry/protocol/a;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lio/sentry/protocol/a;

    .line 19
    .line 20
    iget-object v2, p0, Lio/sentry/protocol/a;->a:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lio/sentry/protocol/a;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget-object v2, p0, Lio/sentry/protocol/a;->b:Ljava/util/Date;

    .line 31
    .line 32
    iget-object v3, p1, Lio/sentry/protocol/a;->b:Ljava/util/Date;

    .line 33
    .line 34
    invoke-static {v2, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lio/sentry/protocol/a;->c:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v3, p1, Lio/sentry/protocol/a;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v2, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Lio/sentry/protocol/a;->d:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v3, p1, Lio/sentry/protocol/a;->d:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v2, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lio/sentry/protocol/a;->e:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v3, p1, Lio/sentry/protocol/a;->e:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v2, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lio/sentry/protocol/a;->f:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v3, p1, Lio/sentry/protocol/a;->f:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v2, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    iget-object v2, p0, Lio/sentry/protocol/a;->g:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v3, p1, Lio/sentry/protocol/a;->g:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v2, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    iget-object v2, p0, Lio/sentry/protocol/a;->h:Ljava/util/Map;

    .line 91
    .line 92
    iget-object v3, p1, Lio/sentry/protocol/a;->h:Ljava/util/Map;

    .line 93
    .line 94
    invoke-static {v2, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    iget-object v2, p0, Lio/sentry/protocol/a;->k:Ljava/lang/Boolean;

    .line 101
    .line 102
    iget-object v3, p1, Lio/sentry/protocol/a;->k:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-static {v2, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    iget-object v2, p0, Lio/sentry/protocol/a;->i:Ljava/util/List;

    .line 111
    .line 112
    iget-object v3, p1, Lio/sentry/protocol/a;->i:Ljava/util/List;

    .line 113
    .line 114
    invoke-static {v2, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_2

    .line 119
    .line 120
    iget-object v2, p0, Lio/sentry/protocol/a;->j:Ljava/lang/String;

    .line 121
    .line 122
    iget-object p1, p1, Lio/sentry/protocol/a;->j:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v2, p1}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_2

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    move v0, v1

    .line 132
    :goto_0
    return v0

    .line 133
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 11

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/protocol/a;->b:Ljava/util/Date;

    .line 4
    .line 5
    iget-object v2, p0, Lio/sentry/protocol/a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lio/sentry/protocol/a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lio/sentry/protocol/a;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lio/sentry/protocol/a;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lio/sentry/protocol/a;->g:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lio/sentry/protocol/a;->h:Ljava/util/Map;

    .line 16
    .line 17
    iget-object v8, p0, Lio/sentry/protocol/a;->k:Ljava/lang/Boolean;

    .line 18
    .line 19
    iget-object v9, p0, Lio/sentry/protocol/a;->i:Ljava/util/List;

    .line 20
    .line 21
    iget-object v10, p0, Lio/sentry/protocol/a;->j:Ljava/lang/String;

    .line 22
    .line 23
    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lio/sentry/util/q;->b([Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public k()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/a;->k:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public o(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->b:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public q(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->k:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public r(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->h:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public serialize(Lio/sentry/m2;Lio/sentry/ILogger;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/sentry/m2;->t()Lio/sentry/m2;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/sentry/protocol/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "app_identifier"

    .line 9
    .line 10
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lio/sentry/protocol/a;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/a;->b:Ljava/util/Date;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-string v0, "app_start_time"

    .line 24
    .line 25
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lio/sentry/protocol/a;->b:Ljava/util/Date;

    .line 30
    .line 31
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/a;->c:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const-string v0, "device_app_hash"

    .line 39
    .line 40
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lio/sentry/protocol/a;->c:Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/a;->d:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    const-string v0, "build_type"

    .line 54
    .line 55
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lio/sentry/protocol/a;->d:Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/a;->e:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    const-string v0, "app_name"

    .line 69
    .line 70
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lio/sentry/protocol/a;->e:Ljava/lang/String;

    .line 75
    .line 76
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/a;->f:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    const-string v0, "app_version"

    .line 84
    .line 85
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v1, p0, Lio/sentry/protocol/a;->f:Ljava/lang/String;

    .line 90
    .line 91
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 92
    .line 93
    .line 94
    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/a;->g:Ljava/lang/String;

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    const-string v0, "app_build"

    .line 99
    .line 100
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Lio/sentry/protocol/a;->g:Ljava/lang/String;

    .line 105
    .line 106
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 107
    .line 108
    .line 109
    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/a;->h:Ljava/util/Map;

    .line 110
    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_7

    .line 118
    .line 119
    const-string v0, "permissions"

    .line 120
    .line 121
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-object v1, p0, Lio/sentry/protocol/a;->h:Ljava/util/Map;

    .line 126
    .line 127
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 128
    .line 129
    .line 130
    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/a;->k:Ljava/lang/Boolean;

    .line 131
    .line 132
    if-eqz v0, :cond_8

    .line 133
    .line 134
    const-string v0, "in_foreground"

    .line 135
    .line 136
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v1, p0, Lio/sentry/protocol/a;->k:Ljava/lang/Boolean;

    .line 141
    .line 142
    invoke-interface {v0, v1}, Lio/sentry/m2;->h(Ljava/lang/Boolean;)Lio/sentry/m2;

    .line 143
    .line 144
    .line 145
    :cond_8
    iget-object v0, p0, Lio/sentry/protocol/a;->i:Ljava/util/List;

    .line 146
    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    const-string v0, "view_names"

    .line 150
    .line 151
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget-object v1, p0, Lio/sentry/protocol/a;->i:Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 158
    .line 159
    .line 160
    :cond_9
    iget-object v0, p0, Lio/sentry/protocol/a;->j:Ljava/lang/String;

    .line 161
    .line 162
    if-eqz v0, :cond_a

    .line 163
    .line 164
    const-string v0, "start_type"

    .line 165
    .line 166
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iget-object v1, p0, Lio/sentry/protocol/a;->j:Ljava/lang/String;

    .line 171
    .line 172
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 173
    .line 174
    .line 175
    :cond_a
    iget-object v0, p0, Lio/sentry/protocol/a;->l:Ljava/util/Map;

    .line 176
    .line 177
    if-eqz v0, :cond_b

    .line 178
    .line 179
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_b

    .line 192
    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    check-cast v1, Ljava/lang/String;

    .line 198
    .line 199
    iget-object v2, p0, Lio/sentry/protocol/a;->l:Ljava/util/Map;

    .line 200
    .line 201
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-interface {p1, v1}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-interface {v1, p2, v2}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 210
    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_b
    invoke-interface {p1}, Lio/sentry/m2;->r()Lio/sentry/m2;

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method public t(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->l:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/a;->i:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
