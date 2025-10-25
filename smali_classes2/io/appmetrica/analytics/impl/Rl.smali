.class public final Lio/appmetrica/analytics/impl/Rl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/we;

.field public final b:Lio/appmetrica/analytics/impl/ra;

.field public final c:Lio/appmetrica/analytics/impl/tm;

.field public final d:Lio/appmetrica/analytics/impl/q2;

.field public final e:Lio/appmetrica/analytics/impl/x3;

.field public final f:Lio/appmetrica/analytics/impl/o2;

.field public final g:Lio/appmetrica/analytics/impl/H6;

.field public final h:Lio/appmetrica/analytics/impl/pm;

.field public final i:Lio/appmetrica/analytics/impl/wd;

.field public final j:Lio/appmetrica/analytics/impl/O9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/we;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/we;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rl;->a:Lio/appmetrica/analytics/impl/we;

    .line 10
    .line 11
    new-instance v0, Lio/appmetrica/analytics/impl/ra;

    .line 12
    .line 13
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ra;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rl;->b:Lio/appmetrica/analytics/impl/ra;

    .line 17
    .line 18
    new-instance v0, Lio/appmetrica/analytics/impl/tm;

    .line 19
    .line 20
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/tm;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rl;->c:Lio/appmetrica/analytics/impl/tm;

    .line 24
    .line 25
    new-instance v0, Lio/appmetrica/analytics/impl/q2;

    .line 26
    .line 27
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/q2;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rl;->d:Lio/appmetrica/analytics/impl/q2;

    .line 31
    .line 32
    new-instance v0, Lio/appmetrica/analytics/impl/x3;

    .line 33
    .line 34
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/x3;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rl;->e:Lio/appmetrica/analytics/impl/x3;

    .line 38
    .line 39
    new-instance v0, Lio/appmetrica/analytics/impl/o2;

    .line 40
    .line 41
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/o2;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rl;->f:Lio/appmetrica/analytics/impl/o2;

    .line 45
    .line 46
    new-instance v0, Lio/appmetrica/analytics/impl/H6;

    .line 47
    .line 48
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/H6;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rl;->g:Lio/appmetrica/analytics/impl/H6;

    .line 52
    .line 53
    new-instance v0, Lio/appmetrica/analytics/impl/pm;

    .line 54
    .line 55
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/pm;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rl;->h:Lio/appmetrica/analytics/impl/pm;

    .line 59
    .line 60
    new-instance v0, Lio/appmetrica/analytics/impl/wd;

    .line 61
    .line 62
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/wd;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rl;->i:Lio/appmetrica/analytics/impl/wd;

    .line 66
    .line 67
    new-instance v0, Lio/appmetrica/analytics/impl/O9;

    .line 68
    .line 69
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/O9;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rl;->j:Lio/appmetrica/analytics/impl/O9;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/im;)Lio/appmetrica/analytics/impl/Ul;
    .locals 7

    .line 50
    new-instance v0, Lio/appmetrica/analytics/impl/Tl;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Rl;->b:Lio/appmetrica/analytics/impl/ra;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/im;->i:Lio/appmetrica/analytics/impl/dm;

    .line 51
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/ra;->a(Lio/appmetrica/analytics/impl/dm;)Lio/appmetrica/analytics/impl/C4;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Tl;-><init>(Lio/appmetrica/analytics/impl/C4;)V

    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->a:Ljava/lang/String;

    .line 52
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->a:Ljava/lang/String;

    .line 53
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->j:Ljava/lang/String;

    .line 54
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->j:Ljava/lang/String;

    .line 55
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->d:Ljava/lang/String;

    .line 56
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->c:Ljava/lang/String;

    .line 57
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->c:[Ljava/lang/String;

    .line 58
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 59
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->b:Ljava/util/List;

    .line 60
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->g:[Ljava/lang/String;

    .line 61
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 62
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->g:Ljava/util/List;

    .line 63
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->f:[Ljava/lang/String;

    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 65
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->f:Ljava/util/List;

    .line 66
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->e:Ljava/lang/String;

    .line 67
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->d:Ljava/lang/String;

    .line 68
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->r:Ljava/lang/String;

    .line 69
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->e:Ljava/lang/String;

    .line 70
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->o:[Ljava/lang/String;

    .line 71
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 72
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->h:Ljava/util/List;

    .line 73
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->k:Ljava/lang/String;

    .line 74
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->k:Ljava/lang/String;

    .line 75
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->l:Ljava/lang/String;

    .line 76
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->l:Ljava/lang/String;

    .line 77
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/im;->m:Z

    .line 78
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Tl;->q:Z

    .line 79
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/im;->b:J

    .line 80
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Tl;->o:J

    .line 81
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/im;->q:Z

    .line 82
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Tl;->p:Z

    .line 83
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/im;->s:J

    .line 84
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Tl;->t:J

    .line 85
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/im;->t:J

    .line 86
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Tl;->u:J

    .line 87
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->n:Ljava/lang/String;

    .line 88
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->r:Ljava/lang/String;

    .line 89
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/im;->u:Z

    .line 90
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Tl;->v:Z

    .line 91
    new-instance v1, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iget v2, p1, Lio/appmetrica/analytics/impl/im;->w:I

    iget v3, p1, Lio/appmetrica/analytics/impl/im;->x:I

    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;-><init>(II)V

    .line 92
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->w:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    .line 93
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Rl;->g:Lio/appmetrica/analytics/impl/H6;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/im;->h:[Lio/appmetrica/analytics/impl/bm;

    .line 94
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/H6;->a([Lio/appmetrica/analytics/impl/bm;)Ljava/util/Map;

    move-result-object v1

    .line 95
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->i:Ljava/util/Map;

    .line 96
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->v:Lio/appmetrica/analytics/impl/fm;

    if-eqz v1, :cond_0

    .line 97
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Rl;->a:Lio/appmetrica/analytics/impl/we;

    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    new-instance v2, Lio/appmetrica/analytics/impl/ve;

    iget-wide v3, v1, Lio/appmetrica/analytics/impl/fm;->a:J

    iget-wide v5, v1, Lio/appmetrica/analytics/impl/fm;->b:J

    invoke-direct {v2, v3, v4, v5, v6}, Lio/appmetrica/analytics/impl/ve;-><init>(JJ)V

    .line 100
    iput-object v2, v0, Lio/appmetrica/analytics/impl/Tl;->n:Lio/appmetrica/analytics/impl/ve;

    .line 101
    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->p:Lio/appmetrica/analytics/impl/hm;

    if-eqz v1, :cond_1

    .line 102
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Rl;->c:Lio/appmetrica/analytics/impl/tm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    new-instance v2, Lio/appmetrica/analytics/impl/sm;

    iget-wide v3, v1, Lio/appmetrica/analytics/impl/hm;->a:J

    invoke-direct {v2, v3, v4}, Lio/appmetrica/analytics/impl/sm;-><init>(J)V

    .line 104
    iput-object v2, v0, Lio/appmetrica/analytics/impl/Tl;->s:Lio/appmetrica/analytics/impl/sm;

    .line 105
    :cond_1
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->z:Lio/appmetrica/analytics/impl/Zl;

    if-eqz v1, :cond_2

    .line 106
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Rl;->d:Lio/appmetrica/analytics/impl/q2;

    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    new-instance v2, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    iget v3, v1, Lio/appmetrica/analytics/impl/Zl;->a:I

    iget v1, v1, Lio/appmetrica/analytics/impl/Zl;->b:I

    invoke-direct {v2, v3, v1}, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;-><init>(II)V

    .line 109
    iput-object v2, v0, Lio/appmetrica/analytics/impl/Tl;->x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    .line 110
    :cond_2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->y:Lio/appmetrica/analytics/impl/am;

    if-eqz v1, :cond_3

    .line 111
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Rl;->e:Lio/appmetrica/analytics/impl/x3;

    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    new-instance v2, Lio/appmetrica/analytics/impl/v3;

    iget-wide v3, v1, Lio/appmetrica/analytics/impl/am;->a:J

    invoke-direct {v2, v3, v4}, Lio/appmetrica/analytics/impl/v3;-><init>(J)V

    .line 114
    iput-object v2, v0, Lio/appmetrica/analytics/impl/Tl;->y:Lio/appmetrica/analytics/impl/v3;

    .line 115
    :cond_3
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->A:Lio/appmetrica/analytics/impl/Yl;

    if-eqz v1, :cond_4

    .line 116
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Rl;->f:Lio/appmetrica/analytics/impl/o2;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/o2;->a(Lio/appmetrica/analytics/impl/Yl;)Lio/appmetrica/analytics/impl/n2;

    move-result-object v1

    .line 117
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->z:Lio/appmetrica/analytics/impl/n2;

    .line 118
    :cond_4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/im;->B:Lio/appmetrica/analytics/impl/gm;

    if-eqz v1, :cond_5

    .line 119
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Rl;->h:Lio/appmetrica/analytics/impl/pm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    new-instance v2, Lio/appmetrica/analytics/impl/om;

    iget v1, v1, Lio/appmetrica/analytics/impl/gm;->a:I

    invoke-direct {v2, v1}, Lio/appmetrica/analytics/impl/om;-><init>(I)V

    .line 121
    iput-object v2, v0, Lio/appmetrica/analytics/impl/Tl;->A:Lio/appmetrica/analytics/impl/om;

    .line 122
    :cond_5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Rl;->i:Lio/appmetrica/analytics/impl/wd;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/im;->C:[Lio/appmetrica/analytics/impl/em;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/wd;->a([Lio/appmetrica/analytics/impl/em;)Ljava/util/Map;

    move-result-object v1

    .line 123
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->B:Ljava/util/Map;

    .line 124
    iget-object p1, p1, Lio/appmetrica/analytics/impl/im;->D:Lio/appmetrica/analytics/impl/cm;

    if-eqz p1, :cond_6

    .line 125
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Rl;->j:Lio/appmetrica/analytics/impl/O9;

    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    new-instance v1, Lio/appmetrica/analytics/impl/N9;

    .line 128
    iget-wide v2, p1, Lio/appmetrica/analytics/impl/cm;->a:J

    .line 129
    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/impl/N9;-><init>(J)V

    .line 130
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->C:Lio/appmetrica/analytics/impl/N9;

    .line 131
    :cond_6
    new-instance p1, Lio/appmetrica/analytics/impl/Ul;

    .line 132
    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Ul;-><init>(Lio/appmetrica/analytics/impl/Tl;)V

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ul;)Lio/appmetrica/analytics/impl/im;
    .locals 5

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/im;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/im;-><init>()V

    .line 2
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Ul;->u:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/im;->s:J

    .line 3
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Ul;->v:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/im;->t:J

    .line 4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->a:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->f:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->f:[Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->g:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->g:[Ljava/lang/String;

    .line 9
    :cond_2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->b:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->c:[Ljava/lang/String;

    .line 11
    :cond_3
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->h:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->o:[Ljava/lang/String;

    .line 13
    :cond_4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->i:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 14
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Rl;->g:Lio/appmetrica/analytics/impl/H6;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/H6;->a(Ljava/util/Map;)[Lio/appmetrica/analytics/impl/bm;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->h:[Lio/appmetrica/analytics/impl/bm;

    .line 15
    :cond_5
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->s:Lio/appmetrica/analytics/impl/ve;

    if-eqz v1, :cond_6

    .line 16
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Rl;->a:Lio/appmetrica/analytics/impl/we;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/we;->a(Lio/appmetrica/analytics/impl/ve;)Lio/appmetrica/analytics/impl/fm;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->v:Lio/appmetrica/analytics/impl/fm;

    .line 17
    :cond_6
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->j:Ljava/lang/String;

    if-eqz v1, :cond_7

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->j:Ljava/lang/String;

    .line 18
    :cond_7
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->c:Ljava/lang/String;

    if-eqz v1, :cond_8

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->d:Ljava/lang/String;

    .line 19
    :cond_8
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->d:Ljava/lang/String;

    if-eqz v1, :cond_9

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->e:Ljava/lang/String;

    .line 20
    :cond_9
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->e:Ljava/lang/String;

    if-eqz v1, :cond_a

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->r:Ljava/lang/String;

    .line 21
    :cond_a
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Rl;->b:Lio/appmetrica/analytics/impl/ra;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Ul;->m:Lio/appmetrica/analytics/impl/C4;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/ra;->a(Lio/appmetrica/analytics/impl/C4;)Lio/appmetrica/analytics/impl/dm;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->i:Lio/appmetrica/analytics/impl/dm;

    .line 22
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->k:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 23
    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->k:Ljava/lang/String;

    .line 24
    :cond_b
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->l:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 25
    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->l:Ljava/lang/String;

    .line 26
    :cond_c
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Ul;->p:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/im;->m:Z

    .line 27
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Ul;->n:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/im;->b:J

    .line 28
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Ul;->o:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/im;->q:Z

    .line 29
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iget v2, v1, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;->maxIntervalSeconds:I

    iput v2, v0, Lio/appmetrica/analytics/impl/im;->w:I

    .line 30
    iget v1, v1, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;->exponentialMultiplier:I

    iput v1, v0, Lio/appmetrica/analytics/impl/im;->x:I

    .line 31
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->q:Ljava/lang/String;

    if-eqz v1, :cond_d

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->n:Ljava/lang/String;

    .line 32
    :cond_d
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->r:Lio/appmetrica/analytics/impl/sm;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Rl;->c:Lio/appmetrica/analytics/impl/tm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance v2, Lio/appmetrica/analytics/impl/hm;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/hm;-><init>()V

    .line 34
    iget-wide v3, v1, Lio/appmetrica/analytics/impl/sm;->a:J

    iput-wide v3, v2, Lio/appmetrica/analytics/impl/hm;->a:J

    .line 35
    iput-object v2, v0, Lio/appmetrica/analytics/impl/im;->p:Lio/appmetrica/analytics/impl/hm;

    .line 36
    :cond_e
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Ul;->w:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/im;->u:Z

    .line 37
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    if-eqz v1, :cond_f

    .line 38
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Rl;->d:Lio/appmetrica/analytics/impl/q2;

    .line 39
    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/q2;->a(Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;)Lio/appmetrica/analytics/impl/Zl;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->z:Lio/appmetrica/analytics/impl/Zl;

    .line 40
    :cond_f
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->y:Lio/appmetrica/analytics/impl/v3;

    if-eqz v1, :cond_10

    .line 41
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Rl;->e:Lio/appmetrica/analytics/impl/x3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    new-instance v2, Lio/appmetrica/analytics/impl/am;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/am;-><init>()V

    .line 43
    iget-wide v3, v1, Lio/appmetrica/analytics/impl/v3;->a:J

    iput-wide v3, v2, Lio/appmetrica/analytics/impl/am;->a:J

    .line 44
    iput-object v2, v0, Lio/appmetrica/analytics/impl/im;->y:Lio/appmetrica/analytics/impl/am;

    .line 45
    :cond_10
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ul;->z:Lio/appmetrica/analytics/impl/n2;

    if-eqz v1, :cond_11

    .line 46
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Rl;->f:Lio/appmetrica/analytics/impl/o2;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/o2;->a(Lio/appmetrica/analytics/impl/n2;)Lio/appmetrica/analytics/impl/Yl;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->A:Lio/appmetrica/analytics/impl/Yl;

    .line 47
    :cond_11
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Rl;->h:Lio/appmetrica/analytics/impl/pm;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Ul;->A:Lio/appmetrica/analytics/impl/om;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/pm;->a(Lio/appmetrica/analytics/impl/om;)Lio/appmetrica/analytics/impl/gm;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->B:Lio/appmetrica/analytics/impl/gm;

    .line 48
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Rl;->i:Lio/appmetrica/analytics/impl/wd;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Ul;->B:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/wd;->a(Ljava/util/Map;)[Lio/appmetrica/analytics/impl/em;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->C:[Lio/appmetrica/analytics/impl/em;

    .line 49
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Rl;->j:Lio/appmetrica/analytics/impl/O9;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ul;->C:Lio/appmetrica/analytics/impl/N9;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/O9;->a(Lio/appmetrica/analytics/impl/N9;)Lio/appmetrica/analytics/impl/cm;

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/im;->D:Lio/appmetrica/analytics/impl/cm;

    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/Ul;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Rl;->a(Lio/appmetrica/analytics/impl/Ul;)Lio/appmetrica/analytics/impl/im;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/im;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Rl;->a(Lio/appmetrica/analytics/impl/im;)Lio/appmetrica/analytics/impl/Ul;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
