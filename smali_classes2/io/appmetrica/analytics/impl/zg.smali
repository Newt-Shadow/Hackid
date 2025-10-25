.class public final Lio/appmetrica/analytics/impl/zg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Bl;
.implements Lio/appmetrica/analytics/impl/Sa;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/h5;

.field public final c:Lio/appmetrica/analytics/impl/i5;

.field public final d:Lio/appmetrica/analytics/impl/mm;

.field public final e:Lio/appmetrica/analytics/impl/bb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/p5;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/appmetrica/analytics/impl/h5;",
            "Lio/appmetrica/analytics/impl/G4;",
            "Lio/appmetrica/analytics/impl/p5;",
            ")V"
        }
    .end annotation

    .line 9
    new-instance v5, Lio/appmetrica/analytics/impl/i5;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/i5;-><init>()V

    .line 10
    invoke-static {}, Lio/appmetrica/analytics/impl/sl;->a()Lio/appmetrica/analytics/impl/sl;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 11
    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/zg;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/p5;Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/sl;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/p5;Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/sl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/appmetrica/analytics/impl/h5;",
            "Lio/appmetrica/analytics/impl/G4;",
            "Lio/appmetrica/analytics/impl/p5;",
            "Lio/appmetrica/analytics/impl/i5;",
            "Lio/appmetrica/analytics/impl/sl;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/impl/zg;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/zg;->b:Lio/appmetrica/analytics/impl/h5;

    .line 4
    iput-object p5, p0, Lio/appmetrica/analytics/impl/zg;->c:Lio/appmetrica/analytics/impl/i5;

    .line 5
    iget-object p5, p3, Lio/appmetrica/analytics/impl/G4;->a:Lio/appmetrica/analytics/impl/Kl;

    invoke-virtual {p6, p1, p2, p5}, Lio/appmetrica/analytics/impl/sl;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/Kl;)Lio/appmetrica/analytics/impl/mm;

    move-result-object p5

    iput-object p5, p0, Lio/appmetrica/analytics/impl/zg;->d:Lio/appmetrica/analytics/impl/mm;

    .line 6
    iget-object p3, p3, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    .line 7
    invoke-interface {p4, p1, p2, p3, p5}, Lio/appmetrica/analytics/impl/p5;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/mm;)Lio/appmetrica/analytics/impl/bb;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/zg;->e:Lio/appmetrica/analytics/impl/bb;

    .line 8
    invoke-virtual {p6, p2, p0}, Lio/appmetrica/analytics/impl/sl;->a(Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/Bl;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/h5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zg;->b:Lio/appmetrica/analytics/impl/h5;

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/G4;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zg;->d:Lio/appmetrica/analytics/impl/mm;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/G4;->a:Lio/appmetrica/analytics/impl/Kl;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/mm;->a(Lio/appmetrica/analytics/impl/Kl;)V

    .line 9
    iget-object p1, p1, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zg;->e:Lio/appmetrica/analytics/impl/bb;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/bb;->a(Lio/appmetrica/analytics/impl/F4;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ql;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zg;->e:Lio/appmetrica/analytics/impl/bb;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/bb;->a(Lio/appmetrica/analytics/impl/Ql;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/G4;)V
    .locals 2

    .line 11
    iget v0, p1, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 12
    sget-object v1, Lio/appmetrica/analytics/impl/H9;->c:Ljava/util/EnumSet;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/nb;->a(I)Lio/appmetrica/analytics/impl/nb;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    iget-object p2, p2, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zg;->e:Lio/appmetrica/analytics/impl/bb;

    invoke-interface {v0, p2}, Lio/appmetrica/analytics/impl/bb;->a(Lio/appmetrica/analytics/impl/F4;)V

    .line 15
    :cond_0
    iget-object p2, p0, Lio/appmetrica/analytics/impl/zg;->e:Lio/appmetrica/analytics/impl/bb;

    check-cast p2, Lio/appmetrica/analytics/impl/o5;

    invoke-virtual {p2, p1}, Lio/appmetrica/analytics/impl/o5;->a(Lio/appmetrica/analytics/impl/e6;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/ul;Lio/appmetrica/analytics/impl/Ql;)V
    .locals 0

    .line 6
    iget-object p1, p0, Lio/appmetrica/analytics/impl/zg;->e:Lio/appmetrica/analytics/impl/bb;

    check-cast p1, Lio/appmetrica/analytics/impl/o5;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/w4;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zg;->c:Lio/appmetrica/analytics/impl/i5;

    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zg;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final b(Lio/appmetrica/analytics/impl/w4;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zg;->c:Lio/appmetrica/analytics/impl/i5;

    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
