.class public Lcom/yandex/metrica/impl/ob/Lg;
.super Lcom/yandex/metrica/impl/ob/Hg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/Lg$e;,
        Lcom/yandex/metrica/impl/ob/Lg$d;,
        Lcom/yandex/metrica/impl/ob/Lg$c;,
        Lcom/yandex/metrica/impl/ob/Lg$a;,
        Lcom/yandex/metrica/impl/ob/Lg$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:I

.field private E:J

.field private F:J

.field private G:Z

.field private H:J

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Landroid/location/Location;

.field private q:Z

.field private r:I

.field private s:I

.field private t:Z

.field private u:I

.field private v:Ljava/lang/Boolean;

.field private w:Lcom/yandex/metrica/impl/ob/Lg$e;

.field private final x:Lcom/yandex/metrica/impl/ob/Lg$d;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Lg$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/Hg;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->x:Lcom/yandex/metrica/impl/ob/Lg$d;

    .line 5
    .line 6
    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/Lg;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->D:I

    .line 2
    .line 3
    return v0
.end method

.method public D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->I:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->B:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public F()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->w:Lcom/yandex/metrica/impl/ob/Lg$e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->v:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/Lg$e;->a(Ljava/lang/Boolean;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public G()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public H()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->p:Landroid/location/Location;

    .line 2
    .line 3
    return-object v0
.end method

.method public I()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public J()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->H:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public K()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->E:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public L()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->F:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public M()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->C:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public N()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public O()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->A:Z

    .line 2
    .line 3
    return v0
.end method

.method public P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public Q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->z:Z

    .line 2
    .line 3
    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Eg;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->C:Ljava/util/List;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->G:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public T()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Lg;->x:Lcom/yandex/metrica/impl/ob/Lg$d;

    .line 2
    .line 3
    check-cast v0, Lcom/yandex/metrica/impl/ob/L3;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->F()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->D:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->H:J

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->p:Landroid/location/Location;

    return-void
.end method

.method public a(Ljava/lang/Boolean;Lcom/yandex/metrica/impl/ob/Lg$e;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->v:Ljava/lang/Boolean;

    .line 7
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Lg;->w:Lcom/yandex/metrica/impl/ob/Lg$e;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->I:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->G:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->s:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->E:J

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->C:Ljava/util/List;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->A:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->u:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->F:J

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->q:Z

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->r:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->o:Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->z:Z

    .line 2
    .line 3
    return-void
.end method

.method h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Lg;->B:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ReportRequestConfig{mLocationTracking="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->o:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", mManualLocation="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->p:Landroid/location/Location;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", mFirstActivationAsUpdate="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->q:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", mSessionTimeout="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->r:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", mDispatchPeriod="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->s:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", mLogEnabled="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->t:Z

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", mMaxReportsCount="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->u:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", statisticSendingFromArguments="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->v:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", statisticsSendingStrategy="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->w:Lcom/yandex/metrica/impl/ob/Lg$e;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", mPreloadInfoSendingStrategy="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->x:Lcom/yandex/metrica/impl/ob/Lg$d;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", mApiKey=\'"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->y:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const/16 v1, 0x27

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v2, ", mPermissionsCollectingEnabled="

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/Lg;->z:Z

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v2, ", mFeaturesCollectingEnabled="

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/Lg;->A:Z

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, ", mClidsFromStartupResponse=\'"

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Lg;->B:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v1, ", mReportHosts="

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->C:Ljava/util/List;

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v1, ", mAttributionId="

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->D:I

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v1, ", mPermissionsCollectingIntervalSeconds="

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->E:J

    .line 180
    .line 181
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v1, ", mPermissionsForceSendIntervalSeconds="

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->F:J

    .line 190
    .line 191
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v1, ", mClidsFromClientMatchClidsFromStartupRequest="

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->G:Z

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v1, ", mMaxReportsInDbCount="

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->H:J

    .line 210
    .line 211
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v1, ", mCertificates="

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Lg;->I:Ljava/util/List;

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v1, "} "

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/Hg;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    return-object v0
.end method
