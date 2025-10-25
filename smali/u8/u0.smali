.class public final Lu8/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/b;


# instance fields
.field private final a:Lwc/a;

.field private final b:Lwc/a;

.field private final c:Lwc/a;

.field private final d:Lwc/a;

.field private final e:Lwc/a;

.field private final f:Lwc/a;

.field private final g:Lwc/a;


# direct methods
.method public constructor <init>(Lwc/a;Lwc/a;Lwc/a;Lwc/a;Lwc/a;Lwc/a;Lwc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu8/u0;->a:Lwc/a;

    .line 5
    .line 6
    iput-object p2, p0, Lu8/u0;->b:Lwc/a;

    .line 7
    .line 8
    iput-object p3, p0, Lu8/u0;->c:Lwc/a;

    .line 9
    .line 10
    iput-object p4, p0, Lu8/u0;->d:Lwc/a;

    .line 11
    .line 12
    iput-object p5, p0, Lu8/u0;->e:Lwc/a;

    .line 13
    .line 14
    iput-object p6, p0, Lu8/u0;->f:Lwc/a;

    .line 15
    .line 16
    iput-object p7, p0, Lu8/u0;->g:Lwc/a;

    .line 17
    .line 18
    return-void
.end method

.method public static a(Lwc/a;Lwc/a;Lwc/a;Lwc/a;Lwc/a;Lwc/a;Lwc/a;)Lu8/u0;
    .locals 9

    .line 1
    new-instance v8, Lu8/u0;

    .line 2
    .line 3
    move-object v0, v8

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
    move-object v6, p5

    .line 10
    move-object v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lu8/u0;-><init>(Lwc/a;Lwc/a;Lwc/a;Lwc/a;Lwc/a;Lwc/a;Lwc/a;)V

    .line 12
    .line 13
    .line 14
    return-object v8
.end method

.method public static c(Lx8/j;Lu8/n0;Lu8/k0;Lu8/w0;Lj0/i;Lu8/w;Lad/i;)Lu8/t0;
    .locals 9

    .line 1
    new-instance v8, Lu8/t0;

    .line 2
    .line 3
    move-object v0, v8

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
    move-object v6, p5

    .line 10
    move-object v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lu8/t0;-><init>(Lx8/j;Lu8/n0;Lu8/k0;Lu8/w0;Lj0/i;Lu8/w;Lad/i;)V

    .line 12
    .line 13
    .line 14
    return-object v8
.end method


# virtual methods
.method public b()Lu8/t0;
    .locals 8

    .line 1
    iget-object v0, p0, Lu8/u0;->a:Lwc/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lwc/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lx8/j;

    .line 9
    .line 10
    iget-object v0, p0, Lu8/u0;->b:Lwc/a;

    .line 11
    .line 12
    invoke-interface {v0}, Lwc/a;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v2, v0

    .line 17
    check-cast v2, Lu8/n0;

    .line 18
    .line 19
    iget-object v0, p0, Lu8/u0;->c:Lwc/a;

    .line 20
    .line 21
    invoke-interface {v0}, Lwc/a;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v3, v0

    .line 26
    check-cast v3, Lu8/k0;

    .line 27
    .line 28
    iget-object v0, p0, Lu8/u0;->d:Lwc/a;

    .line 29
    .line 30
    invoke-interface {v0}, Lwc/a;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v4, v0

    .line 35
    check-cast v4, Lu8/w0;

    .line 36
    .line 37
    iget-object v0, p0, Lu8/u0;->e:Lwc/a;

    .line 38
    .line 39
    invoke-interface {v0}, Lwc/a;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v5, v0

    .line 44
    check-cast v5, Lj0/i;

    .line 45
    .line 46
    iget-object v0, p0, Lu8/u0;->f:Lwc/a;

    .line 47
    .line 48
    invoke-interface {v0}, Lwc/a;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v6, v0

    .line 53
    check-cast v6, Lu8/w;

    .line 54
    .line 55
    iget-object v0, p0, Lu8/u0;->g:Lwc/a;

    .line 56
    .line 57
    invoke-interface {v0}, Lwc/a;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v7, v0

    .line 62
    check-cast v7, Lad/i;

    .line 63
    .line 64
    invoke-static/range {v1 .. v7}, Lu8/u0;->c(Lx8/j;Lu8/n0;Lu8/k0;Lu8/w0;Lj0/i;Lu8/w;Lad/i;)Lu8/t0;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu8/u0;->b()Lu8/t0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
