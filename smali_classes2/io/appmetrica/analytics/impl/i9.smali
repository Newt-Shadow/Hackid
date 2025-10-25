.class public final Lio/appmetrica/analytics/impl/i9;
.super Lio/appmetrica/analytics/impl/zf;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ri;

.field public final b:Ljava/util/HashMap;

.field public final c:Lio/appmetrica/analytics/impl/H4;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/appmetrica/analytics/impl/zf;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/ri;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/ri;-><init>(Lio/appmetrica/analytics/impl/o5;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    .line 10
    .line 11
    new-instance p1, Lio/appmetrica/analytics/impl/H4;

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/H4;-><init>(Lio/appmetrica/analytics/impl/ri;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lio/appmetrica/analytics/impl/i9;->c:Lio/appmetrica/analytics/impl/H4;

    .line 17
    .line 18
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/i9;->a()Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lio/appmetrica/analytics/impl/i9;->b:Ljava/util/HashMap;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/nb;)Lio/appmetrica/analytics/impl/Aa;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i9;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/Aa;

    return-object p1
.end method

.method public final a(I)Lio/appmetrica/analytics/impl/h9;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/appmetrica/analytics/impl/h9;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 44
    invoke-static {p1}, Lio/appmetrica/analytics/impl/nb;->a(I)Lio/appmetrica/analytics/impl/nb;

    move-result-object p1

    .line 45
    iget-object v1, p0, Lio/appmetrica/analytics/impl/i9;->c:Lio/appmetrica/analytics/impl/H4;

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1, p1, v0}, Lio/appmetrica/analytics/impl/H4;->a(Lio/appmetrica/analytics/impl/nb;Ljava/util/List;)V

    .line 47
    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/i9;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/Aa;

    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/Aa;->a(Ljava/util/List;)V

    .line 49
    :cond_1
    new-instance p1, Lio/appmetrica/analytics/impl/g9;

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/g9;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public final a()Ljava/util/HashMap;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lio/appmetrica/analytics/impl/nb;->z:Lio/appmetrica/analytics/impl/nb;

    new-instance v2, Lio/appmetrica/analytics/impl/h;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/h;-><init>(Lio/appmetrica/analytics/impl/ri;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lio/appmetrica/analytics/impl/nb;->B:Lio/appmetrica/analytics/impl/nb;

    new-instance v2, Lio/appmetrica/analytics/impl/pl;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/pl;-><init>(Lio/appmetrica/analytics/impl/ri;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lio/appmetrica/analytics/impl/nb;->e:Lio/appmetrica/analytics/impl/nb;

    new-instance v2, Lio/appmetrica/analytics/impl/Eg;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/Eg;-><init>(Lio/appmetrica/analytics/impl/ri;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lio/appmetrica/analytics/impl/ub;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/ub;-><init>(Lio/appmetrica/analytics/impl/ri;)V

    .line 6
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->u:Lio/appmetrica/analytics/impl/nb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->v:Lio/appmetrica/analytics/impl/nb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->o:Lio/appmetrica/analytics/impl/nb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->C:Lio/appmetrica/analytics/impl/nb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->D:Lio/appmetrica/analytics/impl/nb;

    new-instance v3, Lio/appmetrica/analytics/impl/kl;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    .line 11
    iget-object v5, v4, Lio/appmetrica/analytics/impl/ri;->t:Lio/appmetrica/analytics/impl/Wi;

    .line 12
    invoke-direct {v3, v4, v5}, Lio/appmetrica/analytics/impl/kl;-><init>(Lio/appmetrica/analytics/impl/ri;Lio/appmetrica/analytics/impl/Pg;)V

    .line 13
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->E:Lio/appmetrica/analytics/impl/nb;

    new-instance v3, Lio/appmetrica/analytics/impl/Lg;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/Lg;-><init>(Lio/appmetrica/analytics/impl/ri;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->n:Lio/appmetrica/analytics/impl/nb;

    new-instance v3, Lio/appmetrica/analytics/impl/Nf;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/Nf;-><init>(Lio/appmetrica/analytics/impl/ri;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->w:Lio/appmetrica/analytics/impl/nb;

    new-instance v3, Lio/appmetrica/analytics/impl/D6;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/D6;-><init>(Lio/appmetrica/analytics/impl/ri;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->x:Lio/appmetrica/analytics/impl/nb;

    new-instance v3, Lio/appmetrica/analytics/impl/tf;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/tf;-><init>(Lio/appmetrica/analytics/impl/ri;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->r:Lio/appmetrica/analytics/impl/nb;

    new-instance v3, Lio/appmetrica/analytics/impl/Bn;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/Bn;-><init>(Lio/appmetrica/analytics/impl/ri;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v2, Lio/appmetrica/analytics/impl/An;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/An;-><init>(Lio/appmetrica/analytics/impl/ri;)V

    .line 20
    sget-object v3, Lio/appmetrica/analytics/impl/nb;->t:Lio/appmetrica/analytics/impl/nb;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v3, Lio/appmetrica/analytics/impl/nb;->s:Lio/appmetrica/analytics/impl/nb;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->y:Lio/appmetrica/analytics/impl/nb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->p:Lio/appmetrica/analytics/impl/nb;

    new-instance v3, Lio/appmetrica/analytics/impl/kl;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    .line 24
    iget-object v5, v4, Lio/appmetrica/analytics/impl/ri;->e:Lio/appmetrica/analytics/impl/Kg;

    .line 25
    invoke-direct {v3, v4, v5}, Lio/appmetrica/analytics/impl/kl;-><init>(Lio/appmetrica/analytics/impl/ri;Lio/appmetrica/analytics/impl/Pg;)V

    .line 26
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->q:Lio/appmetrica/analytics/impl/nb;

    new-instance v3, Lio/appmetrica/analytics/impl/kl;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    .line 28
    iget-object v5, v4, Lio/appmetrica/analytics/impl/ri;->f:Lio/appmetrica/analytics/impl/Jg;

    .line 29
    invoke-direct {v3, v4, v5}, Lio/appmetrica/analytics/impl/kl;-><init>(Lio/appmetrica/analytics/impl/ri;Lio/appmetrica/analytics/impl/Pg;)V

    .line 30
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->i:Lio/appmetrica/analytics/impl/nb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->j:Lio/appmetrica/analytics/impl/nb;

    new-instance v3, Lio/appmetrica/analytics/impl/kl;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    .line 33
    iget-object v5, v4, Lio/appmetrica/analytics/impl/ri;->k:Lio/appmetrica/analytics/impl/Gn;

    .line 34
    invoke-direct {v3, v4, v5}, Lio/appmetrica/analytics/impl/kl;-><init>(Lio/appmetrica/analytics/impl/ri;Lio/appmetrica/analytics/impl/Pg;)V

    .line 35
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->k:Lio/appmetrica/analytics/impl/nb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->l:Lio/appmetrica/analytics/impl/nb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->I:Lio/appmetrica/analytics/impl/nb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->m:Lio/appmetrica/analytics/impl/nb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->J:Lio/appmetrica/analytics/impl/nb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lio/appmetrica/analytics/impl/nb;->h:Lio/appmetrica/analytics/impl/nb;

    new-instance v2, Lio/appmetrica/analytics/impl/Q9;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/Q9;-><init>(Lio/appmetrica/analytics/impl/ri;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/nb;Lio/appmetrica/analytics/impl/Aa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/nb;",
            "Lio/appmetrica/analytics/impl/Aa;",
            ")V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i9;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/ri;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i9;->a:Lio/appmetrica/analytics/impl/ri;

    .line 2
    .line 3
    return-object v0
.end method
