.class public final Lx2/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/b;


# instance fields
.field private final a:Lwc/a;

.field private final b:Lwc/a;

.field private final c:Lwc/a;

.field private final d:Lwc/a;

.field private final e:Lwc/a;


# direct methods
.method public constructor <init>(Lwc/a;Lwc/a;Lwc/a;Lwc/a;Lwc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx2/n0;->a:Lwc/a;

    .line 5
    .line 6
    iput-object p2, p0, Lx2/n0;->b:Lwc/a;

    .line 7
    .line 8
    iput-object p3, p0, Lx2/n0;->c:Lwc/a;

    .line 9
    .line 10
    iput-object p4, p0, Lx2/n0;->d:Lwc/a;

    .line 11
    .line 12
    iput-object p5, p0, Lx2/n0;->e:Lwc/a;

    .line 13
    .line 14
    return-void
.end method

.method public static a(Lwc/a;Lwc/a;Lwc/a;Lwc/a;Lwc/a;)Lx2/n0;
    .locals 7

    .line 1
    new-instance v6, Lx2/n0;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lx2/n0;-><init>(Lwc/a;Lwc/a;Lwc/a;Lwc/a;Lwc/a;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public static c(Lz2/a;Lz2/a;Ljava/lang/Object;Ljava/lang/Object;Lwc/a;)Lx2/m0;
    .locals 7

    .line 1
    new-instance v6, Lx2/m0;

    .line 2
    .line 3
    move-object v3, p2

    .line 4
    check-cast v3, Lx2/e;

    .line 5
    .line 6
    move-object v4, p3

    .line 7
    check-cast v4, Lx2/v0;

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p1

    .line 12
    move-object v5, p4

    .line 13
    invoke-direct/range {v0 .. v5}, Lx2/m0;-><init>(Lz2/a;Lz2/a;Lx2/e;Lx2/v0;Lwc/a;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method


# virtual methods
.method public b()Lx2/m0;
    .locals 5

    .line 1
    iget-object v0, p0, Lx2/n0;->a:Lwc/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lwc/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lz2/a;

    .line 8
    .line 9
    iget-object v1, p0, Lx2/n0;->b:Lwc/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lwc/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lz2/a;

    .line 16
    .line 17
    iget-object v2, p0, Lx2/n0;->c:Lwc/a;

    .line 18
    .line 19
    invoke-interface {v2}, Lwc/a;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lx2/n0;->d:Lwc/a;

    .line 24
    .line 25
    invoke-interface {v3}, Lwc/a;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v4, p0, Lx2/n0;->e:Lwc/a;

    .line 30
    .line 31
    invoke-static {v0, v1, v2, v3, v4}, Lx2/n0;->c(Lz2/a;Lz2/a;Ljava/lang/Object;Ljava/lang/Object;Lwc/a;)Lx2/m0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lx2/n0;->b()Lx2/m0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
