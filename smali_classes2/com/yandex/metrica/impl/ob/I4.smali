.class public Lcom/yandex/metrica/impl/ob/I4;
.super Lcom/yandex/metrica/impl/ob/K4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/K4<",
        "Lcom/yandex/metrica/impl/ob/X4;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/E5;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/a1;",
            "Lcom/yandex/metrica/impl/ob/x5<",
            "Lcom/yandex/metrica/impl/ob/X4;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/yandex/metrica/impl/ob/t5;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/K4;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/E5;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/E5;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    .line 10
    .line 11
    new-instance p1, Lcom/yandex/metrica/impl/ob/t5;

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/t5;-><init>(Lcom/yandex/metrica/impl/ob/E5;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/I4;->c:Lcom/yandex/metrica/impl/ob/t5;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/I4;->a()Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/I4;->b:Ljava/util/Map;

    .line 23
    .line 24
    return-void
.end method

.method private a()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/yandex/metrica/impl/ob/a1;",
            "Lcom/yandex/metrica/impl/ob/x5<",
            "Lcom/yandex/metrica/impl/ob/X4;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->O:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v2, Lcom/yandex/metrica/impl/ob/s5;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/s5;-><init>(Lcom/yandex/metrica/impl/ob/E5;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->Q:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v2, Lcom/yandex/metrica/impl/ob/H5;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/H5;-><init>(Lcom/yandex/metrica/impl/ob/E5;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->e:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v2, Lcom/yandex/metrica/impl/ob/B5;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/B5;-><init>(Lcom/yandex/metrica/impl/ob/E5;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lcom/yandex/metrica/impl/ob/z5;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/z5;-><init>(Lcom/yandex/metrica/impl/ob/E5;)V

    .line 6
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->g:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->H:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->L:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->z:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->y:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->R:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->S:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v3, Lcom/yandex/metrica/impl/ob/G5;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    .line 13
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/E5;->u()Lcom/yandex/metrica/impl/ob/p5;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/G5;-><init>(Lcom/yandex/metrica/impl/ob/E5;Lcom/yandex/metrica/impl/ob/X4;)V

    .line 14
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->T:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v3, Lcom/yandex/metrica/impl/ob/D5;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/D5;-><init>(Lcom/yandex/metrica/impl/ob/E5;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->p:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v3, Lcom/yandex/metrica/impl/ob/A5;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/A5;-><init>(Lcom/yandex/metrica/impl/ob/E5;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->q:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v3, Lcom/yandex/metrica/impl/ob/G5;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    .line 18
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/E5;->l()Lcom/yandex/metrica/impl/ob/f5;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/G5;-><init>(Lcom/yandex/metrica/impl/ob/E5;Lcom/yandex/metrica/impl/ob/X4;)V

    .line 19
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->I:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v3, Lcom/yandex/metrica/impl/ob/G5;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    .line 21
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/E5;->l()Lcom/yandex/metrica/impl/ob/f5;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/G5;-><init>(Lcom/yandex/metrica/impl/ob/E5;Lcom/yandex/metrica/impl/ob/X4;)V

    .line 22
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->r:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v3, Lcom/yandex/metrica/impl/ob/w5;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/w5;-><init>(Lcom/yandex/metrica/impl/ob/E5;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->J:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v3, Lcom/yandex/metrica/impl/ob/w5;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/w5;-><init>(Lcom/yandex/metrica/impl/ob/E5;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->M:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v3, Lcom/yandex/metrica/impl/ob/v5;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/v5;-><init>(Lcom/yandex/metrica/impl/ob/E5;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->K:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v3, Lcom/yandex/metrica/impl/ob/G5;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    .line 27
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/E5;->l()Lcom/yandex/metrica/impl/ob/f5;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/G5;-><init>(Lcom/yandex/metrica/impl/ob/E5;Lcom/yandex/metrica/impl/ob/X4;)V

    .line 28
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->E:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v3, Lcom/yandex/metrica/impl/ob/J5;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/J5;-><init>(Lcom/yandex/metrica/impl/ob/E5;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v2, Lcom/yandex/metrica/impl/ob/I5;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/I5;-><init>(Lcom/yandex/metrica/impl/ob/E5;)V

    .line 31
    sget-object v3, Lcom/yandex/metrica/impl/ob/a1;->D:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v3, Lcom/yandex/metrica/impl/ob/a1;->G:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v3, Lcom/yandex/metrica/impl/ob/a1;->F:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->N:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->t:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v3, Lcom/yandex/metrica/impl/ob/y5;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/y5;-><init>(Lcom/yandex/metrica/impl/ob/E5;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->i:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v3, Lcom/yandex/metrica/impl/ob/F5;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/F5;-><init>(Lcom/yandex/metrica/impl/ob/E5;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->j:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v3, Lcom/yandex/metrica/impl/ob/G5;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    .line 38
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/E5;->o()Lcom/yandex/metrica/impl/ob/j5;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/G5;-><init>(Lcom/yandex/metrica/impl/ob/E5;Lcom/yandex/metrica/impl/ob/X4;)V

    .line 39
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->B:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v3, Lcom/yandex/metrica/impl/ob/G5;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    .line 41
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/E5;->d()Lcom/yandex/metrica/impl/ob/V4;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/G5;-><init>(Lcom/yandex/metrica/impl/ob/E5;Lcom/yandex/metrica/impl/ob/X4;)V

    .line 42
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->C:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v3, Lcom/yandex/metrica/impl/ob/G5;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    .line 44
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/E5;->c()Lcom/yandex/metrica/impl/ob/U4;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/G5;-><init>(Lcom/yandex/metrica/impl/ob/E5;Lcom/yandex/metrica/impl/ob/X4;)V

    .line 45
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->k:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->l:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v3, Lcom/yandex/metrica/impl/ob/G5;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    .line 48
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/E5;->x()Lcom/yandex/metrica/impl/ob/r5;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/G5;-><init>(Lcom/yandex/metrica/impl/ob/E5;Lcom/yandex/metrica/impl/ob/X4;)V

    .line 49
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->m:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->n:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->u:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->Y:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->Z:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->a0:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->o:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->c0:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->d0:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/yandex/metrica/impl/ob/H4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yandex/metrica/impl/ob/H4;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/a1;->a(I)Lcom/yandex/metrica/impl/ob/a1;

    move-result-object p1

    .line 62
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/I4;->c:Lcom/yandex/metrica/impl/ob/t5;

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1, p1, v0}, Lcom/yandex/metrica/impl/ob/t5;->a(Lcom/yandex/metrica/impl/ob/a1;Ljava/util/List;)V

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/I4;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/x5;

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/x5;->a(Ljava/util/List;)V

    .line 66
    :cond_1
    new-instance p1, Lcom/yandex/metrica/impl/ob/H4;

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/H4;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/a1;Lcom/yandex/metrica/impl/ob/x5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/a1;",
            "Lcom/yandex/metrica/impl/ob/x5<",
            "Lcom/yandex/metrica/impl/ob/X4;",
            ">;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/I4;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Lcom/yandex/metrica/impl/ob/E5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/I4;->a:Lcom/yandex/metrica/impl/ob/E5;

    .line 2
    .line 3
    return-object v0
.end method
