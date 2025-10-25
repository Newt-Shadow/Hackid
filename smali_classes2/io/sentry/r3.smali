.class public final Lio/sentry/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/q1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/r3$a;
    }
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/Double;

.field c:Z

.field d:Ljava/lang/Double;

.field e:Ljava/lang/String;

.field f:Z

.field g:I

.field private h:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/sentry/r3;->c:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lio/sentry/r3;->d:Ljava/lang/Double;

    .line 4
    iput-boolean v0, p0, Lio/sentry/r3;->a:Z

    .line 5
    iput-object v1, p0, Lio/sentry/r3;->b:Ljava/lang/Double;

    .line 6
    iput-object v1, p0, Lio/sentry/r3;->e:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lio/sentry/r3;->f:Z

    .line 8
    iput v0, p0, Lio/sentry/r3;->g:I

    return-void
.end method

.method constructor <init>(Lio/sentry/s5;Lio/sentry/x6;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p2}, Lio/sentry/x6;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/r3;->c:Z

    .line 11
    invoke-virtual {p2}, Lio/sentry/x6;->c()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/r3;->d:Ljava/lang/Double;

    .line 12
    invoke-virtual {p2}, Lio/sentry/x6;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/r3;->a:Z

    .line 13
    invoke-virtual {p2}, Lio/sentry/x6;->a()Ljava/lang/Double;

    move-result-object p2

    iput-object p2, p0, Lio/sentry/r3;->b:Ljava/lang/Double;

    .line 14
    invoke-virtual {p1}, Lio/sentry/s5;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/sentry/r3;->e:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lio/sentry/s5;->isProfilingEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lio/sentry/r3;->f:Z

    .line 16
    invoke-virtual {p1}, Lio/sentry/s5;->getProfilingTracesHz()I

    move-result p1

    iput p1, p0, Lio/sentry/r3;->g:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/r3;->b:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/r3;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lio/sentry/r3;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public d()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/r3;->d:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/r3;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/r3;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/r3;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public h(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/r3;->h:Ljava/util/Map;

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
    const-string v0, "profile_sampled"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean v1, p0, Lio/sentry/r3;->a:Z

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 17
    .line 18
    .line 19
    const-string v0, "profile_sample_rate"

    .line 20
    .line 21
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lio/sentry/r3;->b:Ljava/lang/Double;

    .line 26
    .line 27
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 28
    .line 29
    .line 30
    const-string v0, "trace_sampled"

    .line 31
    .line 32
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-boolean v1, p0, Lio/sentry/r3;->c:Z

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 43
    .line 44
    .line 45
    const-string v0, "trace_sample_rate"

    .line 46
    .line 47
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lio/sentry/r3;->d:Ljava/lang/Double;

    .line 52
    .line 53
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 54
    .line 55
    .line 56
    const-string v0, "profiling_traces_dir_path"

    .line 57
    .line 58
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lio/sentry/r3;->e:Ljava/lang/String;

    .line 63
    .line 64
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 65
    .line 66
    .line 67
    const-string v0, "is_profiling_enabled"

    .line 68
    .line 69
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-boolean v1, p0, Lio/sentry/r3;->f:Z

    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 80
    .line 81
    .line 82
    const-string v0, "profiling_traces_hz"

    .line 83
    .line 84
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget v1, p0, Lio/sentry/r3;->g:I

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lio/sentry/r3;->h:Ljava/util/Map;

    .line 98
    .line 99
    if-eqz v0, :cond_0

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_0

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Ljava/lang/String;

    .line 120
    .line 121
    iget-object v2, p0, Lio/sentry/r3;->h:Ljava/util/Map;

    .line 122
    .line 123
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-interface {p1, v1}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, p2, v2}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {p1}, Lio/sentry/m2;->r()Lio/sentry/m2;

    .line 135
    .line 136
    .line 137
    return-void
.end method
