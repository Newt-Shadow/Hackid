.class public Lcom/yandex/metrica/impl/ob/Ec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/pc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/pc<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Dc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Dc<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/Lb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Lb<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/metrica/impl/ob/Gc;

.field private final d:Lcom/yandex/metrica/impl/ob/Qb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Qb<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Dc;Lcom/yandex/metrica/impl/ob/Lb;Lcom/yandex/metrica/impl/ob/Gc;Lcom/yandex/metrica/impl/ob/Qb;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/Dc<",
            "TT;>;",
            "Lcom/yandex/metrica/impl/ob/Lb<",
            "TT;>;",
            "Lcom/yandex/metrica/impl/ob/Gc;",
            "Lcom/yandex/metrica/impl/ob/Qb<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ec$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/Ec$a;-><init>(Lcom/yandex/metrica/impl/ob/Ec;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Ec;->e:Ljava/lang/Runnable;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ec;->a:Lcom/yandex/metrica/impl/ob/Dc;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Ec;->b:Lcom/yandex/metrica/impl/ob/Lb;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Ec;->c:Lcom/yandex/metrica/impl/ob/Gc;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Ec;->d:Lcom/yandex/metrica/impl/ob/Qb;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Ec;->f:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ec;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ec;->b:Lcom/yandex/metrica/impl/ob/Lb;

    invoke-interface {v1, v0}, Lcom/yandex/metrica/impl/ob/Lb;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ec;->a:Lcom/yandex/metrica/impl/ob/Dc;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ec;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Dc;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ec;->c:Lcom/yandex/metrica/impl/ob/Gc;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/Gc;->a()V

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ec;->d:Lcom/yandex/metrica/impl/ob/Qb;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ec;->e:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ec;->f:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Qb;->a(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ec;->f:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ec;->f:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Ec;->b()V

    .line 8
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Ec;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ec;->d:Lcom/yandex/metrica/impl/ob/Qb;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/Qb;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ec;->a:Lcom/yandex/metrica/impl/ob/Dc;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Dc;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ec;->f:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ec;->b:Lcom/yandex/metrica/impl/ob/Lb;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Lcom/yandex/metrica/impl/ob/Lb;->b(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ec;->a:Lcom/yandex/metrica/impl/ob/Dc;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Dc;->b()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Ec;->a()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
