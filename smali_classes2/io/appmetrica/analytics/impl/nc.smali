.class public final Lio/appmetrica/analytics/impl/nc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Og;

.field public final b:Lio/appmetrica/analytics/impl/C9;

.field public final c:Lio/appmetrica/analytics/impl/F4;

.field public final d:Lio/appmetrica/analytics/impl/Ue;

.field public final e:Lio/appmetrica/analytics/impl/e5;

.field public final f:Lio/appmetrica/analytics/impl/Hc;

.field public final g:Lxc/d;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/Og;Lio/appmetrica/analytics/impl/C9;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/Ue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/nc;->a:Lio/appmetrica/analytics/impl/Og;

    .line 5
    .line 6
    iput-object p3, p0, Lio/appmetrica/analytics/impl/nc;->b:Lio/appmetrica/analytics/impl/C9;

    .line 7
    .line 8
    iput-object p4, p0, Lio/appmetrica/analytics/impl/nc;->c:Lio/appmetrica/analytics/impl/F4;

    .line 9
    .line 10
    iput-object p5, p0, Lio/appmetrica/analytics/impl/nc;->d:Lio/appmetrica/analytics/impl/Ue;

    .line 11
    .line 12
    new-instance p3, Lio/appmetrica/analytics/impl/e5;

    .line 13
    .line 14
    invoke-direct {p3, p1, p2}, Lio/appmetrica/analytics/impl/e5;-><init>(Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/Og;)V

    .line 15
    .line 16
    .line 17
    iput-object p3, p0, Lio/appmetrica/analytics/impl/nc;->e:Lio/appmetrica/analytics/impl/e5;

    .line 18
    .line 19
    new-instance p1, Lio/appmetrica/analytics/impl/Hc;

    .line 20
    .line 21
    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Hc;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lio/appmetrica/analytics/impl/nc;->f:Lio/appmetrica/analytics/impl/Hc;

    .line 25
    .line 26
    new-instance p1, Lio/appmetrica/analytics/impl/mc;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/mc;-><init>(Lio/appmetrica/analytics/impl/nc;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lio/appmetrica/analytics/impl/nc;->g:Lxc/d;

    .line 36
    .line 37
    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/impl/nc;)Lio/appmetrica/analytics/impl/Og;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nc;->a:Lio/appmetrica/analytics/impl/Og;

    return-object p0
.end method

.method public static final synthetic b(Lio/appmetrica/analytics/impl/nc;)Lio/appmetrica/analytics/impl/C9;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nc;->b:Lio/appmetrica/analytics/impl/C9;

    return-object p0
.end method

.method public static final synthetic c(Lio/appmetrica/analytics/impl/nc;)Lio/appmetrica/analytics/impl/F4;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nc;->c:Lio/appmetrica/analytics/impl/F4;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lio/appmetrica/analytics/impl/nc;)Lio/appmetrica/analytics/impl/Hc;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nc;->f:Lio/appmetrica/analytics/impl/Hc;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lio/appmetrica/analytics/impl/nc;)Lio/appmetrica/analytics/impl/Ue;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nc;->d:Lio/appmetrica/analytics/impl/Ue;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/O8;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/nc;->e:Lio/appmetrica/analytics/impl/e5;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/e5;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/O8;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/nc;->e:Lio/appmetrica/analytics/impl/e5;

    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/e5;->c:Lio/appmetrica/analytics/impl/Qc;

    .line 4
    invoke-static {v0}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/nc;->g:Lxc/d;

    invoke-interface {v1}, Lxc/d;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/O8;

    .line 6
    invoke-static {v1}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lyc/m;->c0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
