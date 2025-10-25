.class public Lcom/yandex/metrica/impl/ob/Mg;
.super Lcom/yandex/metrica/impl/ob/Hg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/Mg$c;,
        Lcom/yandex/metrica/impl/ob/Mg$b;
    }
.end annotation


# instance fields
.field private final A:Lcom/yandex/metrica/impl/ob/Jg;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/yandex/metrica/impl/ob/v3$a;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:J

.field private final z:Lcom/yandex/metrica/impl/ob/sg;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->m()Lcom/yandex/metrica/impl/ob/sg;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Jg;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Jg;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/Mg;-><init>(Lcom/yandex/metrica/impl/ob/sg;Lcom/yandex/metrica/impl/ob/Jg;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/Mg$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/Mg;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/sg;Lcom/yandex/metrica/impl/ob/Jg;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/Hg;-><init>()V

    .line 5
    new-instance v0, Lcom/yandex/metrica/impl/ob/v3$a;

    sget-object v1, Lcom/yandex/metrica/impl/ob/u0;->c:Lcom/yandex/metrica/impl/ob/u0;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/yandex/metrica/impl/ob/v3$a;-><init>(Ljava/util/Map;Lcom/yandex/metrica/impl/ob/u0;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Mg;->t:Lcom/yandex/metrica/impl/ob/v3$a;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/Mg;->y:J

    .line 7
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Mg;->z:Lcom/yandex/metrica/impl/ob/sg;

    .line 8
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Mg;->A:Lcom/yandex/metrica/impl/ob/Jg;

    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/Mg;Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Mg;->q:Ljava/lang/String;

    return-void
.end method

.method static b(Lcom/yandex/metrica/impl/ob/Mg;Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Mg;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public B()Lcom/yandex/metrica/impl/ob/v3$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Mg;->t:Lcom/yandex/metrica/impl/ob/v3$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Mg;->s:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Mg;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Mg;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Mg;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public G()Ljava/util/List;
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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Mg;->u:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public H()Lcom/yandex/metrica/impl/ob/sg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Mg;->z:Lcom/yandex/metrica/impl/ob/sg;

    .line 2
    .line 3
    return-object v0
.end method

.method public I()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Mg;->o:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Mg;->o:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Mg;->p:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Mg;->p:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Mg;->A:Lcom/yandex/metrica/impl/ob/Jg;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Jg;->a()Ljava/util/Collection;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method public J()Ljava/util/List;
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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Mg;->p:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Mg;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Mg;->w:Z

    .line 2
    .line 3
    return v0
.end method

.method public a(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/Mg;->y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/Mg;->y:J

    .line 3
    :cond_0
    iget-wide p1, p0, Lcom/yandex/metrica/impl/ob/Mg;->y:J

    return-wide p1
.end method

.method a(Lcom/yandex/metrica/impl/ob/v3$a;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Mg;->t:Lcom/yandex/metrica/impl/ob/v3$a;

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

    .line 7
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Mg;->u:Ljava/util/List;

    return-void
.end method

.method a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Mg;->s:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/Mg;->v:Z

    return-void
.end method

.method b(J)V
    .locals 4

    .line 2
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/Mg;->y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/Mg;->y:J

    :cond_0
    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Mg;->p:Ljava/util/List;

    return-void
.end method

.method b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/Mg;->w:Z

    return-void
.end method

.method c(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Mg;->o:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Mg;->x:Ljava/lang/String;

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
    const-string v1, "StartupRequestConfig{mStartupHostsFromStartup="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Mg;->o:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", mStartupHostsFromClient="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Mg;->p:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", mDistributionReferrer=\'"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Mg;->q:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x27

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", mInstallReferrerSource=\'"

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Mg;->r:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ", mClidsFromClient="

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Mg;->s:Ljava/util/Map;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ", mNewCustomHosts="

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Mg;->u:Ljava/util/List;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, ", mHasNewCustomHosts="

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/Mg;->v:Z

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, ", mSuccessfulStartup="

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/Mg;->w:Z

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, ", mCountryInit=\'"

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Mg;->x:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, ", mFirstStartupTime="

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/Mg;->y:J

    .line 113
    .line 114
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, "} "

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/Hg;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    return-object v0
.end method
