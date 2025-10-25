.class public Lga/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method public static k(Lga/b;Lfa/e0;Landroid/app/Activity;Lfa/o0;Lpa/g;)Lga/d;
    .locals 2

    .line 1
    new-instance v0, Lga/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lga/d;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-interface {p0, p1, v1}, Lga/b;->d(Lfa/e0;Z)Lha/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lga/d;->l(Lha/a;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, p1}, Lga/b;->h(Lfa/e0;)Lia/a;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lga/d;->m(Lia/a;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, p1}, Lga/b;->g(Lfa/e0;)Lja/a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lga/d;->n(Lja/a;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, p1, p2, p3}, Lga/b;->a(Lfa/e0;Landroid/app/Activity;Lfa/o0;)Lqa/b;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {v0, p2}, Lga/d;->u(Lqa/b;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, p1, p2}, Lga/b;->c(Lfa/e0;Lqa/b;)Lka/a;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-virtual {v0, p3}, Lga/d;->o(Lka/a;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, p1}, Lga/b;->e(Lfa/e0;)Lla/a;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-virtual {v0, p3}, Lga/d;->p(Lla/a;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p0, p1, p2}, Lga/b;->f(Lfa/e0;Lqa/b;)Lma/a;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {v0, p2}, Lga/d;->q(Lma/a;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p0, p1}, Lga/b;->b(Lfa/e0;)Lna/a;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {v0, p2}, Lga/d;->r(Lna/a;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p0, p1}, Lga/b;->k(Lfa/e0;)Loa/a;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {v0, p2}, Lga/d;->s(Loa/a;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Lfa/e0;->t()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-interface {p0, p1, p4, p2}, Lga/b;->j(Lfa/e0;Lpa/g;Ljava/lang/String;)Lpa/f;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {v0, p2}, Lga/d;->t(Lpa/f;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p0, p1}, Lga/b;->i(Lfa/e0;)Lra/b;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v0, p0}, Lga/d;->v(Lra/b;)V

    .line 86
    .line 87
    .line 88
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()Lha/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "AUTO_FOCUS"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lha/a;

    .line 10
    .line 11
    return-object v0
.end method

.method public c()Lia/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "EXPOSURE_LOCK"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lia/a;

    .line 10
    .line 11
    return-object v0
.end method

.method public d()Lja/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "EXPOSURE_OFFSET"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lja/a;

    .line 10
    .line 11
    return-object v0
.end method

.method public e()Lka/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "EXPOSURE_POINT"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lka/a;

    .line 10
    .line 11
    return-object v0
.end method

.method public f()Lla/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "FLASH"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lla/a;

    .line 10
    .line 11
    return-object v0
.end method

.method public g()Lma/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "FOCUS_POINT"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lma/a;

    .line 10
    .line 11
    return-object v0
.end method

.method public h()Lpa/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "RESOLUTION"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lpa/f;

    .line 10
    .line 11
    return-object v0
.end method

.method public i()Lqa/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "SENSOR_ORIENTATION"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lqa/b;

    .line 10
    .line 11
    return-object v0
.end method

.method public j()Lra/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "ZOOM_LEVEL"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lra/b;

    .line 10
    .line 11
    return-object v0
.end method

.method public l(Lha/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "AUTO_FOCUS"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public m(Lia/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "EXPOSURE_LOCK"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public n(Lja/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "EXPOSURE_OFFSET"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public o(Lka/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "EXPOSURE_POINT"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public p(Lla/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "FLASH"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public q(Lma/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "FOCUS_POINT"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public r(Lna/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "FPS_RANGE"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public s(Loa/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "NOISE_REDUCTION"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public t(Lpa/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "RESOLUTION"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public u(Lqa/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "SENSOR_ORIENTATION"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public v(Lra/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lga/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "ZOOM_LEVEL"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method
