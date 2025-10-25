.class public final Lio/appmetrica/analytics/impl/jh;
.super Lio/appmetrica/analytics/impl/b6;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/o5;

.field public final c:Lio/appmetrica/analytics/impl/ih;

.field public final d:Lio/appmetrica/analytics/impl/U3;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/ih;)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/U3;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/U3;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/appmetrica/analytics/impl/jh;-><init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/ih;Lio/appmetrica/analytics/impl/U3;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/ih;Lio/appmetrica/analytics/impl/U3;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/o5;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/o5;->b()Lio/appmetrica/analytics/impl/h5;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/h5;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/b6;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/jh;->b:Lio/appmetrica/analytics/impl/o5;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/jh;->c:Lio/appmetrica/analytics/impl/ih;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/jh;->d:Lio/appmetrica/analytics/impl/U3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/c6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/jh;->b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/lh;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lio/appmetrica/analytics/impl/lh;
    .locals 2

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/lh;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/jh;->b:Lio/appmetrica/analytics/impl/o5;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/lh;-><init>(Lio/appmetrica/analytics/impl/o5;)V

    return-object v0
.end method

.method public final b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/lh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/a6;",
            ")",
            "Lio/appmetrica/analytics/impl/lh;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/appmetrica/analytics/impl/b6;->a(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/c6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lio/appmetrica/analytics/impl/lh;

    .line 6
    .line 7
    iget-object v1, p1, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;->componentArguments:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lio/appmetrica/analytics/impl/gh;

    .line 10
    .line 11
    iget-object v1, v1, Lio/appmetrica/analytics/impl/gh;->a:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, v0, Lio/appmetrica/analytics/impl/lh;->m:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Lio/appmetrica/analytics/impl/jh;->b:Lio/appmetrica/analytics/impl/o5;

    .line 16
    .line 17
    iget-object v1, v1, Lio/appmetrica/analytics/impl/o5;->t:Lio/appmetrica/analytics/impl/do;

    .line 18
    .line 19
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/do;->a()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, v0, Lio/appmetrica/analytics/impl/lh;->r:I

    .line 24
    .line 25
    iget-object v1, p0, Lio/appmetrica/analytics/impl/jh;->b:Lio/appmetrica/analytics/impl/o5;

    .line 26
    .line 27
    iget-object v1, v1, Lio/appmetrica/analytics/impl/o5;->q:Lio/appmetrica/analytics/impl/E3;

    .line 28
    .line 29
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/E3;->a()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, v0, Lio/appmetrica/analytics/impl/lh;->w:Ljava/util/List;

    .line 34
    .line 35
    iget-object v1, p1, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;->componentArguments:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lio/appmetrica/analytics/impl/gh;

    .line 38
    .line 39
    iget-boolean v2, v1, Lio/appmetrica/analytics/impl/gh;->b:Z

    .line 40
    .line 41
    iput-boolean v2, v0, Lio/appmetrica/analytics/impl/lh;->d:Z

    .line 42
    .line 43
    iget-boolean v2, v1, Lio/appmetrica/analytics/impl/gh;->c:Z

    .line 44
    .line 45
    iput-boolean v2, v0, Lio/appmetrica/analytics/impl/lh;->e:Z

    .line 46
    .line 47
    iget v2, v1, Lio/appmetrica/analytics/impl/gh;->d:I

    .line 48
    .line 49
    iput v2, v0, Lio/appmetrica/analytics/impl/lh;->f:I

    .line 50
    .line 51
    iget v2, v1, Lio/appmetrica/analytics/impl/gh;->e:I

    .line 52
    .line 53
    iput v2, v0, Lio/appmetrica/analytics/impl/lh;->i:I

    .line 54
    .line 55
    iget v2, v1, Lio/appmetrica/analytics/impl/gh;->f:I

    .line 56
    .line 57
    iput v2, v0, Lio/appmetrica/analytics/impl/lh;->g:I

    .line 58
    .line 59
    iget-boolean v2, v1, Lio/appmetrica/analytics/impl/gh;->g:Z

    .line 60
    .line 61
    iput-boolean v2, v0, Lio/appmetrica/analytics/impl/lh;->h:Z

    .line 62
    .line 63
    iget-boolean v1, v1, Lio/appmetrica/analytics/impl/gh;->h:Z

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v2, p0, Lio/appmetrica/analytics/impl/jh;->c:Lio/appmetrica/analytics/impl/ih;

    .line 70
    .line 71
    iput-object v1, v0, Lio/appmetrica/analytics/impl/lh;->j:Ljava/lang/Boolean;

    .line 72
    .line 73
    iput-object v2, v0, Lio/appmetrica/analytics/impl/lh;->k:Lio/appmetrica/analytics/impl/ih;

    .line 74
    .line 75
    iget-object v1, p1, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;->componentArguments:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Lio/appmetrica/analytics/impl/gh;

    .line 78
    .line 79
    iget v2, v1, Lio/appmetrica/analytics/impl/gh;->j:I

    .line 80
    .line 81
    int-to-long v2, v2

    .line 82
    iput-wide v2, v0, Lio/appmetrica/analytics/impl/lh;->v:J

    .line 83
    .line 84
    iget-object p1, p1, Lio/appmetrica/analytics/impl/a6;->a:Lio/appmetrica/analytics/impl/Ql;

    .line 85
    .line 86
    iget-object v2, p1, Lio/appmetrica/analytics/impl/Ql;->n:Lio/appmetrica/analytics/impl/C4;

    .line 87
    .line 88
    iget-boolean v3, v2, Lio/appmetrica/analytics/impl/C4;->a:Z

    .line 89
    .line 90
    iput-boolean v3, v0, Lio/appmetrica/analytics/impl/lh;->n:Z

    .line 91
    .line 92
    iget-object v3, p1, Lio/appmetrica/analytics/impl/Ql;->s:Lio/appmetrica/analytics/impl/ve;

    .line 93
    .line 94
    if-eqz v3, :cond_0

    .line 95
    .line 96
    iget-wide v4, v3, Lio/appmetrica/analytics/impl/ve;->a:J

    .line 97
    .line 98
    iput-wide v4, v0, Lio/appmetrica/analytics/impl/lh;->s:J

    .line 99
    .line 100
    iget-wide v3, v3, Lio/appmetrica/analytics/impl/ve;->b:J

    .line 101
    .line 102
    iput-wide v3, v0, Lio/appmetrica/analytics/impl/lh;->t:J

    .line 103
    .line 104
    :cond_0
    iget-boolean v2, v2, Lio/appmetrica/analytics/impl/C4;->b:Z

    .line 105
    .line 106
    iput-boolean v2, v0, Lio/appmetrica/analytics/impl/lh;->o:Z

    .line 107
    .line 108
    iget-object v2, p1, Lio/appmetrica/analytics/impl/Ql;->e:Ljava/util/List;

    .line 109
    .line 110
    iput-object v2, v0, Lio/appmetrica/analytics/impl/lh;->q:Ljava/util/List;

    .line 111
    .line 112
    iget-object v2, p1, Lio/appmetrica/analytics/impl/Ql;->k:Ljava/lang/String;

    .line 113
    .line 114
    iput-object v2, v0, Lio/appmetrica/analytics/impl/lh;->p:Ljava/lang/String;

    .line 115
    .line 116
    iget-object v2, p0, Lio/appmetrica/analytics/impl/jh;->d:Lio/appmetrica/analytics/impl/U3;

    .line 117
    .line 118
    iget-object v1, v1, Lio/appmetrica/analytics/impl/gh;->i:Ljava/util/Map;

    .line 119
    .line 120
    sget-object v3, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 121
    .line 122
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/za;->e()Lio/appmetrica/analytics/impl/R3;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {v1, p1, v3}, Lio/appmetrica/analytics/impl/U3;->a(Ljava/util/Map;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/R3;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iput-boolean p1, v0, Lio/appmetrica/analytics/impl/lh;->u:Z

    .line 134
    .line 135
    return-object v0
.end method

.method public final createBlankConfig()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/lh;

    .line 2
    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/jh;->b:Lio/appmetrica/analytics/impl/o5;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/lh;-><init>(Lio/appmetrica/analytics/impl/o5;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final bridge synthetic load(Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;)Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/a6;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/jh;->b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/lh;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Ljava/lang/Object;)Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    .locals 0

    .line 2
    check-cast p1, Lio/appmetrica/analytics/impl/a6;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/jh;->b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/lh;

    move-result-object p1

    return-object p1
.end method
